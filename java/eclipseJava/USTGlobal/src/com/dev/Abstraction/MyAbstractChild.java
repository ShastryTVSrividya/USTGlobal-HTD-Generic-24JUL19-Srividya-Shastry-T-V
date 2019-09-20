package com.dev.Abstraction;

public class MyAbstractChild extends MyAbstraction {
	
	@Override
	public void myFriend() {
		System.out.println("abc");
	}
	
	public static void main(String[] args) {
      
		MyAbstractChild ma = new MyAbstractChild();
		ma.myBestFriend();
		ma.myCloseFriend();
		
	}

}
