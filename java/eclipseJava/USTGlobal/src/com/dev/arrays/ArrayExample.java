package com.dev.arrays;

public class ArrayExample { 
	public static void main(String[] args) {

		int []intArr;                  //declaration
		char[] charArr=new char[5];    //declaration //creation  //initialization
		byte byteArr[];

		intArr=new int[5];             //creation
		byteArr=new byte[4];

		intArr[0]=22;
		intArr[1]=20;
		intArr[2]=17;
		intArr[3]=1;
		intArr[4]=10;

		charArr[0]='v';                //initialization
		charArr[1]='s';
		charArr[2]='o';
		charArr[3]='m';
		charArr[4]='s';

		byteArr[0]=10;
		byteArr[1]=50;
		byteArr[2]=20;
		byteArr[3]=30;
		
		int[] intArr2 = {10,20,30,40,50};
		System.out.println(intArr2[4]);
		System.out.println("Length = "+intArr.length);

		int res = intArr[0] * 3;
		System.out.println(res);

		res = intArr[1] - 3;
		System.out.println(res);

		res = intArr[2] + 3;
		System.out.println(res);

		res = intArr[3] / 3;
		System.out.println(res);

		res = intArr[4] % 3;
		System.out.println(res);
	}

}
