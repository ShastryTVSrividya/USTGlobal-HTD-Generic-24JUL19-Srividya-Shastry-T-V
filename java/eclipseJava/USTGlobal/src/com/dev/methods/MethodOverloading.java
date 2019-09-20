package com.dev.methods;

public class MethodOverloading {
	
	public void print() {
		System.out.println("Helloo No arg method");
	}
	
	public int print(int i) {
		System.out.println("Helloo int arg method");
		return 1;
	}
	
	private int print(int i,int b) {
		System.out.println("Helloo int arg method");
		return 1;
	}

	public void print(String i) {
		System.out.println("Helloo string arg method");
	}
	
	final int print(float i) {
		System.out.println("Helloo int arg method");
		return 1;
	}
	public void display() {
		System.out.println("hello");
	}

	public static void main(String[] args) {
		
		MethodOverloading mo = new MethodOverloading();
		mo.print();
		mo.print(7);
		mo.print("vi");
		mo.print(1f);
		mo.print(1,2);

	}

}
