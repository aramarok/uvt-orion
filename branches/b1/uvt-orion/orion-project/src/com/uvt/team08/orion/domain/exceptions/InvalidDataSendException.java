package com.uvt.team08.orion.domain.exceptions;

public class InvalidDataSendException  extends DomainException {
	
	private static final long serialVersionUID = 4020133710700551475L;

	public InvalidDataSendException(String message) {
		super(message);
	}

	public InvalidDataSendException() {
		super();
	}

	public InvalidDataSendException(String message, Throwable cause) {
		super(message, cause);
	}

	public InvalidDataSendException(Throwable cause) {
		super(cause);
	}
}