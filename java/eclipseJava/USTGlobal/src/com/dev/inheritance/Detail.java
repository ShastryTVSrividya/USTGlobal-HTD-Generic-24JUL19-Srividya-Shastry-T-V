package com.dev.inheritance;

public class Detail extends FlowerName{

	static Detail d= new Detail();
	String name = "White";

	@Override
	public void print() {
		//String name = "White";
		System.out.println(name+" "+super.name+" "+d.flowerName);
	}

	public static void main(String[] args) {

		d.print();

	}

}
