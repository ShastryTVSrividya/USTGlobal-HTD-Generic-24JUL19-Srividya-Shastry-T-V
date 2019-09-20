package com.dev.inheritance;

public class Father extends GrandFather {

	static Father f = new Father();
	 String name = "Venatachala";
	 
	@Override
	public void printName() {
		 System.out.println(name + " "+f.name+" "+f.lastName);
		 System.out.println(name + " "+super.name+" "+f.lastName); //access immediate super class entities
//		 System.out.println(name + " "+f.name+" "+f.lastName);
//		 System.out.println(super.name+" "+f.lastName);
	}
	
	public static void main(String[] args) {
	
	
		f.printName();
	}

}
