package com.dev.encapsulation;

public class StudentData {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
       Student s = new Student();
       s.setRegNo(81);
       s.setName("Meera");
       s.setEmail("meera@gmail.com");
       s.setPassword("vidya");
       
       
       System.out.println("Reg No = " + s.getRegNo() );
       System.out.println("Name = " + s.getName());
       System.out.println("Email = " + s.getEmail());
       
		
	}

}
