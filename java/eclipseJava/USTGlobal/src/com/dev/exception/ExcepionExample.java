package com.dev.exception;

public class ExcepionExample {

	public static void main(String[] args) {
		double d = 10.0;
		double q = 0.0;
		System.out.println("Result = "+d/q);
		
		String s ="hii";
		String st = "hii";
		System.out.println(s.hashCode());
		System.out.println(st.hashCode());
		s = s.replace('i','o');
		System.out.println(s.hashCode());
		
		StringBuilder sb = new StringBuilder("hello");
		StringBuilder sb1 = new StringBuilder("hello");
		sb1 = sb1.replace(1, 5, "hi");
		System.out.println(sb1);
		System.out.println("print statement before");
		//StringBuffer sb = new StringBuffer(-1);
		t();
		System.out.println("print statement after");	
	}
	
	public static void p() {
		//StringBuffer sb = new StringBuffer(-1);
	}
	
	public static void t() {
		p();
	}
	
	
	

}
