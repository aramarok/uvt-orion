package com.uvt.team08.orion.domain.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.uvt.team08.orion.domain.exceptions.CurrentUserIsNotTheOwnerOfTheListException;
import com.uvt.team08.orion.domain.exceptions.InvalidDataSendException;
import com.uvt.team08.orion.domain.model.Lista1;
import com.uvt.team08.orion.domain.model.Lista10;
import com.uvt.team08.orion.domain.model.Lista2;
import com.uvt.team08.orion.domain.model.Lista3;
import com.uvt.team08.orion.domain.model.Lista4;
import com.uvt.team08.orion.domain.model.Lista5;
import com.uvt.team08.orion.domain.model.Lista6;
import com.uvt.team08.orion.domain.model.Lista7;
import com.uvt.team08.orion.domain.model.Lista8;
import com.uvt.team08.orion.domain.model.Lista9;
import com.uvt.team08.orion.domain.model.User;
import com.uvt.team08.orion.domain.service.hibernate.HibernateUtil;
import com.uvt.team08.orion.view.WebUtil;

public class ListsServiceBean implements ListsService {
	private Logger log = Logger.getLogger(ListsService.class);
	
	private Session session = null;
	private Transaction tx = null;
	private UserService userService = WebUtil.getUserService();
	

	@SuppressWarnings("unchecked")
	public synchronized Object getList(int idList, Class classType){
		log.info("Get list with id " + idList + " of type " + classType.getName());
		
		session = HibernateUtil.currentSession();
		tx = session.beginTransaction();
		
		Object list = null;
		try {
			list = session.get(classType, idList);
			tx.commit();

		} catch (HibernateException he) {
			if (tx != null)
				tx.rollback();
			throw he;
		}
		return list;
	}
	
	
	/**
	 * Generic method to add records to the Lists
	 * @throws InvalidDataSendException 
	 */
	public synchronized Object addRecordToList(int currentLogedInUserId, Object list) throws InvalidDataSendException {
		log.info("Add record to list of type " + list.getClass().getName());
		
		session = HibernateUtil.currentSession();
		
		User logedInUser = userService.getUser(currentLogedInUserId);
		
		//validations:
		if (logedInUser == null)
			throw new InvalidDataSendException();
		if (list == null)
			throw new InvalidDataSendException();

		if (list instanceof Lista1){
			((Lista1)list).setIdLista1(null);
		} else if (list instanceof Lista2){
			((Lista2)list).setIdLista2(null);
		} else if (list instanceof Lista3){
			((Lista3)list).setIdLista3(null);
		} else if (list instanceof Lista4){
			((Lista4)list).setIdLista4(null);
		} else if (list instanceof Lista5){
			((Lista5)list).setIdLista5(null);
		} else if (list instanceof Lista6){
			((Lista6)list).setIdLista6(null);
		} else if (list instanceof Lista7){
			((Lista7)list).setIdLista7(null);
		} else if (list instanceof Lista8){
			((Lista8)list).setIdLista8(null);
		} else if (list instanceof Lista9){
			((Lista9)list).setIdLista9(null);
		} else if (list instanceof Lista10){
			((Lista10)list).setIdLista10(null);
		}
		
		
		try {
			tx = session.beginTransaction();
			if (list instanceof Lista1){
				session.persist(list);
				logedInUser.getLista1().add((Lista1)list);
			} else if (list instanceof Lista2){
				session.persist(list);
				logedInUser.getLista2().add((Lista2)list);
			} else if (list instanceof Lista3){
				session.persist(list);
				logedInUser.getLista3().add((Lista3)list);
			} else if (list instanceof Lista4){
				session.persist(list);
				logedInUser.getLista4().add((Lista4)list);
			} else if (list instanceof Lista5){
				session.persist(list);
				logedInUser.getLista5().add((Lista5)list);
			} else if (list instanceof Lista6){
				session.persist(list);
				logedInUser.getLista6().add((Lista6)list);
			} else if (list instanceof Lista7){
				session.persist(list);
				logedInUser.getLista7().add((Lista7)list);
			} else if (list instanceof Lista8){
				session.persist(list);
				logedInUser.getLista8().add((Lista8)list);
			} else if (list instanceof Lista9){
				session.persist(list);
				logedInUser.getLista9().add((Lista9)list);
			} else if (list instanceof Lista10){
				session.persist(list);
				logedInUser.getLista10().add((Lista10)list);
			}
			
			session.merge(logedInUser);
			tx.commit();
			HibernateUtil.closeSession();
			HibernateUtil.sessionFactory.close();
			log.info("Record added succesfully");
		} catch (HibernateException he) {
			if (tx != null)
				tx.rollback();
			log.error("HibernateException when adding record" + he.getMessage());
			throw he;
		}
		return list;
	}

	
	/**
	 * Generic method to delete a record from a list type table from the date base
	 * @throws InvalidDataSendException 
	 */
	@SuppressWarnings("unchecked")
	public synchronized boolean deleteRecordFromList(int currentLogedInUserId, int idListToDelete, Class classType)  throws CurrentUserIsNotTheOwnerOfTheListException, InvalidDataSendException {
		log.info("Delete a record form a list.");
		
		session = HibernateUtil.currentSession();
		
		User logedInUser = userService.getUser(currentLogedInUserId);
		Object listToDelete = getList(idListToDelete, classType);
		
		//validations:
		if (logedInUser == null)
			throw new InvalidDataSendException();
		if (listToDelete == null)
			throw new InvalidDataSendException();
		boolean usersList = false;
		if (listToDelete instanceof Lista1 ){//classType.getClass().isInstance(Lista1.class)){
			if (logedInUser.getLista1() != null){
				if (!logedInUser.getLista1().isEmpty()){
					for (Lista1 l : logedInUser.getLista1()){
						if (l.getIdLista1().compareTo(((Lista1)listToDelete).getIdLista1()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (listToDelete instanceof Lista2){ //classType.getClass().isInstance(Lista2.class)){
			if (logedInUser.getLista2() != null){
				if (!logedInUser.getLista2().isEmpty()){
					for (Lista2 l : logedInUser.getLista2()){
						if (l.getIdLista2().compareTo(((Lista2)listToDelete).getIdLista2()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (listToDelete instanceof Lista3){// classType.getClass().isInstance(Lista3.class)){
			if (logedInUser.getLista3() != null){
				if (!logedInUser.getLista3().isEmpty()){
					for (Lista3 l : logedInUser.getLista3()){
						if (l.getIdLista3().compareTo(((Lista3)listToDelete).getIdLista3()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (listToDelete instanceof Lista4){// classType.getClass().isInstance(Lista4.class)){
			if (logedInUser.getLista4() != null){
				if (!logedInUser.getLista4().isEmpty()){
					for (Lista4 l : logedInUser.getLista4()){
						if (l.getIdLista4().compareTo(((Lista4)listToDelete).getIdLista4()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (listToDelete instanceof Lista5){// classType.getClass().isInstance(Lista5.class)){
			if (logedInUser.getLista5() != null){
				if (!logedInUser.getLista5().isEmpty()){
					for (Lista5 l : logedInUser.getLista5()){
						if (l.getIdLista5().compareTo(((Lista5)listToDelete).getIdLista5()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (listToDelete instanceof Lista6){ //classType.getClass().isInstance(Lista6.class)){
			if (logedInUser.getLista6() != null){
				if (!logedInUser.getLista6().isEmpty()){
					for (Lista6 l : logedInUser.getLista6()){
						if (l.getIdLista6().compareTo(((Lista6)listToDelete).getIdLista6()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (listToDelete instanceof Lista7){ //classType.getClass().isInstance(Lista7.class)){
			if (logedInUser.getLista7() != null){
				if (!logedInUser.getLista7().isEmpty()){
					for (Lista7 l : logedInUser.getLista7()){
						if (l.getIdLista7().compareTo(((Lista7)listToDelete).getIdLista7()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (listToDelete instanceof Lista8){ //classType.getClass().isInstance(Lista8.class)){
			if (logedInUser.getLista8() != null){
				if (!logedInUser.getLista8().isEmpty()){
					for (Lista8 l : logedInUser.getLista8()){
						if (l.getIdLista8().compareTo(((Lista8)listToDelete).getIdLista8()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (listToDelete instanceof Lista9){ //classType.getClass().isInstance(Lista9.class)){
			if (logedInUser.getLista9() != null){
				if (!logedInUser.getLista9().isEmpty()){
					for (Lista9 l : logedInUser.getLista9()){
						if (l.getIdLista9().compareTo(((Lista9)listToDelete).getIdLista9()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (listToDelete instanceof Lista10){ //classType.getClass().isInstance(Lista10.class)){
			if (logedInUser.getLista10() != null){
				if (!logedInUser.getLista10().isEmpty()){
					for (Lista10 l : logedInUser.getLista10()){
						if (l.getIdLista10().compareTo(((Lista10)listToDelete).getIdLista10()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		}
		if (usersList == false){
			throw new CurrentUserIsNotTheOwnerOfTheListException();
		}
		
		
		try {
			tx = session.beginTransaction();
			if (listToDelete instanceof Lista1){ //classType.getClass().isInstance(Lista1.class)){
				logedInUser.getLista1().remove((Lista1)listToDelete);
				session.merge(logedInUser);
				session.delete((Lista1)listToDelete);
			} else if (listToDelete instanceof Lista2){ //classType.getClass().isInstance(Lista2.class)){
				logedInUser.getLista2().remove((Lista2)listToDelete);
				session.merge(logedInUser);
				session.delete((Lista2)listToDelete);
			} else if (listToDelete instanceof Lista3){ //classType.getClass().isInstance(Lista3.class)){
				logedInUser.getLista3().remove((Lista3)listToDelete);
				session.merge(logedInUser);
				session.delete((Lista3)listToDelete);
			} else if (listToDelete instanceof Lista4){ //classType.getClass().isInstance(Lista4.class)){
				logedInUser.getLista4().remove((Lista4)listToDelete);
				session.merge(logedInUser);
				session.delete((Lista4)listToDelete);
			} else if (listToDelete instanceof Lista5){ //classType.getClass().isInstance(Lista5.class)){
				logedInUser.getLista5().remove((Lista5)listToDelete);
				session.merge(logedInUser);
				session.delete((Lista5)listToDelete);
			} else if (listToDelete instanceof Lista6){ //classType.getClass().isInstance(Lista6.class)){
				logedInUser.getLista6().remove((Lista6)listToDelete);
				session.merge(logedInUser);
				session.delete((Lista6)listToDelete);
			} else if (listToDelete instanceof Lista7){ //classType.getClass().isInstance(Lista7.class)){
				logedInUser.getLista7().remove((Lista7)listToDelete);
				session.merge(logedInUser);
				session.delete((Lista7)listToDelete);
			} else if (listToDelete instanceof Lista8){ //classType.getClass().isInstance(Lista8.class)){
				logedInUser.getLista8().remove((Lista8)listToDelete);
				session.merge(logedInUser);
				session.delete((Lista8)listToDelete);
			} else if (listToDelete instanceof Lista9){ //classType.getClass().isInstance(Lista9.class)){
				logedInUser.getLista9().remove((Lista9)listToDelete);
				session.merge(logedInUser);
				session.delete((Lista9)listToDelete);
			} else if (listToDelete instanceof Lista10){ //classType.getClass().isInstance(Lista10.class)){
				logedInUser.getLista10().remove((Lista10)listToDelete);
				session.merge(logedInUser);
				session.delete((Lista10)listToDelete);
			}
			
			tx.commit();
			HibernateUtil.closeSession();
			HibernateUtil.sessionFactory.close();
			log.info("Record deleted succesfully.");
		} catch (HibernateException he) {
			if (tx != null)
				tx.rollback();
			log.error("HibernateException when deleting record" + he.getMessage());
			throw he;
		}
		return true;
	}

	/**
	 * Generic method to modify a record form a list
	 * @throws InvalidDataSendException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	@SuppressWarnings("unchecked")
	public synchronized Object modifyRecordFromList(int currentLogedInUserId, int idListToModify, Object newList, Class classType) throws CurrentUserIsNotTheOwnerOfTheListException, InvalidDataSendException, InstantiationException, IllegalAccessException {
		log.info("Modifing a record from a list.");
		
		session = HibernateUtil.currentSession();
		
		User logedInUser = userService.getUser(currentLogedInUserId);
		Object listToModify = getList(idListToModify, classType);
		
		//validations:
		if (logedInUser == null)
			throw new InvalidDataSendException();
		if (listToModify == null)
			throw new InvalidDataSendException();
		
		if (newList instanceof Lista1){
			((Lista1)newList).setIdLista1(null);
		} else if (newList instanceof Lista2){
			((Lista2)newList).setIdLista2(null);
		} else if (newList instanceof Lista3){
			((Lista3)newList).setIdLista3(null);
		} else if (newList instanceof Lista4){
			((Lista4)newList).setIdLista4(null);
		} else if (newList instanceof Lista5){
			((Lista5)newList).setIdLista5(null);
		} else if (newList instanceof Lista6){
			((Lista6)newList).setIdLista6(null);
		} else if (newList instanceof Lista7){
			((Lista7)newList).setIdLista7(null);
		} else if (newList instanceof Lista8){
			((Lista8)newList).setIdLista8(null);
		} else if (newList instanceof Lista9){
			((Lista9)newList).setIdLista9(null);
		} else if (newList instanceof Lista10){
			((Lista10)newList).setIdLista10(null);
		}
		
		
		boolean usersList = false;
		if (classType.newInstance() instanceof Lista1 ){
			if (logedInUser.getLista1() != null){
				if (!logedInUser.getLista1().isEmpty()){
					for (Lista1 l : logedInUser.getLista1()){
						if (l.getIdLista1().compareTo(((Lista1)listToModify).getIdLista1()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (classType.newInstance() instanceof Lista2 ){
			if (logedInUser.getLista2() != null){
				if (!logedInUser.getLista2().isEmpty()){
					for (Lista2 l : logedInUser.getLista2()){
						if (l.getIdLista2().compareTo(((Lista2)listToModify).getIdLista2()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (classType.newInstance() instanceof Lista3 ){
			if (logedInUser.getLista3() != null){
				if (!logedInUser.getLista3().isEmpty()){
					for (Lista3 l : logedInUser.getLista3()){
						if (l.getIdLista3().compareTo(((Lista3)listToModify).getIdLista3()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (classType.newInstance() instanceof Lista4 ){
			if (logedInUser.getLista4() != null){
				if (!logedInUser.getLista4().isEmpty()){
					for (Lista4 l : logedInUser.getLista4()){
						if (l.getIdLista4().compareTo(((Lista4)listToModify).getIdLista4()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (classType.newInstance() instanceof Lista5 ){
			if (logedInUser.getLista5() != null){
				if (!logedInUser.getLista5().isEmpty()){
					for (Lista5 l : logedInUser.getLista5()){
						if (l.getIdLista5().compareTo(((Lista5)listToModify).getIdLista5()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (classType.newInstance() instanceof Lista6 ){
			if (logedInUser.getLista6() != null){
				if (!logedInUser.getLista6().isEmpty()){
					for (Lista6 l : logedInUser.getLista6()){
						if (l.getIdLista6().compareTo(((Lista6)listToModify).getIdLista6()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (classType.newInstance() instanceof Lista7 ){
			if (logedInUser.getLista7() != null){
				if (!logedInUser.getLista7().isEmpty()){
					for (Lista7 l : logedInUser.getLista7()){
						if (l.getIdLista7().compareTo(((Lista7)listToModify).getIdLista7()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (classType.newInstance() instanceof Lista8 ){
			if (logedInUser.getLista8() != null){
				if (!logedInUser.getLista8().isEmpty()){
					for (Lista8 l : logedInUser.getLista8()){
						if (l.getIdLista8().compareTo(((Lista8)listToModify).getIdLista8()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (classType.newInstance() instanceof Lista9 ){
			if (logedInUser.getLista9() != null){
				if (!logedInUser.getLista9().isEmpty()){
					for (Lista9 l : logedInUser.getLista9()){
						if (l.getIdLista9().compareTo(((Lista9)listToModify).getIdLista9()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		} else if (classType.newInstance() instanceof Lista10){
			if (logedInUser.getLista10() != null){
				if (!logedInUser.getLista10().isEmpty()){
					for (Lista10 l : logedInUser.getLista10()){
						if (l.getIdLista10().compareTo(((Lista10)listToModify).getIdLista10()) == 0)
							usersList = true;
					}
				} else {
					throw new CurrentUserIsNotTheOwnerOfTheListException();
				}
			} else {
				throw new CurrentUserIsNotTheOwnerOfTheListException();
			}
		}
		if (usersList == false){
			throw new CurrentUserIsNotTheOwnerOfTheListException();
		}
		if (newList instanceof Lista1){
			((Lista1)newList).setIdLista1(((Lista1)listToModify).getIdLista1());
		} else if (newList instanceof Lista2){
			((Lista2)newList).setIdLista2(((Lista2)listToModify).getIdLista2());
		} else if (newList instanceof Lista3){
			((Lista3)newList).setIdLista3(((Lista3)listToModify).getIdLista3());
		} else if (newList instanceof Lista4){
			((Lista4)newList).setIdLista4(((Lista4)listToModify).getIdLista4());
		} else if (newList instanceof Lista5){
			((Lista5)newList).setIdLista5(((Lista5)listToModify).getIdLista5());
		} else if (newList instanceof Lista6){
			((Lista6)newList).setIdLista6(((Lista6)listToModify).getIdLista6());
		} else if (newList instanceof Lista7){
			((Lista7)newList).setIdLista7(((Lista7)listToModify).getIdLista7());
		} else if (newList instanceof Lista8){
			((Lista8)newList).setIdLista8(((Lista8)listToModify).getIdLista8());
		} else if (newList instanceof Lista9){
			((Lista9)newList).setIdLista9(((Lista9)listToModify).getIdLista9());
		} else if (newList instanceof Lista10){
			((Lista10)newList).setIdLista10(((Lista10)listToModify).getIdLista10());
		}
		
		
		try {
			tx = session.beginTransaction();
			if (newList instanceof Lista1){
				session.merge((Lista1)newList);
			} else if (newList instanceof Lista2){
				session.merge((Lista2)newList);
			} else if (newList instanceof Lista3){
				session.merge((Lista3)newList);
			} else if (newList instanceof Lista4){
				session.merge((Lista4)newList);
			} else if (newList instanceof Lista5){
				session.merge((Lista5)newList);
			} else if (newList instanceof Lista6){
				session.merge((Lista6)newList);
			} else if (newList instanceof Lista7){
				session.merge((Lista7)newList);
			} else if (newList instanceof Lista8){
				session.merge((Lista8)newList);
			} else if (newList instanceof Lista9){
				session.merge((Lista9)newList);
			} else if (newList instanceof Lista10){
				session.merge((Lista10)newList);
			}
			tx.commit();
			HibernateUtil.closeSession();
			HibernateUtil.sessionFactory.close();
			log.info("Record modified succefully.");
		} catch (HibernateException he) {
			if (tx != null)
				tx.rollback();
			log.error("HibernateException when deleting record" + he.getMessage());
			throw he;
		}
		
		return newList;
	}
	
	@SuppressWarnings("unchecked")
	public synchronized List<Object> getListRecordsOfAUser(int currentLogedInUserId, Class listType) throws InvalidDataSendException, InstantiationException, IllegalAccessException{
		log.info("Get list records of a user.");
		List<Object> returnList = new ArrayList<Object>();
		
		User logedInUser = userService.getUser(currentLogedInUserId);
		// validations
		if (listType == null)
			throw new InvalidDataSendException();
		if (logedInUser == null)
			throw new InvalidDataSendException();
		
		if (listType.newInstance() instanceof Lista1 ){
			returnList = new ArrayList<Object>(logedInUser.getLista1());
		} else if (listType.newInstance() instanceof Lista2){
			returnList = new ArrayList<Object>(logedInUser.getLista2());
		} else if (listType.newInstance() instanceof Lista3){
			returnList = new ArrayList<Object>(logedInUser.getLista3());
		} else if (listType.newInstance() instanceof Lista4){
			returnList = new ArrayList<Object>(logedInUser.getLista4());
		} else if (listType.newInstance() instanceof Lista5){
			returnList = new ArrayList<Object>(logedInUser.getLista5());
		} else if (listType.newInstance() instanceof Lista6){
			returnList = new ArrayList<Object>(logedInUser.getLista6());
		} else if (listType.newInstance() instanceof Lista7){
			returnList = new ArrayList<Object>(logedInUser.getLista7());
		} else if (listType.newInstance() instanceof Lista8){
			returnList = new ArrayList<Object>(logedInUser.getLista8());
		} else if (listType.newInstance() instanceof Lista9){
			returnList = new ArrayList<Object>(logedInUser.getLista9());
		} else if (listType.newInstance() instanceof Lista10){
			returnList = new ArrayList<Object>(logedInUser.getLista10());
		}
		
		
		return returnList;
	}
	
}