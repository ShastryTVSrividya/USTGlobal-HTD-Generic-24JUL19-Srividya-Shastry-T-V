package com.dev.flipkart;

import java.util.HashMap;
import java.util.Scanner;
import java.util.regex.Pattern;

public class ProductDisplayAndBuy extends ProductOperationImplentation {
	
	static Scanner sc = new Scanner(System.in);
	static Scanner sc1 = new Scanner(System.in);
	
	public static boolean validCvv;
	public static boolean validCNumber;
	public static boolean res;
	public static String cAddress;
	
	static ProductOperationImplentation pImp = new ProductOperationImplentation();
	
	
	public static void getAddress() {
		System.out.println("Enter your Address");
		 cAddress= sc1.nextLine();
	}
	
	public static void getCvv() {
		System.out.println("Enter your cvv");
		String cvv= sc.next();
		validCvv = pImp.validCvv(cvv);
		if(validCvv==true) {
			getAddress();
		}else {
			System.out.println("enter 3 digit acc number");
			getCvv();
		}
	}
	
	public static void getCNumber() {
		System.out.println("Enter your card Number");
		String cNumber= sc.next();
		boolean validCNumber = pImp.validAcc(cNumber);
		if(validCNumber==true) {
			getCvv();
		}else {
			System.out.println("enter 16 digit acc number");
			getCNumber();
		}
	}
	
	public static void getBuyingDetails() {
		pImp.getProducts();
		System.out.println("Choose the item you want to buy(select Id)");
		int i = sc.nextInt();
		boolean res = pImp.buyItem(i);
		if(res==true) {
		getCNumber();
		}
		getResultStatus();
	}

	public static void getResultStatus() {
		if(validCNumber==true && validCvv==true && cAddress!=null) {
	      	  System.out.println("product is not available");
		      }else
		    	  System.out.println("very soon your product will be deliverd to your given address");
	}
	public static void main(String[] args) {
		
		ProductInfo p1 = new ProductInfo(1,"Slazenger Ball Can",800,"Green","Contains three balls in a can");
		ProductInfo p2 = new ProductInfo(2,"Ball Badminton Can",500,"yellow","Contains six cocks in a can");
		
		pImp.addProduct(p1.getProductId(), p1);
		pImp.addProduct(p2.getProductId(), p2);
		
		System.out.println("Press 1 to view Products and 2 to buy product");
		int item = sc.nextInt();
		
		
		switch(item) {
		
		case  1 : pImp.showItems();
		          break;
		 
		case 2  : getBuyingDetails();
		          break;
		default : System.out.println("Enter valid Number(either 1 or 2");
		
		}
	}

}
