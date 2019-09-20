package com.dev.threads;

public class WithoutJoinThread {
	
	public static void main(String[] args) {
		System.out.println("Save Main Thread started...");

		WithoutSync ws = new WithoutSync();

		Thread4 t4= new Thread4(ws);
		t4.start();
		
		new Thread5(ws).start();

		System.out.println("save main thread ended..");
	}

}
