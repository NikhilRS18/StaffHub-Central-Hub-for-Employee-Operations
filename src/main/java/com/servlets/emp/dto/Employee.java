package com.servlets.emp.dto;

public class Employee {
	private int  empID;
	private String ename;
	private String dept;
	private double salary;
	private  long phone;
	private String  email;
	private String  password;

	public int getEmpID() {
		return empID;
	}

	public void setEmpID(int empID) {
		this.empID = empID;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
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

	public Employee(int empID, String ename, String dept, double salary, long phone, String email, String password) {
		super();
		this.empID = empID;
		this.ename = ename;
		this.dept = dept;
		this.salary = salary;
		this.phone = phone;
		this.email = email;
		this.password = password;
	}
	public Employee() {

	}





}
