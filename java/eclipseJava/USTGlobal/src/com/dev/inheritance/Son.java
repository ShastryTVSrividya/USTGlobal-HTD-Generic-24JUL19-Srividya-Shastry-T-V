package com.dev.inheritance;


public class Son extends Father {

	static Son s= new Son();
	String name = "Vishesh";

	@Override
	public void printName() {

		System.out.println(name+" "+s.name+" "+s.lastName);
		System.out.println(name+" "+super.name+" "+s.lastName);
		super.printName();   //output of father class
		
//		String name = "Vishesh";
//		System.out.println(name+" "+super.name+" "+s.lastName);
//		super.printName();
	}

	public static void main(String[] args) {

		s.printName();

	}

}

