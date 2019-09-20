package com.dev.assignments;

public class PrintNumbers {
	
	public static int res=0;
	
	public static int sum(int n) {
		if(n<=1) {
			return 1;
		}
		else {
		return n+sum(n-1);
		
		}
	}
	
	public static void main(String[] args) {
		
		int res = sum(5);
		System.out.println(res);
	}

}
