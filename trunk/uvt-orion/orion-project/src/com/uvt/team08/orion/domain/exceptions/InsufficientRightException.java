package com.uvt.team08.orion.domain.exceptions;

public class InsufficientRightException extends DomainException {
	
	private static final long serialVersionUID = 4020133710700551475L;

	public InsufficientRightException(String message) {
		super(message);
	}

	public InsufficientRightException() {
		super();
	}

	public InsufficientRightException(String message, Throwable cause) {
		super(message, cause);
	}

	public InsufficientRightException(Throwable cause) {
		super(cause);
	}
}