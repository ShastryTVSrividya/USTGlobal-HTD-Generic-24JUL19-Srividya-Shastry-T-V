package com.dev.strings;

public class StringMethods {

	public static void main(String[] args) {
		
		String str ="Jung_Kook";
		String str2 ="JUNG_kook";
		
		int l = str.length();
		System.out.println(l);
		
		char[] ch = str.toCharArray();
		System.out.println(ch[8]);
		
		char ch1 = str.charAt(7);
		System.out.println(ch1);
		
		char ch2 = str.charAt(6);  //print space for jung kook
		System.out.println(ch2);
		
		boolean res = str.equals(str2);
		System.out.println(res);
		
		boolean res2 = str.equalsIgnoreCase(str2);
		System.out.println(res2);
		
		boolean res3 = str.contains("Jun");
		System.out.println(res3);
		
		
		String res4 = str.replace('o','i');
		System.out.println(res4);
		
		int res5 = str.indexOf('o');
		System.out.println(res5);
		
		String res8 = str.toUpperCase();
		System.out.println(res8);
		
		String res9 = str.toLowerCase();
		System.out.println(res9);
		
		String res6 = str.substring(3);
		System.out.println(res6);
		
		String res7 = str.substring(3,7);
		System.out.println(res7);
		
		
		

	}

}
