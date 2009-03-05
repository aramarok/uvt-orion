package com.uvt.team08.orion.domain.service;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Hashtable;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.uvt.team08.orion.domain.exceptions.AccountDisabledException;
import com.uvt.team08.orion.domain.exceptions.EmailAddressExistsException;
import com.uvt.team08.orion.domain.exceptions.InsufficientRightException;
import com.uvt.team08.orion.domain.exceptions.InvalidDataSendException;
import com.uvt.team08.orion.domain.exceptions.InvalidEmailAddressException;
import com.uvt.team08.orion.domain.exceptions.InvalidEmailOrPasswordException;
import com.uvt.team08.orion.domain.exceptions.InvalidPasswordException;
import com.uvt.team08.orion.domain.exceptions.NoUserRightSetException;
import com.uvt.team08.orion.domain.model.Right;
import com.uvt.team08.orion.domain.model.Status;
import com.uvt.team08.orion.domain.model.User;
import com.uvt.team08.orion.domain.service.hibernate.HibernateUtil;

public class UserServiceBean implements UserService{
	private Logger log = Logger.getLogger(UserService.class);
	
	private Session session = null;
	private Transaction tx = null;
	
	public UserServiceBean(){
		//System.out.println("new instance!!");
		 //HibernateUtil.setup("create table users (.... );");
	}
	
	public synchronized User login(String emailAddress, String password) throws InvalidEmailOrPasswordException, AccountDisabledException{
		log.info("Login attempt with email address "+ emailAddress);
		
		User user = getUser(emailAddress);
		
		//validations:
		if (emailAddress == null){
			log.error("Invalid email address.");
			throw new InvalidEmailOrPasswordException();
		}
		if (password == null){
			log.error("Invalid password.");
			throw new InvalidEmailOrPasswordException();
		}
		if (user == null){
			log.error("Invalid  email address.");
			throw new InvalidEmailOrPasswordException();
		}
		if (user.getUserStatus() == Status.DISABLED){
			log.error("Account is disabled.");
			throw new AccountDisabledException();
		}
		if (user.getPassword().compareTo(generateMD5Password(password))==0){
			log.info("Login was succesful.");
			return user;
		} else {
			log.error("Invalid password.");
			throw new InvalidEmailOrPasswordException();
		}
	}
	
	public synchronized User register(int currentLogedInUserId, User userToRegister) throws EmailAddressExistsException, InsufficientRightException, NoUserRightSetException, InvalidEmailOrPasswordException{
		log.info("Register new user attempt.");
		User logedInUser = getUser(currentLogedInUserId);
		
		//validations:
		if (logedInUser.getUserRight() != Right.ADMINISTRATOR){
			log.error("Insufficient rights.");
			throw new InsufficientRightException();
		}
		if (userToRegister == null){
			log.error("Invalid data.");
			throw new InvalidEmailOrPasswordException();
		}
		if (userToRegister.getEmailAddress() == null || userToRegister.getEmailAddress().trim().compareTo("")==0){
			log.error("Invalid email address.");
			throw new InvalidEmailOrPasswordException();
		}
		if (userToRegister.getPassword() == null || userToRegister.getPassword().trim().compareTo("")==0){
			log.error("Invalid email password.");
			throw new InvalidEmailOrPasswordException();
		}
		if (userToRegister.getUserRight() == null){
			log.error("Invalid data.");
			throw new NoUserRightSetException();
		}
		if (getUser(userToRegister.getEmailAddress()) != null){ //already exists a user with that email address in the database
			log.error("Email address already registered.");
			throw new EmailAddressExistsException();
		}
		
		String pass = userToRegister.getPassword();
		userToRegister.setPassword(generateMD5Password(pass));
		
		session = HibernateUtil.currentSession();
		tx = session.beginTransaction();
		//Session session = InitSessionFactory.getInstance().getCurrentSession();
		//Transaction tx = null;
		try {
			session.persist(userToRegister);//.save(user);
			tx.commit();
			HibernateUtil.closeSession();
			HibernateUtil.sessionFactory.close();
			log.info("User succesfully registered.");
		} catch (HibernateException he) {
			if (tx != null)
				tx.rollback();
			throw he;
		}
		return userToRegister;
	}
	
	private String generateMD5Password(String password){
		MessageDigest m = null;
		try {
			m = MessageDigest.getInstance("MD5");
			m.update(password.getBytes(),0,password.length());
		} catch (NoSuchAlgorithmException e) {
		}
		
		return (new BigInteger(1, m.digest()).toString(16));
	}
	
	public synchronized User modify(int currentLogedInUserId, int userIdToModify, User newUserData, boolean changePassword) throws EmailAddressExistsException, InsufficientRightException, InvalidDataSendException, InvalidEmailAddressException, InvalidPasswordException, NoUserRightSetException{
		log.info("Modify user data attempt.");
		session = HibernateUtil.currentSession();
		
		User logedInUser = getUser(currentLogedInUserId);
		User userToModify = getUser(userIdToModify);
		
		//validations:
		if (logedInUser == null){
			log.error("Invalid data.");
			return null;
		}
		if (logedInUser.getUserRight() != Right.ADMINISTRATOR && currentLogedInUserId!=userIdToModify){
			log.error("Insufficient rights!");
			throw new InsufficientRightException();
		}
		if (userToModify == null){
			log.error("Invalid data.");
			throw new InvalidDataSendException();
		}
		if (newUserData == null){
			log.error("Invalid data.");
			throw new InvalidDataSendException();
		}
		if (newUserData.getEmailAddress() == null || newUserData.getEmailAddress().trim().compareTo("")==0){
			log.error("Invalid email address.");
			throw new InvalidEmailAddressException();
		}
		if (changePassword){
			if (newUserData.getPassword() == null || newUserData.getPassword().trim().compareTo("")==0){
				log.error("Invalid password.");
				throw new InvalidPasswordException();
			}
		}
		if (newUserData.getUserRight() == null){
			log.error("No user right was set.");
			throw new NoUserRightSetException();
		}
		User tmp = getUser(newUserData.getEmailAddress());
		if (tmp != null){
			if (tmp.getUserId() != userIdToModify){
				log.error("Specified new email address already registered.");
				throw new EmailAddressExistsException();
			}
		}
		
		newUserData.setUserId(userIdToModify);
		if (changePassword){
			String pass = newUserData.getPassword();
			newUserData.setPassword(generateMD5Password(pass));
		} else {
			newUserData.setPassword(userToModify.getPassword());
		}
		
		try {
			tx = session.beginTransaction();
			session.merge(newUserData); //update
			tx.commit();
			HibernateUtil.closeSession();
			HibernateUtil.sessionFactory.close();
			log.info("User data succefully modified.");
		} catch (HibernateException he) {
			if (tx != null)
				tx.rollback();
			throw he;
		}
		
		return newUserData;
	}
	
	public synchronized User getUser(int userId){
		log.info("Get user with id: " + userId);
		session = HibernateUtil.currentSession();
		tx = session.beginTransaction();
		
		User user = null;
		try {
			user = (User) session.get(User.class, userId);
			tx.commit();

		} catch (HibernateException he) {
			if (tx != null)
				tx.rollback();
			throw he;
		}
		return user;
	}
	
	public synchronized User getUser(String emailAddress){
		log.info("Get user with email address: " + emailAddress);
		session = HibernateUtil.currentSession();
		tx = session.beginTransaction();
		
		User user = null;
		try {
			Query q = session.createQuery(User.getQuerySelectUserByEmailAddress());
			q.setParameter("emailAddress", emailAddress);
			user = (User)q.uniqueResult();
			tx.commit();

		} catch (HibernateException he) {
			if (tx != null)
				tx.rollback();
			throw he;
		}
		return user;
	}
	
	@SuppressWarnings("unchecked")
	public synchronized List<User> getAllUsers(){
		log.info("Get all users from data base.");
		session = HibernateUtil.currentSession();
		tx = session.beginTransaction();
		
		List<User> resultList = null;
		
		try {
			Query q = session.createQuery(User.getQuerySelectAllUsers());
			resultList = q.list();
			
			tx.commit();

		} catch (HibernateException he) {
			if (tx != null)
				tx.rollback();
			throw he;
		}
		return resultList;
	}
	
	/* (non-Javadoc)
	 * @see com.uvt.team08.orion.domain.service.UserService#getUsersNames()
	 */
	public Hashtable<Integer, String> getUsersNames() {
		Hashtable<Integer, String> usersNames = new Hashtable<Integer, String>();
		usersNames.put(-1, "Orice utilizator");
		
		try {
			String driverName = "com.mysql.jdbc.Driver";
			
			Class.forName(driverName);
			
			String url = "jdbc:mysql://localhost/orion?user=orion&password=orion";
			String sql = "SELECT user_id, first_name, last_name FROM users;";
			
			Connection conn = DriverManager.getConnection(url);
			Statement st = conn.createStatement();
			
			ResultSet res = st.executeQuery(sql);
			
			while (res.next()) {
				usersNames.put(res.getInt("user_id"), res
						.getString("last_name")
						+ ", " + res.getString("first_name"));
			}
			
			res.close();
		} catch (Exception e) {
			usersNames.put(0, e.getMessage());
			usersNames.put(1, new GUIServiceBean().getExceptionDetails(e));
		}
		
		return usersNames;
	}
	
	public synchronized void setCVLocation(int currentLogedInUserId, int userIdToSetCV, String cvPath) throws InsufficientRightException, InvalidDataSendException{
		log.info("Set CV location attempt.");
		session = HibernateUtil.currentSession();

		User logedInUser = getUser(currentLogedInUserId);
		User userToModify = getUser(userIdToSetCV);
		
		//validations:
		if (logedInUser == null){
			log.error("Invalid data.");
			throw new InvalidDataSendException();
		}
		if (logedInUser.getUserRight() != Right.ADMINISTRATOR && currentLogedInUserId!=userIdToSetCV){
			log.error("Insufficient rights!");
			throw new InsufficientRightException();
		}
		if (userToModify == null){
			log.error("Invalid data.");
			throw new InvalidDataSendException();
		}
		
		userToModify.setCvLocation(cvPath);
		
		try {
			tx = session.beginTransaction();
			session.merge(userToModify); //update
			tx.commit();
			HibernateUtil.closeSession();
			HibernateUtil.sessionFactory.close();
			log.info("User CV succefully modified.");
		} catch (HibernateException he) {
			log.error("HibernateException. User CV was not updated.");
			if (tx != null)
				tx.rollback();
			throw he;
		}
	}
}
