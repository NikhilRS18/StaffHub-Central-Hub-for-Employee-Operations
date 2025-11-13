package com.servlets.emp.dao;

import java.util.List;

import com.servlets.emp.dto.Employee;



public interface EmployeeDAO {
	boolean registerEmployee(Employee emp);
	Employee LoginEmployee(String email,String password);
	List<Employee> getAllEmployee();
	boolean deleteEmployee(int eid);
	Employee findEmployeeById(int eid);
	boolean updateEmployee(Employee emp);

}
