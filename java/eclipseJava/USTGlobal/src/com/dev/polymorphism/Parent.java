package com.dev.polymorphism;

public class Parent {
	
	
	public void printTournament() {
		System.out.println("Wimbledon,Australian,US,French");
	}

	public static void main(String[] args) {
		
	  Parent p = new Parent();
	  p.printTournament();
	 
	  Child c = new Child();
	  c.printTournament();
	}

}
