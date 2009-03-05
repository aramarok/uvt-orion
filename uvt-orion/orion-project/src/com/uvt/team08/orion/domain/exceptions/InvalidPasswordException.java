package com.uvt.team08.orion.domain.exceptions;

public class InvalidPasswordException  extends DomainException {
	
	private static final long serialVersionUID = 4020133710700551475L;

	public InvalidPasswordException(String message) {
		super(message);
	}

	public InvalidPasswordException() {
		super();
	}

	public InvalidPasswordException(String message, Throwable cause) {
		super(message, cause);
	}

	public InvalidPasswordException(Throwable cause) {
		super(cause);
	}
}