package com.dev.phoneSimulator;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;



public class ContactImplimentation {
	
	static Contact co = new Contact();
	
	static Scanner sc = new Scanner(System.in);
	static Scanner sc1 = new Scanner(System.in);
	
	static ContactDisplay cd = new ContactDisplay();
	
	ArrayList<Contact> aList = new ArrayList<Contact>();
	
	static HashMap<String, Contact> hMap= new HashMap<String, Contact>();
	
	public static Contact addToContacts(String id,Contact c) {
		if(c!=null) {
			Contact co = hMap.put(id, c);
			return co;
		}else
			return null;
	}
	
	public static void showContacts() {
		
		System.out.println("Contacts are:");
		for(Contact c : hMap.values()) {
			System.out.println(c.getName());
		}	
	}
	
	public static void searchCon(String name) {
		
		for(Contact c:hMap.values()) {
			if(name.equals(c.getName())) {
				contactInfo(name);
			}
		    else
			System.out.println("enter valid name");
		}
	}
	
	public static void callContact() {
		System.out.println("calling the contact");
		System.out.println("Type end to end the call");
		String res = sc.next();
		if(res=="end") {
		System.out.println("Call Ended");
		}
	}
	
	public static void sendMessage() {
		System.out.println("Enter the message");
		String s = sc.nextLine();
		System.out.println("Sending the message");
	}
	
	public static void removeContact(String name) {
		Contact c = hMap.get(name);
		System.out.println(c);
		hMap.remove(name);
		System.out.println("Removed successfully");
	}
	
	public static void updateContact(String name) {
		for(Contact c:hMap.values()) {
			if(name.equals(c.getName())) {
				Scanner sc = new Scanner(System.in);
				Scanner sc1 = new Scanner(System.in);
				System.out.println("Enter your name");
				String s = sc.nextLine();
				System.out.println("Enter your contact no");
				Long sCo = sc.nextLong();
				System.out.println("Enter your group");
				String g = sc1.nextLine();
		        Contact c1 = new Contact(s,sCo,g);
				addToContacts(c.getName(),c1);
				cd.operateOnContact();
			}
		}
	}
	public static void contactInfo(String value) {
		
		for(Contact c:hMap.values()) {
			if(c.getName()==value) {
				System.out.println("Your name: "+c.getNumber());
				System.out.println("Your contact: "+c.getNumber());
				System.out.println("Group: "+c.getGroup());
				System.out.println("enter 1 to call,2 to get message and 3 to exit");
				int choice = sc.nextInt();
				switch(choice) {
				case 1:callContact();
				       break;
				case 2:sendMessage();
				       break;
				case 3: cd.operations();
				       break;
				default: System.out.println("enter valid choice");
				}
			}
		}
	}
	
	

}
