package com.dev.threads;

public class Thread4 extends Thread{

	Printer p;
	WithoutSync wp;
	
	public Thread4(Printer pref) {
		p=pref;
	}
	
	public Thread4(WithoutSync prefW) {
		wp=prefW;
	}
	
	@Override
	public void run() {
		try {
		Thread.currentThread().sleep(5000);
		}catch(Exception e) {
			System.out.println("Exception caught");
		}p.printVal(10, "Thread 4");
		//wp.printVal(10, "Thread 4");
	}

}
