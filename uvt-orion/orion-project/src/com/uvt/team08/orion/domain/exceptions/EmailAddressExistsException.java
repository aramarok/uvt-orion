package com.uvt.team08.orion.domain.exceptions;

public class EmailAddressExistsException extends DomainException {
	
	private static final long serialVersionUID = 4020133710700551475L;

	public EmailAddressExistsException(String message) {
		super(message);
	}

	public EmailAddressExistsException() {
		super();
	}

	public EmailAddressExistsException(String message, Throwable cause) {
		super(message, cause);
	}

	public EmailAddressExistsException(Throwable cause) {
		super(cause);
	}
}