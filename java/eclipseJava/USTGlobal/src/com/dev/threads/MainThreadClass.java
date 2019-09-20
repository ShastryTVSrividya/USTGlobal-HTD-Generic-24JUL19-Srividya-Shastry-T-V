package com.dev.threads;

public class MainThreadClass {

	public static void main(String[] args) throws InterruptedException {
		
		System.out.println("Main thread started...");

		System.out.println("Main Thread prints the value of i");

		Thread2 t2= new Thread2();
		t2.setName("Thread T2");
		Thread.currentThread().setPriority(8);
		t2.setPriority(6);
		Thread t = new Thread(t2);
		//t2.start();
		t2.join();
		//new T2().start();
		
		
		Thread3 t3= new Thread3();
		Thread t1 = new Thread(t3);
		t1.setPriority(5);
		t1.start();
		//t1.join();
		//new Thread(new T3()).start();
		
		for(int i=1;i<=5;i++){
			System.out.println("i ="+ i);
		}
		
		Thread.currentThread().setName("Main Thread");
		
		
		System.out.println("Thread Name -> "+t2.getName());
		System.out.println("Thread Name -> "+Thread.currentThread().getName());
		
		System.out.println("Main Thread id ->"+Thread.currentThread().getId());
		System.out.println("Thread 2 id -> "+t2.getId());
		System.out.println("Thread 3 id -> "+t.getId());
		
		System.out.println("Main Thread Priority -> "+Thread.currentThread().getPriority());
		System.out.println("Thread 2 Priority -> "+t2.getPriority());
		System.out.println("Thread 3 Priority -> "+t1.getPriority());
		
		
		System.out.println("main thread terminated");
	}
}
