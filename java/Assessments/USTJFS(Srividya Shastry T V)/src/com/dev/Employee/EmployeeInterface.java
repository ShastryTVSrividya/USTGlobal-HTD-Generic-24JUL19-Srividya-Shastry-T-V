package com.dev.Employee;

public interface EmployeeInterface {
	
	void getEmployee();
	Employee addEmployee(String s,Employee e);
	Employee removeEmployee(String id);
	Employee updateEmployee(String id,Employee e);
	double netPayOfEmployee(Employee e);
     void salaryGrade(Employee e);
	void searchEmployee(String i);

}
