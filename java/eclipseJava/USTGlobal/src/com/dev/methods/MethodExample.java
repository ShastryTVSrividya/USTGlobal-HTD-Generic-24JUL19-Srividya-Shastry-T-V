package com.dev.methods;

public class MethodExample {

	public static void main(String[] args) {

	
		int a=calcArea(4);
		System.out.println(a+" is the area of square");

	}
	public static int calcArea(int side){
		int area=side*side;
		return area;
	}

}
