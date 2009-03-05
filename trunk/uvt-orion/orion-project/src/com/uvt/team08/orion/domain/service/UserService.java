package com.uvt.team08.orion.domain.service;

import java.util.Hashtable;
import java.util.List;

import com.uvt.team08.orion.domain.exceptions.AccountDisabledException;
import com.uvt.team08.orion.domain.exceptions.InsufficientRightException;
import com.uvt.team08.orion.domain.exceptions.InvalidDataSendException;
import com.uvt.team08.orion.domain.exceptions.InvalidEmailAddressException;
import com.uvt.team08.orion.domain.exceptions.InvalidEmailOrPasswordException;
import com.uvt.team08.orion.domain.exceptions.InvalidPasswordException;
import com.uvt.team08.orion.domain.exceptions.NoUserRightSetException;
import com.uvt.team08.orion.domain.exceptions.EmailAddressExistsException;
import com.uvt.team08.orion.domain.model.User;

public interface UserService {

	public final String parola_oraian = "orion";
	
	/**
	 * Login function
	 * 
	 * @param emailAddress
	 * @param password
	 * @return
	 * @throws InvalidEmailOrPasswordException
	 */
	public User login(String emailAddress, String password) throws InvalidEmailOrPasswordException, AccountDisabledException;
	
	/**
	 * Register a new user function
	 * 
	 * @param currentLogedInUserId
	 * @param userToRegister
	 * @return
	 * @throws EmailAddressExistsException
	 * @throws InsufficientRightException
	 */
	public User register(int currentLogedInUserId, User userToRegister) throws EmailAddressExistsException, InsufficientRightException, NoUserRightSetException, InvalidEmailOrPasswordException;
	
	/**
	 * Function to modify an existing user
	 * 
	 * @param currentLogedInUserId
	 * @param userIdToModify
	 * @param newUserData
	 * @param changePassword
	 * @return
	 * @throws EmailAddressExistsException
	 * @throws InsufficientRightException
	 * @throws InvalidDataSendException 
	 * @throws InvalidEmailAddressException 
	 * @throws InvalidPasswordException 
	 * @throws NoUserRightSetException 
	 */
	public User modify(int currentLogedInUserId, int userIdToModify, User newUserData, boolean changePassword) throws EmailAddressExistsException, InsufficientRightException, InvalidDataSendException, InvalidEmailAddressException, InvalidPasswordException, NoUserRightSetException;
	
	/**
	 * Returns a user by its id
	 * 
	 * @param userId
	 * @return
	 */
	public User getUser(int userId);
	
	/**
	 * Returns a user by its emailAddress
	 * 
	 * @param emailAddress
	 * @return
	 */
	public User getUser(String emailAddress);
	
	/**
	 * Returns all users form the data base
	 * 
	 * @return
	 */
	public List<User> getAllUsers();
	
	/**
	 * @return a hashtable where the keys are the user_id s and the values are
	 *         in the format: last_name, first_name
	 */
	public Hashtable<Integer, String> getUsersNames();
	
	/**
	 * 
	 * @param currentLogedInUserId
	 * @param userIdToSetCV
	 * @param cvPath
	 * @throws InsufficientRightException
	 * @throws InvalidDataSendException
	 * @throws NoUserRightSetException
	 */
	public void setCVLocation(int currentLogedInUserId, int userIdToSetCV, String cvPath) throws InsufficientRightException, InvalidDataSendException;
}
