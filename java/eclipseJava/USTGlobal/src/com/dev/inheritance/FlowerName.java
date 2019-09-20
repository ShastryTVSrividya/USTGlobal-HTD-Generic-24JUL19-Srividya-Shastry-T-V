package com.dev.inheritance;

public class FlowerName extends Flowers {

	static FlowerName fn = new FlowerName();
	 String name = "big";
	 
	@Override
	public void print() {
		
		 System.out.println(name + " "+super.name+" "+fn.flowerName); //access immediate super class entities
	}
	
	public static void main(String[] args) {
	
	
		fn.print();
	}

}

