package com.dev.constructor;

public class ConstructorExample {

	public ConstructorExample(int i) {
		System.out.println("helloo Vidya");
	}
	
	public ConstructorExample(String i) {
		System.out.println("helloo Piaa");
	}
	
	public ConstructorExample() {
		System.out.println("helloo Vibha");
	}
	
	public ConstructorExample(String i,int j) {
		System.out.println("consructor with first string and second is int");
	}
	
	public ConstructorExample(int i,String j) {
		System.out.println("consructor with first int and second is String");
	}
	
	public static void main(String[] args) {
		
		ConstructorExample ce= new ConstructorExample(1);
		ConstructorExample ce1= new ConstructorExample("a");
		ConstructorExample ce2= new ConstructorExample("a",1);
		ConstructorExample ce3= new ConstructorExample(1,"a");
	}
}
