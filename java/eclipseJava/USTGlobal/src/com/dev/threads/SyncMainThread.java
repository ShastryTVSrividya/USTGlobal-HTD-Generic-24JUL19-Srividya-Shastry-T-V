package com.dev.threads;

public class SyncMainThread {

	public static void main(String[] args) throws InterruptedException {
		System.out.println("Save Main Thread started...");

		Printer p = new Printer();

		Thread4 t4= new Thread4(p);
		//t4.start();
		//t4.join();
		
		t4.run();
		
		new Thread5(p).start();

		System.out.println("save main thread ended..");
	}

}
