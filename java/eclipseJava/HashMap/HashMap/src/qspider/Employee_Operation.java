package qspider;
import java.util.*;
import qspider.Employee;

public class Employee_Operation implements Employee_interface{
    HashMap<Integer,Employee> h=new HashMap<>();
    Employee e=new Employee(28,"Omkar","omkar.patil@gmail.com","123",1000000);
    Employee e1=new Employee(29,"Shubham","shubham.patil007@gmail.com","1234",860000);
    Employee e2=new Employee(30,"Vaishnavi","vaishnavik428@gmail.com","123",540000);
    Employee e3=new Employee(31,"Rakshanda","rakshp@gmail.com","122",380000);
    Employee e4=new Employee(32,"Divya","divdkamble@gmail.com","111",320000);
    Employee e5=new Employee(13,"Sagar","sagar26@gmail.com","1441",300000);

   // String [] grade= new String[]{"AA","A","B","C","D"};
    double[] tax=new double[] {9.35,8.87,8.19,7.34,5.4};
    int[] PF=new int[] {5619,4876,4321,9765,3189};
    ArrayList<String> grade = new ArrayList<String>( Arrays.asList("AA","A","B","C","D") );    
    public void insert() {
    	h.put(e.getEmpid(), e);
    	h.put(e1.getEmpid(), e1);
    	h.put(e2.getEmpid(), e2);
    	h.put(e3.getEmpid(), e3);
    	h.put(e4.getEmpid(), e4);
    	h.put(e5.getEmpid(), e5);

    	
    }
    public void search(int empid) {
    	System.out.println("Employee details:--");
    	System.out.println("----------------------------------------------");
    	System.out.println(h.get(empid).toString());
    }
    public void display() {
    	//System.out.println(h);
    	for(Employee e:h.values()) {
    		System.out.println("-----------------------");
    		System.out.println("id:" +e.getEmpid());
    		System.out.println("Name:"+e.getEname());
    		System.out.println("Email:"+e.getEmail());
    		System.out.println("Salary:"+e.getSalary());
    	}
    }
    public String find(int empid) {
    	String grade="";
    	for(Employee e:h.values()) {
    		if(e.getEmpid()==empid) {
    		    grade=calculate(e.getSalary());
    			break;
    		}
    	}
    	return grade;
    }
         public String calculate(int salary) {
             System.out.println("salary:-"+salary);
             if(salary==1000000)
            	 return "AA";
             else if(salary>=860000 && salary<=1000000)
            	 return "A";
             else if(salary>=540000 && salary<=860000)
            	 return "B";
             else if(salary>=380000 && salary<=540000)
            	 return "C";
             else
            	 return "D";
    	}
    	public void remove(int empid) {
    		System.out.println(h.remove(empid));
    	}
    	public void update(int empid) {
    		Employee c=h.get(empid);
    		c.setEmail("abc3@google.com");
    		h.put(empid,c);  		
    		
    	}
        public void calltotaltax(int empid) {
        	Employee c=h.get(empid);
        	int salary=c.getSalary();
        	String grade1=calculate(salary);  	
        	int index=grade.indexOf(grade1);
        	double taxrate=tax[index];
        	System.out.println(taxrate);
        	double totaltax=(salary*taxrate)/100;
        	int pf=PF[index];
        	double netpay=salary-(totaltax+pf);
        	System.out.println("Total tax of employee id "+empid+ " is "+totaltax);
        	System.out.println("Netpay of employee id "+empid+ " is "+netpay);

        	
        	
        }
        public void netpay() {
        	
        }
    
	
	
	
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Employee_Operation o=new Employee_Operation();
		o.insert();
		Scanner sc=new Scanner(System.in);
		System.out.println("Emplyoee details:-");
		o.display();
		System.out.println("------------------------------------------------");
		System.out.println("Enter emp id to search details:-");
		int empid=sc.nextInt();
		o.search(empid);
		System.out.println("------------------------------------------------");

		System.out.println("Enter emp id to remove data:");
		empid=sc.nextInt();
		o.remove(empid);
		System.out.println("------------------------------------------------");

		System.out.println("After removing data:-");
		o.display();
		System.out.println("------------------------------------------------");

		System.out.println("Update:-");
		System.out.println("Enter emp id to update email:");
		empid=sc.nextInt();
		o.update(empid);
		System.out.println("------------------------------------------------");

		System.out.println("After updating data:-");
		o.display();
		System.out.println("------------------------------------------------");
        System.out.println("Enter empid to retrieve grade:-");
		empid=sc.nextInt();
		String grade=o.find(empid);
        System.out.println("Grade:-"+grade);
		System.out.println("------------------------------------------------");

        System.out.println("Enter empid to calculate tax:-");
		empid=sc.nextInt();
        o.calltotaltax(empid);		

	}

}
