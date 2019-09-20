package com.dev.encapsulation;

public class PetsDetail {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Pets p1 = new Pets();
		Pets p2 = new Pets();
		
		p1.setCatName("Belli");
		p1.setDogName("Bruno");
		p1.setParrotName("Raja");
		p1.setRabbitName("Golu");
		p1.setTigerName("Simba");
		p1.setTourtiseName("lenny");
		
		p2.setCatName("Panda");
		p2.setDogName("Venus");
		p2.setParrotName("Rani");
		p2.setRabbitName("Molu");
		p2.setTigerName("Singa");
		p2.setTourtiseName("Mendy");
		
		
		Pets [] pet = {p1,p2};
		
		for(int i=0;i<pet.length;i++) {
		System.out.println("Cat Name = "+pet[i].getCatName());
		System.out.println("Dog Name = "+pet[i].getDogName());
		System.out.println("Parrot Name = "+pet[i].getParrotName());
		System.out.println("Rabbit Name = "+pet[i].getRabbitName());
		System.out.println("Tiger Name = "+pet[i].getTigerName());
		System.out.println("Tourtise Name = "+pet[i].getTourtiseName());
		System.out.println("*******************************");
		
		}

	}

}
