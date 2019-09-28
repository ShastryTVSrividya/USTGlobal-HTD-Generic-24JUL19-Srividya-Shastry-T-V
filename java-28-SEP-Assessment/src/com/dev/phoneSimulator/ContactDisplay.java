package com.dev.phoneSimulator;

import java.util.Scanner;

public class ContactDisplay extends ContactImplimentation {
	
	static Scanner sc = new Scanner(System.in);
	
public static void searchContact() {
		
		System.out.println("enter the name");
		String n = sc1.nextLine();
		searchCon(n);
	}
	
	public static void operations() {

		System.out.println("Enter 1 to view conacts,2 to search contact and 3 to operate on it");
		int choice = sc.nextInt();
		
		switch(choice) {
		case 1: showContacts();
		        break;
		case 2: searchContact();
		        break;
		case 3: operateOnContact();
		       break;
		 default: System.out.println("enter valid choice");
		}
	}
	
	public static void addContact() {
		
		Scanner sc1 = new Scanner(System.in);
		Scanner sc2 = new Scanner(System.in);
		System.out.println("Enter your name");
		String s = sc1.nextLine();
		System.out.println("Enter your contact no");
		Long sCo = sc1.nextLong();
		System.out.println("Enter your group");
		String g = sc2.nextLine();
        Contact c = new Contact(s,sCo,g);
		addToContacts(c.getName(),c);
		operateOnContact();
	}
	
	public static void deleteContact() {
		Scanner sc = new Scanner(System.in);
		System.out.println("enter the contact name to delete");
		String name = sc.nextLine();
		removeContact(name);
	}
	
	public static void editContact() {
		Scanner sc = new Scanner(System.in);
		System.out.println("enter the contact name to edit");
		String name = sc.nextLine();
		updateContact(name);
	}

	public static void operateOnContact() {
		System.out.println("Press 1 to add contact,press 2 to delete,3 to edit contact");
		int choice = sc.nextInt();
		switch(choice) {
		case 1:addContact();
			   break;
		case 2:deleteContact();
			   break;
		case 3:editContact();
			   break;
		default:System.out.println("enter valid choice");
		}
	}
	public static void main(String[] args) {
		
		
		
		Contact c = new Contact("sri",9845236202l,"Family");
		Contact c1 = new Contact("vibha",98452727l,"Friends");
		
		addToContacts(c.getName(),c);
		addToContacts(c1.getName(),c1);
		
		operations();
		

	}

}
