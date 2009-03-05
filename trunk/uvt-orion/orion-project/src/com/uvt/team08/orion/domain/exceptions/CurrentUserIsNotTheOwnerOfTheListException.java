package com.uvt.team08.orion.domain.exceptions;

public class CurrentUserIsNotTheOwnerOfTheListException extends DomainException {
	
	private static final long serialVersionUID = 4020133710700551475L;

	public CurrentUserIsNotTheOwnerOfTheListException(String message) {
		super(message);
	}

	public CurrentUserIsNotTheOwnerOfTheListException() {
		super();
	}

	public CurrentUserIsNotTheOwnerOfTheListException(String message, Throwable cause) {
		super(message, cause);
	}

	public CurrentUserIsNotTheOwnerOfTheListException(Throwable cause) {
		super(cause);
	}
}