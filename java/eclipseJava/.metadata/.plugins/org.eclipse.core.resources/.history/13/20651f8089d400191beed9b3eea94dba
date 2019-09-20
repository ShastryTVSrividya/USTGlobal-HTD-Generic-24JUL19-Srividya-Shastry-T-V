package com.dev.collections;

import java.util.ArrayList;
import java.util.List;

import com.dev.encapsulation.Dog;

public class ArrayListExample {

	public static void main(String[] args) {
	List<Dog> al = new ArrayList<Dog>(2);
	
	Dog d = new Dog();
	d.setAge(5);
	d.setBreed("Golden Retriever");
	d.setColor("Brown");
	d.setName("Bruno");
	
	Dog d1 = new Dog();
	d1.setAge(3);
	d1.setBreed("Labrador");
	d1.setColor("Light Brown");
	d1.setName("Maxy");

	Dog d2 = new Dog();
	d2.setAge(4);
	d2.setBreed("Golden Retriever");
	d2.setColor("Black");
	d2.setName("Mandy");
	
	al.add(d);
	al.add(d1);
	al.add(d2);
	
	//System.out.println(al);
	
	((ArrayList<Dog>) al).trimToSize();
	
	for(Dog dog : al) {
		System.out.println(dog);
	}
	
	System.out.println("Array size after using trimToSize() is "
	                   +al.size());
	

	}

}
