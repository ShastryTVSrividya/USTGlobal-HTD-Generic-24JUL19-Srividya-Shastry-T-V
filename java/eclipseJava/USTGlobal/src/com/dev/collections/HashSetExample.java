package com.dev.collections;

import java.util.HashSet;

import com.dev.encapsulation.Employee;

public class HashSetExample implements EmployeeInterface {

	HashSet<Employee> hm = new HashSet<Employee>();

	@Override
	public void getEmployee() {
		// TODO Auto-generated method stub
		System.out.println(hm);
	}

	@Override
	public boolean addEmployee(Employee e) {
			   return hm.add(e);
	}

	@Override
	public boolean removeEmployee(Employee e) {
		boolean b = hm.remove(e);
		if(b) {
			return true;
		}
		return false;
	}

	@Override
	public Employee updateEmployee(String key, Employee e) {
		// TODO Auto-generated method stub
		return null;
	}
	

}


