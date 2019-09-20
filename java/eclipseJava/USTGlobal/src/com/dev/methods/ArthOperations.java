package com.dev.methods;

import java.util.List;
import java.util.Set;

import com.dev.constructor.MyConstructor;

public class ArthOperations extends MyConstructor {

	public int addition(int a,int b) {
		return a+b;
	}
	
	public int addition(int a,int b,int c) {
		return a+b+c;
	}
	
	public int addition(int a,int b,int c,int d) {
		return a+b+c;
	}
	
   public int sub(int a,int b) {
	   return a-b;
	}
   
   public int sub(int a,int b,int c) {
	   return a-b;
	}
   
   public float sub(float a,float b ,float c,float d) {
	   return a-b;
	}

    public int mul(int a,int b) {
    	return a*b;
   }
    
    public int mul(int a,int b,int c,int d) {
    	return a*b*c*d;
   }
    
    public float mul(float a,float b) {
    	return a*b;
   }

    public double div(double a,double b) {
    	double res = a/b;
	    return res;
   }
    
    public int div(int a,int b,int c) {
    	int res = a/b/c;
	    return res;
   }
    
    public float div(float a,float b) {
    	float res = a/b;
	    return res;
   }
    
    final public int j=9;
    
    //Set<E>
    //List<E>

	public static void main(String[] args) {
		
		MyConstructor m = new MyConstructor();
		m.print();
	
		ArthOperations ar = new ArthOperations();
		int add = ar.addition(1, 2);
		System.out.println(add  + " Addition Output with two arg");
		
		int add3 = ar.addition(1, 2, 3);
		System.out.println(add3 + " Addition Output with three arg");
		
		int add4 = ar.addition(1, 2, 3, 4);
		System.out.println(add4 + " Addition Output with four arg");
		
		int sub = ar.sub(5, 2);
		System.out.println(sub + " Subraction Output with two arg and type int");
		
		int sub3 = ar.sub(1, 2, 6);
		System.out.println(sub3 + " Subraction Output with three arg and type int");
		
		float sub4 = ar.sub(1f, 2f, 6f, 8f);
		System.out.println(sub4 + " Subraction Output with four arg and type float");
		
		int mul = ar.mul(1, 2);
		System.out.println(mul + " Multiplication Output with two arg and type int");
		
		int mul3 = ar.mul(1, 2, 6, 3);
		System.out.println(mul3 + " Multiplication Output with four arg and type int");
		
		float mul4 = ar.mul(1f, 2f);
		System.out.println(mul4 + " Multiplication Output with two arg and type float");
		
		float div = ar.div(1f, 2f);
		System.out.println(div + " Division Output with two arg and type float");
		
		int div2 = ar.div(8, 2, 3);
		System.out.println(div2 + " Division Output with three arg type int");
		
		double div3 = ar.div(1, 2);
		System.out.println(div3 + " Division Output with two arg and type double");

	}

}
