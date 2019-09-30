package com.dev.flipkart;

public class ProductInfo {
	
	private int productId;
	private String productName;
	private double productCost;
	private String productColor;
	private String description;
	
	ProductInfo(){}
	
	ProductInfo(int id,String pName,double pCost,String pColor,String des){
		this.productId = id;
		this.productName = pName;
		this.productCost = pCost;
		this.productColor = pColor;
		this.description = des;
	}
	
	@Override
	public String toString() {
		return "ProductInfo [productName=" + productName + ", productCost=" + productCost + ", productColor="
				+ productColor + ", description=" + description + "]";
	}

	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getProductCost() {
		return productCost;
	}
	public void setProductCost(double productCost) {
		this.productCost = productCost;
	}
	public String getProductColor() {
		return productColor;
	}
	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}

}
