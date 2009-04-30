package com.uvt.team08.orion.domain.exceptions;

public class AccountDisabledException extends DomainException {
	
	private static final long serialVersionUID = 4020133710700551475L;

	public AccountDisabledException(String message) {
		super(message);
	}

	public AccountDisabledException() {
		super();
	}

	public AccountDisabledException(String message, Throwable cause) {
		super(message, cause);
	}

	public AccountDisabledException(Throwable cause) {
		super(cause);
	}
}