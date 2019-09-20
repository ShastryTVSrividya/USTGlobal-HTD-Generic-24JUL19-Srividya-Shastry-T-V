package qspider;

public class Employee {
	private int empid;
	private String ename;
	private String email;
	private String password;
	private int salary;
	Employee(){}
	Employee(int empid,String ename,String email,String password,int salary){
		this.empid=empid;
		this.ename=ename;
		this.email=email;
		this.password=password;
		this.salary=salary;
	}
	public int getEmpid() {
		return empid;
	}
	public void setEmpid(int empid) {
		this.empid = empid;
	}
	@Override
	public String toString() {
		return "Employee [empid=" + empid + ", ename=" + ename + ", email=" + email + ", password=" + password
				+ ", salary=" + salary + "]";
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	

}
