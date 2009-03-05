package com.uvt.team08.orion.domain.exceptions;

public class NoUserRightSetException extends DomainException {
	
	private static final long serialVersionUID = 4020133710700551475L;

	public NoUserRightSetException(String message) {
		super(message);
	}

	public NoUserRightSetException() {
		super();
	}

	public NoUserRightSetException(String message, Throwable cause) {
		super(message, cause);
	}

	public NoUserRightSetException(Throwable cause) {
		super(cause);
	}
}