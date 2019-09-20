package com.dev.assignments;

import java.util.Arrays;

public class reverseArray {

	public static void main(String[] args) {
		int arr[] = {10,20,30,40,50};
		for(int i=0;i<arr.length;i++) {
			System.out.println("Array[ " + i +" ] = " + arr[i]);
		}
		int n=arr.length;
		int[] arrB = new int[arr.length]; 
        int j = arr.length; 
        for (int i = 0; i < arr.length; i++) { 
            arrB[j - 1] = arr[i]; 
            j = j - 1; 
        } 
		for(int k=0;k<arrB.length;k++) {
			System.out.println("Reverse Array[ " + k +" ] = " + arrB[k]);
		}
		
		System.out.println("print reverse");
		for(int i=arr.length-1;i>=0;i--) {
			System.out.println("Array[ " + i +" ] = " + arr[i] );
		}
		
		int my_array1[] = {10,20,30,40,50,60};

		for(int i = 0; i < my_array1.length / 2; i++)
		  {
		    int temp = my_array1[i];
		    my_array1[i] = my_array1[my_array1.length - i - 1];
		    my_array1[my_array1.length - i - 1] = temp;
		    System.out.println("Reverse array : "+my_array1[i]);
		  }
		    System.out.println("Reverse array : "+Arrays.toString(my_array1));
		 }
	}


