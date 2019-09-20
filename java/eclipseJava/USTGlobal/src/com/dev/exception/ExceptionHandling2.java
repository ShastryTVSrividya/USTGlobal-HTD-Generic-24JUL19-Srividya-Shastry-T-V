package com.dev.exception;

public class ExceptionHandling2 {


	public static void main(String[] args) throws CustomException {

		try {
			s();
		}catch(Exception e) {
			throw new CustomException();
		}
		
		
	}

	public static void s() throws CustomException {
		try {
			StringBuffer sb = new StringBuffer(-1);
		}catch(Exception e) {
			System.out.println("getMessage() = " +e.getMessage());
			System.out.println("getMessage() = " +new CustomException().getMessage());
			System.out.println("getLocalizedMessage() = " +e.getLocalizedMessage());
			System.out.println("getLocalizedMessage() = " +
					new CustomException().getLocalizedMessage());
		}
	}

}
