package com.dev.collections;

import com.dev.encapsulation.Employee;

public interface EmployeeInterface {

	void getEmployee();
	boolean addEmployee(Employee e);
	boolean removeEmployee(Employee e);
	Employee updateEmployee(String key,Employee e);
}
