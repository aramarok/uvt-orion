package com.uvt.team08.orion.domain.exceptions;

public class DomainException extends Exception {
	
	private static final long serialVersionUID = 4020133710700551475L;

	public DomainException(String message) {
		super(message);
	}

	public DomainException() {
		super();
	}

	public DomainException(String message, Throwable cause) {
		super(message, cause);
	}

	public DomainException(Throwable cause) {
		super(cause);
	}
}