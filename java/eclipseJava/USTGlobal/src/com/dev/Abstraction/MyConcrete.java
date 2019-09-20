package com.dev.Abstraction;

public class MyConcrete extends MyAbstract {
	
//	@Override
//	public void myCloseFriend() {
//		System.out.println("My close friend is Priya");
//	}
	
	@Override
	void myBestFriend() {
		// TODO Auto-generated method stub	
	}
	
	@Override
	void myFriend() {
		// TODO Auto-generated method stub
		
	}
	
	public static void main(String[] args) {

		MyConcrete m = new MyConcrete();
		m.myCloseFriend();
	}



}
