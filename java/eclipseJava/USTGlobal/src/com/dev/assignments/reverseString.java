package com.dev.assignments;

public class reverseString {

	public static void main(String[] args) {
		StringBuffer s = new StringBuffer("hello");
		System.out.println(s.reverse());
		
		String str = "Srividya";
		System.out.println("String before reverse = "+str);
		
		String reverse = "";
		for(int i=str.length()-1;i>=0;i--) {
			reverse = reverse + str.charAt(i);
		}
		System.out.println("String after reverse = "+ reverse);
	}

}
                                             