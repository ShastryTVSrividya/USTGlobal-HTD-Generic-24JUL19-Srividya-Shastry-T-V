package com.dev.Employee;

import java.util.HashMap;

public class EmployeeImplementation implements EmployeeInterface {

	HashMap<String, Employee> hm = new HashMap<String, Employee>();
	
	
	@Override
	public void getEmployee() {
		System.out.println(hm);
	}

	@Override
	public Employee addEmployee(String s,Employee e) {
		if(e!=null) {
			Employee emp = hm.put(s,e);
			return emp;
	      }
		return null;
	}

	@Override
	public Employee removeEmployee(String id) {
		return hm.remove(id);
	}

	@Override
	public Employee updateEmployee(String id,Employee e) {
		return hm.put(id, e);
	}

	@Override
	public double netPayOfEmployee(Employee e) {
		
		return 0;
	}

	@Override
	public void  salaryGrade(Employee e) {
		double s=e.getSalary();
		if(s>1000000) {
			System.out.println("SalGrade = AA");
		}
		else if(s>=860000 && s<1000000) {
			System.out.println("SalGrade = A");
		}
		else if(s>=540000 && s<860000) {
			System.out.println("SalGrade = B");
		}
		else if(s>=380000 && s<540000) {
			System.out.println("SalGrade = C");
		}
		else if(s>=160000 && s<380000) {
			System.out.println("SalGrade = D");
		}
		else
			System.out.println("Salary grade is calculated between 10LPA and 10LPA");
		   
	}

	@Override
	public void searchEmployee(String i) {
		boolean emp = hm.containsKey(i);
		if(emp==true) {
			 System.out.println( hm.get(i));
		}else
		System.out.println("Enter valid emp id");
	}

}
