package com.uvt.team08.orion.domain.service;

import java.util.List;

import com.uvt.team08.orion.domain.exceptions.CurrentUserIsNotTheOwnerOfTheListException;
import com.uvt.team08.orion.domain.exceptions.InvalidDataSendException;

public interface ListsService {
	
	/**
	 * 
	 * @param currentLogedInUserId
	 * @param list
	 * @return
	 * @throws InvalidDataSendException 
	 */
	public Object addRecordToList(int currentLogedInUserId, Object list) throws InvalidDataSendException;
	
	/**
	 * 
	 * @param currentLogedInUserId
	 * @param idListToModify
	 * @param newList
	 * @param classType
	 * @return
	 * @throws CurrentUserIsNotTheOwnerOfTheListException
	 * @throws InvalidDataSendException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	@SuppressWarnings("unchecked")
	public Object modifyRecordFromList(int currentLogedInUserId, int idListToModify, Object newList, Class listType) throws CurrentUserIsNotTheOwnerOfTheListException, InvalidDataSendException, InstantiationException, IllegalAccessException;
	
	/**
	 * 
	 * @param currentLogedInUserId
	 * @param idListToDelete
	 * @param classType
	 * @return
	 * @throws CurrentUserIsNotTheOwnerOfTheListException
	 * @throws InvalidDataSendException 
	 */
	@SuppressWarnings("unchecked")
	public boolean deleteRecordFromList(int currentLogedInUserId, int idListToDelete, Class listType) throws CurrentUserIsNotTheOwnerOfTheListException, InvalidDataSendException;
	
	/**
	 * 
	 * @param idList
	 * @param listType
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public Object getList(int idList, Class listType);
	
	/**
	 * 
	 * @param currentLogedInUserId
	 * @param listType
	 * @return
	 * @throws InvalidDataSendException
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	@SuppressWarnings("unchecked")
	public List<Object> getListRecordsOfAUser(int currentLogedInUserId, Class listType) throws InvalidDataSendException, InstantiationException, IllegalAccessException;

}