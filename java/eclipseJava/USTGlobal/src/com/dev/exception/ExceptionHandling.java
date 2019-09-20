package com.dev.exception;

public class ExceptionHandling extends CustomException{

	public static void main(String[] args) throws CustomException {
		
	
		try {
			s(); //might or might not throw an exception hence written inside try
			System.out.println("Exception not caught in s()");
			int res = divide(10,1);
			System.out.println("No excepion for divide()");
			System.out.println("Divide Result = " + res);
			
			
		} catch (NegativeArraySizeException e){
			System.out.println("Exception caught in catch block");
			System.out.println("getMessage() = " +e.getMessage());
			System.out.println("getLocalizedMessage() = " +e.getLocalizedMessage());
			//e.printStackTrace();
			
		}catch (ArithmeticException e){
			System.out.println("Exception caught in catch block");
			System.out.println("getMessage() = " +e.getMessage());
			e.printStackTrace();
			
			
		}catch(Exception e){
			System.out.println("Exception Occured");
		}finally {
			System.out.println("Finally Block");
		}
	}

	public static int divide(int i,int j) {
		int res =i/j;
		System.out.println(res);
		return 1;
		
	}
	
	public static void s() {
			StringBuffer sb = new StringBuffer(-1);
	}

}
