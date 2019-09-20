package com.dev.strings;

public class CreatingStrings {

	public static void main(String[] args) {
		
		String str;
		str= "JK";
		String s =" JK";
		str =s ;
		System.out.println(str.hashCode());
		System.out.println(s.hashCode());
		
		String str1= "BTS";
		System.out.println(str1);
		
		String str2 = new String ("JK BTS");
		System.out.println(str2);
		
		StringBuffer sb = new StringBuffer("hello");
		//sb="hi";
		StringBuffer sb1 = new StringBuffer("hello");
		
		System.out.println(sb.hashCode());
		System.out.println(sb1.hashCode());
		
		StringBuilder sbi = new StringBuilder("hello");
		//sbi = "hi";
		StringBuilder sbi2 = new StringBuilder("hi");
		
		System.out.println(sbi.hashCode());
		System.out.println(sbi2.hashCode());
		
	
		
		//StringBuffer sb2 = new StringBuffer(-1);
		
		System.out.println(sb.length());
		System.out.println(sb.capacity());
	}

}
