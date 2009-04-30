package com.uvt.team08.orion.domain.service;

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

public class UserServiceBean implements UserService {
    private final Logger log = Logger.getLogger(UserService.class);

    private Session session = null;
    private Transaction tx = null;

    public UserServiceBean() {
	// System.out.println("new instance!!");
	// HibernateUtil.setup("create table users (.... );");
    }

    public synchronized User login(final String emailAddress,
	    final String password) throws InvalidEmailOrPasswordException,
	    AccountDisabledException {
	this.log.info("Login attempt with email address " + emailAddress);

	User user = this.getUser(emailAddress);

	// validations:
	if (emailAddress == null) {
	    this.log.error("Invalid email address.");
	    throw new InvalidEmailOrPasswordException();
	}
	if (password == null) {
	    this.log.error("Invalid password.");
	    throw new InvalidEmailOrPasswordException();
	}
	if (user == null) {
	    this.log.error("Invalid  email address.");
	    throw new InvalidEmailOrPasswordException();
	}
	if (user.getUserStatus() == Status.DISABLED) {
	    this.log.error("Account is disabled.");
	    throw new AccountDisabledException();
	}
	if (user.getPassword().compareTo(this.generateMD5Password(password)) == 0) {
	    this.log.info("Login was succesful.");
	    return user;
	} else {
	    this.log.error("Invalid password.");
	    throw new InvalidEmailOrPasswordException();
	}
    }

    public synchronized User register(final int currentLogedInUserId,
	    final User userToRegister) throws EmailAddressExistsException,
	    InsufficientRightException, NoUserRightSetException,
	    InvalidEmailOrPasswordException {
	this.log.info("Register new user attempt.");
	User logedInUser = this.getUser(currentLogedInUserId);

	// validations:
	if (logedInUser.getUserRight() != Right.ADMINISTRATOR) {
	    this.log.error("Insufficient rights.");
	    throw new InsufficientRightException();
	}
	if (userToRegister == null) {
	    this.log.error("Invalid data.");
	    throw new InvalidEmailOrPasswordException();
	}
	if ((userToRegister.getEmailAddress() == null)
		|| (userToRegister.getEmailAddress().trim().compareTo("") == 0)) {
	    this.log.error("Invalid email address.");
	    throw new InvalidEmailOrPasswordException();
	}
	if ((userToRegister.getPassword() == null)
		|| (userToRegister.getPassword().trim().compareTo("") == 0)) {
	    this.log.error("Invalid email password.");
	    throw new InvalidEmailOrPasswordException();
	}
	if (userToRegister.getUserRight() == null) {
	    this.log.error("Invalid data.");
	    throw new NoUserRightSetException();
	}
	if (this.getUser(userToRegister.getEmailAddress()) != null) { // already
	    // exists a
	    // user with
	    // that
	    // email
	    // address
	    // in the
	    // database
	    this.log.error("Email address already registered.");
	    throw new EmailAddressExistsException();
	}

	String pass = userToRegister.getPassword();
	userToRegister.setPassword(this.generateMD5Password(pass));

	this.session = HibernateUtil.currentSession();
	this.tx = this.session.beginTransaction();
	// Session session =
	// InitSessionFactory.getInstance().getCurrentSession();
	// Transaction tx = null;
	try {
	    this.session.persist(userToRegister);// .save(user);
	    this.tx.commit();
	    HibernateUtil.closeSession();
	    HibernateUtil.sessionFactory.close();
	    this.log.info("User succesfully registered.");
	} catch (HibernateException he) {
	    if (this.tx != null) {
		this.tx.rollback();
	    }
	    throw he;
	}
	return userToRegister;
    }

    private String generateMD5Password(final String password) {
	MessageDigest m = null;
	try {
	    m = MessageDigest.getInstance("MD5");
	    m.update(password.getBytes(), 0, password.length());
	} catch (NoSuchAlgorithmException e) {
	}

	return (new BigInteger(1, m.digest()).toString(16));
    }

    public synchronized User modify(final int currentLogedInUserId,
	    final int userIdToModify, final User newUserData,
	    final boolean changePassword) throws EmailAddressExistsException,
	    InsufficientRightException, InvalidDataSendException,
	    InvalidEmailAddressException, InvalidPasswordException,
	    NoUserRightSetException {
	this.log.info("Modify user data attempt.");
	this.session = HibernateUtil.currentSession();

	User logedInUser = this.getUser(currentLogedInUserId);
	User userToModify = this.getUser(userIdToModify);

	// validations:
	if (logedInUser == null) {
	    this.log.error("Invalid data.");
	    return null;
	}
	if ((logedInUser.getUserRight() != Right.ADMINISTRATOR)
		&& (currentLogedInUserId != userIdToModify)) {
	    this.log.error("Insufficient rights!");
	    throw new InsufficientRightException();
	}
	if (userToModify == null) {
	    this.log.error("Invalid data.");
	    throw new InvalidDataSendException();
	}
	if (newUserData == null) {
	    this.log.error("Invalid data.");
	    throw new InvalidDataSendException();
	}
	if ((newUserData.getEmailAddress() == null)
		|| (newUserData.getEmailAddress().trim().compareTo("") == 0)) {
	    this.log.error("Invalid email address.");
	    throw new InvalidEmailAddressException();
	}
	if (changePassword) {
	    if ((newUserData.getPassword() == null)
		    || (newUserData.getPassword().trim().compareTo("") == 0)) {
		this.log.error("Invalid password.");
		throw new InvalidPasswordException();
	    }
	}
	if (newUserData.getUserRight() == null) {
	    this.log.error("No user right was set.");
	    throw new NoUserRightSetException();
	}
	User tmp = this.getUser(newUserData.getEmailAddress());
	if (tmp != null) {
	    if (tmp.getUserId() != userIdToModify) {
		this.log
			.error("Specified new email address already registered.");
		throw new EmailAddressExistsException();
	    }
	}

	newUserData.setUserId(userIdToModify);
	if (changePassword) {
	    String pass = newUserData.getPassword();
	    newUserData.setPassword(this.generateMD5Password(pass));
	} else {
	    newUserData.setPassword(userToModify.getPassword());
	}

	try {
	    this.tx = this.session.beginTransaction();
	    this.session.merge(newUserData); // update
	    this.tx.commit();
	    HibernateUtil.closeSession();
	    HibernateUtil.sessionFactory.close();
	    this.log.info("User data succefully modified.");
	} catch (HibernateException he) {
	    if (this.tx != null) {
		this.tx.rollback();
	    }
	    throw he;
	}

	return newUserData;
    }

    public synchronized User getUser(final int userId) {
	this.log.info("Get user with id: " + userId);
	this.session = HibernateUtil.currentSession();
	this.tx = this.session.beginTransaction();

	User user = null;
	try {
	    user = (User) this.session.get(User.class, userId);
	    this.tx.commit();

	} catch (HibernateException he) {
	    if (this.tx != null) {
		this.tx.rollback();
	    }
	    throw he;
	}
	return user;
    }

    public synchronized User getUser(final String emailAddress) {
	this.log.info("Get user with email address: " + emailAddress);
	this.session = HibernateUtil.currentSession();
	this.tx = this.session.beginTransaction();

	User user = null;
	try {
	    Query q = this.session.createQuery(User
		    .getQuerySelectUserByEmailAddress());
	    q.setParameter("emailAddress", emailAddress);
	    user = (User) q.uniqueResult();
	    this.tx.commit();

	} catch (HibernateException he) {
	    if (this.tx != null) {
		this.tx.rollback();
	    }
	    throw he;
	}
	return user;
    }

    @SuppressWarnings("unchecked")
    public synchronized List<User> getAllUsers() {
	this.log.info("Get all users from data base.");
	this.session = HibernateUtil.currentSession();
	this.tx = this.session.beginTransaction();

	List<User> resultList = null;

	try {
	    Query q = this.session.createQuery(User.getQuerySelectAllUsers());
	    resultList = q.list();

	    this.tx.commit();

	} catch (HibernateException he) {
	    if (this.tx != null) {
		this.tx.rollback();
	    }
	    throw he;
	}
	return resultList;
    }

    /*
     * (non-Javadoc)
     * 
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

    public synchronized void setCVLocation(final int currentLogedInUserId,
	    final int userIdToSetCV, final String cvPath)
	    throws InsufficientRightException, InvalidDataSendException {
	this.log.info("Set CV location attempt.");
	this.session = HibernateUtil.currentSession();

	User logedInUser = this.getUser(currentLogedInUserId);
	User userToModify = this.getUser(userIdToSetCV);

	// validations:
	if (logedInUser == null) {
	    this.log.error("Invalid data.");
	    throw new InvalidDataSendException();
	}
	if ((logedInUser.getUserRight() != Right.ADMINISTRATOR)
		&& (currentLogedInUserId != userIdToSetCV)) {
	    this.log.error("Insufficient rights!");
	    throw new InsufficientRightException();
	}
	if (userToModify == null) {
	    this.log.error("Invalid data.");
	    throw new InvalidDataSendException();
	}

	userToModify.setCvLocation(cvPath);

	try {
	    this.tx = this.session.beginTransaction();
	    this.session.merge(userToModify); // update
	    this.tx.commit();
	    HibernateUtil.closeSession();
	    HibernateUtil.sessionFactory.close();
	    this.log.info("User CV succefully modified.");
	} catch (HibernateException he) {
	    this.log.error("HibernateException. User CV was not updated.");
	    if (this.tx != null) {
		this.tx.rollback();
	    }
	    throw he;
	}
    }
}
