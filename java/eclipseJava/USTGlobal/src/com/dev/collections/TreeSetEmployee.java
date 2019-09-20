package com.dev.collections;

import java.util.TreeSet;

import com.dev.encapsulation.Employee;

public class TreeSetEmployee {

	public static void main(String[] args) {
		TreeSet<Employee> ts = new TreeSet<Employee>();
		
		Employee e = new Employee();
		e.setId(5);
		e.setName("Sri");
		e.setEmail("sri@gmail.com");
		e.setPassword("sri@123");

		Employee e1 = new Employee();
		e1.setId(2);
		e1.setName("Vibha");
		e1.setEmail("vibha@gmail.com");
		e1.setPassword("vibha@123");

		ts.add(e);
		ts.add(e1);
		
		System.out.println(ts);
		
		  TreeSet<String> set=new TreeSet<String>();  
	         set.add("A");  
	         set.add("B");  
	         set.add("C");  
	         set.add("D");  
	         set.add("E");  
	         System.out.println("Initial Set: "+set); 


	}

}
