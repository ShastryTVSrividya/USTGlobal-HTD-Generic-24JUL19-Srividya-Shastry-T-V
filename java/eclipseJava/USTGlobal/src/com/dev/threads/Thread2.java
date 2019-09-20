package com.dev.threads;

public class Thread2 extends Thread {

	@Override
	public void run() {
       System.out.println("T2 main thread started...");
       
   	System.out.println("Thread 2 prints the value of j");
       
		for(int i=1;i<=5;i++){
			System.out.println("j = "+i);
		}
		
		
		System.out.println("T2 main thread terminated");
	}
}
