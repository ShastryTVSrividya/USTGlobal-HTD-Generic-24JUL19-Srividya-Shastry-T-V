package com.dev.lambdaexp;

public class MyTest {

	public static void main(String[] args) {
		myFuncInt mf =() -> {
			System.out.println("Marble");
		};
		mf.nailArtStyle();

	  myFuncInt mf1 = () -> {
		  try {
			  int i = 10/0;
			  System.out.println(i);
		  }catch(Exception e) {
			  System.out.println("Exception caught");
		  }
	  };
	  mf1.nailArtStyle();
	  
	  myFuncInt mf2 = () -> System.out.println("Sponge");
	  mf2.nailArtStyle();
	}
}
