package com.dev.threads;

public class WithoutSync {
public void printVal(int i,String thread) {
		
		for(int j=0;j<=i;j++) {
			System.out.println("Thread -> "+thread + " j -> "+j);
		}
     }
}
