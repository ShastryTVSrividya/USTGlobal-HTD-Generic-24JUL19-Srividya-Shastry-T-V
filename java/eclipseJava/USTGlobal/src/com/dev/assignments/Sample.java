package com.dev.assignments;

import java.io.IOException;
import java.util.Collection;


public class Sample {
	 static sumOfThree sm = new sumOfThree(4);
	 
	 
	 
	 static double  dis,amount,markedprice,sa;
	 
	 public Sample(int i) {
		 sm=new sumOfThree(i);
	 }
	
	static int x;
	
	public static void main(String[] args) {
		
//		sumOfThree sm = new sumOfThree();
//		sm.display();
		
		 Sample sam = new Sample(5);
		
		//int i = 0011;//it is taken as octal
		//int j = 0b0011;
		//System.out.println(j);
		//System.out.println(i);
		System.out.println("************");
		
		String s ="vi";
		String st = "vid";
		s=s.replace('i', 'o');
		System.out.println(st=s);
		
		for(int t=7; t>=6;) { 
			System.out.println("Hello"); 
			break;	
		}
		
		int sr=0;
		for(int i=1;i<=4;i++) {
			sr=i;
			for(int j=4;j>=i;j--) {
				System.out.print("*");
			}
			System.out.println();
		}
		
		String s1 = new String("hii");
		String s2 = new String("hii");
		if(s1.equals(s2)) {
			System.out.println("same");
		}else
			System.out.println("not same");
		
		System.out.println(s1.hashCode());
		System.out.println(s2.hashCode());
	
	   
        
		markedprice=1000;
	 
	        dis=25;  // 25 mean 25%			
		
		System.out.println("markedprice= "+markedprice);
	 
		System.out.println("discount rate="+dis);
	         
	        sa=100-dis;
	 
		amount= (sa*markedprice)/100;
	 
		System.out.println("amount after discount="+amount);
	 
}

}
