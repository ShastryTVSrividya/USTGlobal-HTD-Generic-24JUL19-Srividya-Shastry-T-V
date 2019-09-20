package com.dev.collections;

import java.util.HashMap;
import com.dev.encapsulation.Dog;

public class HashMapExample {

	public static void main(String[] args) {
		HashMap<String, Dog> hm = new HashMap<String, Dog>();
		
//		Object obj = null;
//		obj.toString(); 

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

		hm.put("1", d);//return type object - initially value will be null
		//Dog b = hm.put("1", d1); //when try to update previous object value executes
		Dog b = hm.put("1", d);
		hm.put("2", d1);
		hm.put("3", d2);
		
		System.out.println(hm);
		
		Dog f = hm.remove("2");
		System.out.println("Output of remove() = "+f);
		System.out.println(hm);
		
		System.out.println("*******");
		Dog i = hm.get("1");
		System.out.println(i);
		
		System.out.println("Output of containsKey() = "+ hm.containsKey("1"));
		System.out.println("Output of containsKey() = "+ hm.containsKey("2"));
		
		System.out.println("Output of containsValue() = "+ hm.containsValue(d2));
		
	}

}
