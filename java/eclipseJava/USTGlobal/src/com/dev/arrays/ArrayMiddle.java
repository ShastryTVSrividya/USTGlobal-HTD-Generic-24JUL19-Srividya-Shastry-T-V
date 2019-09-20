package com.dev.arrays;

public class ArrayMiddle {
	
	public static void main(String[] args) {
		int[] midArray = {1,2,3,4,5,6,7};
		int firstIndex=0;
		int lastIndex=midArray.length-1;
		int secLastIndex=midArray.length-2;
		int midValue = firstIndex+lastIndex/2;
		 System.out.println(midArray[midValue]);
	}

}
