package com.uvt.team08.orion.domain.exceptions;

public class InvalidEmailAddressException  extends DomainException {
	
	private static final long serialVersionUID = 4020133710700551475L;

	public InvalidEmailAddressException(String message) {
		super(message);
	}

	public InvalidEmailAddressException() {
		super();
	}

	public InvalidEmailAddressException(String message, Throwable cause) {
		super(message, cause);
	}

	public InvalidEmailAddressException(Throwable cause) {
		super(cause);
	}
}