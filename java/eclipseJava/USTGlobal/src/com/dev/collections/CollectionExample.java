package com.dev.collections;

import java.util.HashSet;
import java.util.SortedSet;
import java.util.TreeSet;

//import java.util.Collection;
//import java.util.HashSet;
//import java.util.Map;
import com.dev.encapsulation.Dog;
//import java.util.Queue;
//import java.util.Set;

public class CollectionExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		//Queue<E>
		//Set<E>
		//Collection<E>
		//Map<K, V>
		//TreeSet<E>
		//SortedSet<E>
		
		HashSet<Dog> hs = new HashSet<Dog>();
		Dog d = new Dog();
		d.setAge(2);
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
		
		Dog d3 = new Dog();
		d3.setAge(4);
		d3.setBreed("Golden Retriever");
		d3.setColor("Black");
		d3.setName("Mandy");
		
		d.setAge(5);
		d1.setAge(4);
		d2.setAge(3);
		

		boolean b = hs.add(d);  //adds to end of a set
		boolean b1 = hs.add(d1);
		boolean b2 = hs.add(d2);
		boolean b6 = hs.add(d3);
		System.out.println("Output of add() = "+ b +" "+ b1 +" "+b2);
		System.out.println(hs);
		System.out.println("Size of hs = " + hs.size());

		boolean b3 = hs.remove(d); //removes from beginning
		System.out.println("Output of remove() = "+b3);
		System.out.println(hs);
		
		boolean b4 = hs.contains(d);
		System.out.println("Ouput of contains() = "+b4);
		boolean b5 = hs.contains(d1);
		System.out.println("Ouput of contains() = "+b5);
		
		System.out.println("Size of hs = " + hs.size());
		
		hs.clear();
		System.out.println("Size of HashSet after clear() = "+hs.size());
	}

}
