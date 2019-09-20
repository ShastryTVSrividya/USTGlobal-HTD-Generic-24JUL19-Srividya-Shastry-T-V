package com.dev.exception;

public class CustomException extends Exception {
	public CustomException() {
		System.out.println("Custom Exception");
	}
	
	public  CustomException(int i) {
		System.out.println("Custom Exception for integer");
	}
	
	public  CustomException(String i) {
		System.out.println("Custom Exception for String");
	}

	@Override
	public String getLocalizedMessage() {
		return "Custom Exception message for getLocalized";
	}
	
	@Override
	public String getMessage() {
		return "Custom Exception message for get";
	}
}
