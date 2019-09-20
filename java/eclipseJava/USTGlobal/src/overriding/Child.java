package overriding;

public class Child extends Parent {

	static Parent p = new Parent();

	@Override
	public void printRaga() {
		System.out.println("Naata");
		super.printRaga();
	}
	
	// @Override               cannot override static method
	public static void printVarna() {
		System.out.println("Chalame");
		//super.printVarna();  error since printVarna() static
	}
	
	// @Override                        cannot override final method
	final void printTaal() {          //final method in child and parent cannot be same
		System.out.println("Aadi");
		super.printTaala();           
	}
	public static void main(String[] args) {

		Child c = new Child();
		c.printRaga();	

	}

}
