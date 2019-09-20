package com.dev.inheritance;

public class GrandFather {
	static GrandFather g = new GrandFather();
	String lastName = "Shastry";
	String name= "Venkatarama";
	

	public static void main(String[] args) {
	
		g.printName();

	}
	
	public void printName() {
		System.out.println("name is " + name);
	}

}
