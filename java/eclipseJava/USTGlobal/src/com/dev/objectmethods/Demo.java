package com.dev.objectmethods;

import com.dev.encapsulation.Dog;

//final public class Demo {  final classes cannot be inherited
public final class Demo {
	
    public final int i=10;
    //i=20; final variables cannot be re-initialized
	
    public static int INT=10;
	
    public static void print() {
		System.out.println("Final Method");
	}
	
	Dog d = new Dog();
	com.dev.constructor.Dog d1 = new com.dev.constructor.Dog();

}
