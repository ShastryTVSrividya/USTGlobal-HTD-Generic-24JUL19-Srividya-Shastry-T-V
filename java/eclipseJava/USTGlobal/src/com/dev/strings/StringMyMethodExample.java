package com.dev.strings;

public class StringMyMethodExample {

	public static void main(String[] args) {
		
		String str ="Jhansi Rani Laxmibai";
		String str2 ="jhansi rani laxmibai";
		
		int l = str.length();
		System.out.println(l);
		
		char[] ch = str.toCharArray();
		System.out.println(ch[5]);
		
		char ch1 = str.charAt(7);
		System.out.println(ch1);
		
		char ch2 = str.charAt(4);  
		System.out.println(ch2);
		
		boolean res = str.equals(str2);
		System.out.println(res);
		
		boolean res2 = str.equalsIgnoreCase(str2);
		System.out.println(res2);
		
		
	}

}
