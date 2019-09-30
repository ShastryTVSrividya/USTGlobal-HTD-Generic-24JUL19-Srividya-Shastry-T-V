package com.dev.phoneSimulator;

public class Contact {

	private String name;
	private Long number;
	private String group;
	
	Contact(){}
	
	@Override
	public String toString() {
		return "Contact [name=" + name + ", number=" + number + ", group=" + group + "]";
	}

	Contact(String n,Long i,String g){
		this.name=n;
		this.number=i;
		this.group=g;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getNumber() {
		return number;
	}
	public void setNumber(Long number) {
		this.number = number;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
}
