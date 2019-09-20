package com.dev.collections;


import java.util.HashMap;
import java.util.HashSet;

import com.dev.encapsulation.Employee;;

public class EmployeeExample extends HashSetExample{

	public static void main(String[] args) {
		//HashMap<String,Employee> hsEmp = new HashMap<String,Employee>();
		HashSetExample he = new HashSetExample();
	
	
		Employee e = new Employee();
		e.setId(1);
		e.setName("Sri");
		e.setEmail("sri@gmail.com");
		e.setPassword("sri@123");

		Employee e1 = new Employee();
		e1.setId(2);
		e1.setName("Vibha");
		e1.setEmail("vibha@gmail.com");
		e1.setPassword("vibha@123");

		e.setEmail("vidya@gmail.com");
		e1.setEmail("warrior@gmail.com");

		e.setId(1);
		e1.setId(3);
		
		
		he.addEmployee(e);
		he.addEmployee(e1);
		
		
		
		he.getEmployee();
		he.removeEmployee(e1);
		

//		boolean b = hsEmp.add(e);
//		boolean b2 = hsEmp.add(e1);
//		System.out.println("Employee Details = "+hsEmp);
//		
////		boolean b3 = hsEmp.remove(e); //removes from beginning
////		System.out.println("Output of remove() = "+b3);
////		System.out.println(hsEmp);
////		
//		boolean b4 = hsEmp.contains(e);
//		System.out.println("Ouput of contains() = "+b4);
	}
}
