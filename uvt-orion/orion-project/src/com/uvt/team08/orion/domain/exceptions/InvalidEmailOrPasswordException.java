package com.uvt.team08.orion.domain.exceptions;

public class InvalidEmailOrPasswordException extends DomainException {
	
	private static final long serialVersionUID = 4020133710700551475L;

	public InvalidEmailOrPasswordException(String message) {
		super(message);
	}

	public InvalidEmailOrPasswordException() {
		super();
	}

	public InvalidEmailOrPasswordException(String message, Throwable cause) {
		super(message, cause);
	}

	public InvalidEmailOrPasswordException(Throwable cause) {
		super(cause);
	}
}