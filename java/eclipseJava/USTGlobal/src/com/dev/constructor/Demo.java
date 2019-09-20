package com.dev.constructor;

import com.dev.methods.MethodExample;

import static_non_static.static_non_static;

public class Demo {

	public static void main(String[] args) {
		int i = MethodExample.calcArea(3);
		System.out.println(i);
		int j = static_non_static.calcArea(3);
		System.out.println(static_non_static.area);
		
	}

}
