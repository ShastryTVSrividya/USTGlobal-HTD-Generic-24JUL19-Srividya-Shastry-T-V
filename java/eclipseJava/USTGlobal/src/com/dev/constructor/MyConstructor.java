package com.dev.constructor;

public  class MyConstructor {
	
	protected int i=0;

	public MyConstructor() {
		System.out.println("No value");
	}

	public MyConstructor(int i) {
		System.out.println("The value is "+ i);
	}

	public MyConstructor(String i) {
		System.out.println("The value is "+ i);
	}

	public MyConstructor(String i,int j) {
		System.out.println("The values are "+ i +" and "+j);
	}

	public MyConstructor(int i,String j) {
		System.out.println("The values are "+ i +" and "+j);
	}

	public MyConstructor(int a,int b , int c) {
		System.out.println("The values are "+ a +" , " + b +" and "+c);
	}
	
	public static void print() {
		System.out.println("hello");
	}

	

	public static void main(String[] args) {

		MyConstructor ce= new MyConstructor();
		MyConstructor ce1= new MyConstructor(1);
		MyConstructor ce2= new MyConstructor("Vidya");
		MyConstructor ce3= new MyConstructor("vidya",22);
		MyConstructor ce4= new MyConstructor(23,"vibha");
		MyConstructor ce5= new MyConstructor(10,20,30);
		
	
	}

}
