package com.dev.collections;




import java.util.HashMap;

import com.dev.encapsulation.Employee;

public class HashMapEmployee implements EmployeeMapInteface {
	
	HashMap<String, Employee> hm = new HashMap<String, Employee>();

	@Override
	public boolean addEmployee(String key, Employee e) {
		if(e!=null) {
			Employee em = hm.put(key, e);
			return true;
		}
		return false;
	}

	@Override
	public boolean removeEmployee(Employee e) {
		
		return false;
	}

	@Override
	public void getEmployee() {
		// TODO Auto-generated method stub
		
	}

	

	
	

}
