package com.dev.assignments;

import java.io.IOException;

public class sumOfThree {

	public sumOfThree(int i)
	{
	System.out.println("hello" + i);	
	}	
	public static void main(String[] args) {
		int arr[] = {1,2,3,4,5,6,7};
		int first = arr[0];
		int secLast = arr[arr.length -2];
		int mid = arr[arr.length/2];
		//System.out.println(mid);
		int res = first + secLast + mid;
		System.out.println(res);
	}

}
