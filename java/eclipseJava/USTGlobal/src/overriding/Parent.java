package overriding;

public class Parent{

	static Parent p = new Parent();
	
	
	public void printRaga() {
		System.out.println("Nata");
	}
	
	public static void printVarna() {
		System.out.println("Chalame");
	}
	
	final void printTaala() {
		System.out.println("Aadi");
	}
	public static void main(String[] args) {
		
		p.printRaga();

	}

}
