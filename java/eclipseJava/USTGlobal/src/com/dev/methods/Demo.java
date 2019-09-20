package com.dev.methods;

import com.dev.encapsulation.Dog;

//final public class Demo {  final classes cannot be inherited
public class Demo {
	
    protected int i=10;
    //i=20; final variables cannot be re-initialized
	
	final static int INT=10;
	
	protected static void print() {
		System.out.println("Final Method");
	}
	
	Dog d = new Dog();
	com.dev.constructor.Dog d1 = new com.dev.constructor.Dog();

}
