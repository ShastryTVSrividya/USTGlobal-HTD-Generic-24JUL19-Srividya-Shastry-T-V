package com.dev.Abstraction;

@FunctionalInterface
public interface Abs {
	void display();
	//void show();   //since its a functional interface there cannot be two abstract methods
	
	public int i =0 ;
	
	  public static void print() {
		System.out.println("Main of Abs");
	}
	  
	  static void print2() {
		  
	  }

}
