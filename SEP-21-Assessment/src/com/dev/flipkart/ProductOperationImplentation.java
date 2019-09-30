package com.dev.flipkart;

import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/*pImp.getProducts();
System.out.println("Choose the items you want to buy(select Id)");
int i = sc.nextInt();

System.out.println("Enter your card Number");
long cNumber= sc.nextLong();

System.out.println("Enter your cvv");
int cvv= sc.nextInt();

System.out.print("Enter your Address");
String cAddress= sc1.nextLine();

pImp.buyItem(i);*/
//

public class ProductOperationImplentation{

	Pattern pat = null;
	Matcher mat = null;

	static ProductInfo pi = new ProductInfo();
	
	HashMap<Integer, ProductInfo> hMap = new HashMap<Integer, ProductInfo>();

	public ProductInfo addProduct(int id,ProductInfo p) {
		if(p!=null) {
			ProductInfo pi = hMap.put(id, p);
			return pi;
		}else
			return null;
	}

	public void getProducts() {
		for(ProductInfo p : hMap.values()) {
			System.out.println("Product Id : "+ p.getProductId());
			System.out.println("Product Name : "+ p.getProductName());
			System.out.println("Product Cost : "+ p.getProductCost());
			System.out.println("Product Color : "+ p.getProductColor());
			System.out.println("Product Description : "+ p.getDescription());
			System.out.println("-------------------------------------------");
		}
	}

	public void showItems() {

		for(ProductInfo p : hMap.values()) {
			System.out.println("Items are : "+p.getProductName());
		}	
	}

	public boolean buyItem(int i) {
		for(ProductInfo p : hMap.values()) {
			if(hMap.containsKey(i)) {
			    System.out.println("Provide the details properly!");
			    return true;
			}
			else
				System.out.println("Product you choosed is not there");
			return false;
		}
		return false;

	}

	public boolean validAcc(String cNo) {

		pat = Pattern.compile("\\d{16}");
		mat = pat.matcher(cNo);
		if(mat.matches()) {
			return true;
		}
		return false;
	}

	public boolean validCvv(String cvv) {

		pat = Pattern.compile("\\d{3}");
		mat = pat.matcher(cvv);
		if(mat.matches()) {
			return true;
		}
		return false;
	}

	

}
