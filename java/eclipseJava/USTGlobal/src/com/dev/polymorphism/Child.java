package com.dev.polymorphism;

public class Child extends Parent {
	
	
	public void printPlayer() {
		System.out.println("Roger");
	}
	
	public void printPlayer(String s) {
		System.out.println(s);
	}
	
	public void printPlayer(String s1,String s2) {
		System.out.println(s1 + " " + s2);
	}
	
	@Override
	public void printTournament() {
		System.out.println("Wimbledon,Australian");
	}
	
	public static void main(String[] args) {
		
		Child c = new Child();	
		c.printPlayer();
		c.printPlayer("Djokovic");
		c.printPlayer("Graff", "Sharapova");
		c.printTournament();
		
		/*Parent p = new Parent();
		p.printTournament();*/
		
	}

}
