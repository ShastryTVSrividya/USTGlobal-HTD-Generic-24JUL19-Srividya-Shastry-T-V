package com.dev.inheritance;

public class Flowers {
 
	
	static Flowers f = new Flowers();
	String name = "Flower";
	String flowerName = "Rose";

	

	public static void main(String[] args) {
	
		f.print();

	}
	
	public void print() {
		System.out.println("It is a " + name);
	}

}

