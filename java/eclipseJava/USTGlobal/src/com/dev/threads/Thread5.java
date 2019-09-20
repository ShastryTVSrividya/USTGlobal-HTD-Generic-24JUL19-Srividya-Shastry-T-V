package com.dev.threads;

public class Thread5 extends Thread {

	Printer p;
	WithoutSync wp;

	public Thread5(Printer pref) {
		p=pref;
	}
	
	public Thread5(WithoutSync prefW) {
		wp=prefW;
	}

	@Override
	public void run() {
		p.printVal(10, "Thread 5");
		//wp.printVal(10, "Thread 5");
	}

}