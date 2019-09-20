package com.dev.threads;

public class Thread3 implements Runnable{

	@Override
	public void run() {
		// TODO Auto-generated method stub
		System.out.println("T3 main thread started...");

	 	System.out.println("Thread 3 prints the value of k");
	       
		for(int i=1;i<=5;i++){
			System.out.println("k = "+i);
		}
		
		
		System.out.println("T3 main thread terminated");
	}


}
