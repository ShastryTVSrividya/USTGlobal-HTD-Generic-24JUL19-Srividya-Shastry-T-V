package com.dev.collections;


import java.util.TreeSet;

import com.dev.encapsulation.Dog;

public class TreeSetExample {

	public static void main(String[] args) {
		TreeSet<Dog> ts = new TreeSet<Dog>();
		
		
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
		
		ts.add(d);
		ts.add(d1);
		ts.add(d2);
		
		System.out.println(ts);

	}

}
