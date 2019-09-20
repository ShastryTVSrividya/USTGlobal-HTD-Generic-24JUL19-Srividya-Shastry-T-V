package com.dev.objectmethods;

public class DogData {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Dog d1 = new Dog();
		Dog d2 = new Dog();
		Dog d3 = new Dog();
		Dog d4 = new Dog();
		
		d1.setAge(5);
		d1.setBreed("German Shepherd");
		d1.setColor("Black");
		d1.setName("Bruno");
		
		d4.setAge(5);
		d4.setBreed("German Shepherd");
		d4.setColor("Black");
		d4.setName("Bruno");
		
		d2.setAge(2);
		d2.setBreed("Labrador");
		d2.setColor("Light Brown");
		d2.setName("Matty");
		
		d3.setAge(1);
		d3.setBreed("Golden Retriever");
		d3.setColor("Brown");
		d3.setName("katty");
		
		Dog [] dogs = {d1,d2,d3};
		
		for(int i=0;i<dogs.length;i++) {
			/*System.out.println("Age = " + dogs[i].getAge());
			System.out.println("Name = " + dogs[i].getName());
			System.out.println("Color = " +dogs[i].getColor());
			System.out.println("Breed = "+dogs[i].getBreed());*/
			
			System.out.println(dogs[i]);
			System.out.println("*************************");
		}
		
		System.out.println(d1.equals(d4));
		

	}

}
