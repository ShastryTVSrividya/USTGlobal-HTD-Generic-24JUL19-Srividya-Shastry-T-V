package com.dev.arrays;

public class CheckIndex {
	public static void main(String[] args) {
	
	int[] intArr = {1,2,3,4,5};
	
	int a=6;
	int b=3;
	
	for(int i=0;i<intArr.length;i++) {
		
		if(intArr[i]==a) {
			
			System.out.println("Index value is "+i);
			System.out.println("Index value is "+a);
			break;
		}
		else
		{
			System.out.println("Index value is not found");
			break;
		}
	}
	
	for(int i=0;i<intArr.length;i++) {       //if(b<intArr.length)
		
		if(i==b) {
			System.out.println("valid Index");
			for(int j=0;j<i;j++) {
				System.out.println("values are "+intArr[j]);
			}
			break;
		}
		else {
			System.out.println("Index value is not found");
			break;
		}
	}
	
	
	}
	

}
