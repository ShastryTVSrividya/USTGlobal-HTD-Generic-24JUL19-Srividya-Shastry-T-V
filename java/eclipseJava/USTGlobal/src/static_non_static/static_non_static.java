package static_non_static;



public class static_non_static {

	int a=0;
	public static int area=0;
	
	static static_non_static sm = new static_non_static();
	public static void main(String[] args) {
		
		static_non_static sm = new static_non_static();

		sm.a=calcArea(4);
		System.out.println(sm.a+" is the area of square");
		
		int areaR = sm.areaRec(4,2);
		System.out.println(areaR+" is the area of rectangle");

	}
	public static int calcArea(int side){
		// static int i=10; static variable declaration inside static method is not allowed
		area=side*side;
		int n= sm.areaRec(2,3);
		return area;
	}
	
	public  int areaRec(int l,int b){
		area=l*b;
		return area;
	}

}

