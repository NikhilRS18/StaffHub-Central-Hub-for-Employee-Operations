package com.servlets.emp.controller;

import java.io.IOException;

import com.servlets.emp.dao.EmployeeDAO;
import com.servlets.emp.dao.EmployeeDAOImpl;
import com.servlets.emp.dto.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class RegisterServlet  extends HttpServlet{
	EmployeeDAO edao=null ;
	public RegisterServlet() {
		edao=new EmployeeDAOImpl();

	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//.out.println(req.getParameter("empId"));
		int  empId=Integer.parseInt(req.getParameter("empID"));
		String ename=req.getParameter("empName");
		String dept=req.getParameter("department");
		Double salary=Double.parseDouble(req.getParameter("salary"));
		long phone=Long.parseLong(req.getParameter("phone"));
		String email=req.getParameter("email");
		String password=req.getParameter("pass");

		//System.out.println(ename+" "+empId+" "+dept+" "+salary+" "+phone+" "+email+" "+password);

		Employee employee=new Employee(empId, ename, dept, salary, phone, email, password);
		//EmployeeDAO edao=new  EmployeeDAOImpl();
		 boolean isRegistered=edao.registerEmployee(employee);
		if(isRegistered) {
			 req.getRequestDispatcher("Login.jsp").forward(req,resp);
		}else {
			

		}
	}

}
