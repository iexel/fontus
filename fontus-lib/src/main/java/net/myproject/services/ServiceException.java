package net.myproject.services;

public class ServiceException extends Exception {
	private static final long serialVersionUID = 1L;

	public ServiceException(ErrorCode errorCode) {
		this.errorCode = errorCode;
	}

	private final ErrorCode errorCode;

	public ErrorCode getErrorCode() {
		return errorCode;
	}

	public enum ErrorCode {
		EXCEPTION_DB_ERROR, //
		EXCEPTION_MODIFIED_BY_ANOTHER_USER
	}
}
