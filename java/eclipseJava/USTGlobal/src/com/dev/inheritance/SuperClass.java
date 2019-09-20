package com.dev.inheritance;

public class SuperClass {
	
	public SuperClass() {
		System.out.println("Default constructor");
	}
	
	public SuperClass(int i) {
		System.out.println("super class constructor with int as an arg");
	}
	
	public SuperClass(String s) {
		System.out.println("super class constructor with String as an arg");
	}
	
	public SuperClass(String a,int b) {
		System.out.println("super class constructor with String and int as an arg");
	}
	
	public SuperClass(int a,String b) {
		System.out.println("super class constructor with int and string as an arg");
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
