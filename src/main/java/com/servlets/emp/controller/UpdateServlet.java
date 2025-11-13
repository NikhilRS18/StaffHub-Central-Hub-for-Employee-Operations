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

@WebServlet("/update")
public class UpdateServlet extends  HttpServlet{
     EmployeeDAO edao=null;
	public UpdateServlet() {
		edao=new EmployeeDAOImpl();
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
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
		 boolean isUpdated=edao.updateEmployee(employee);
		 if(isUpdated) {
			 resp.sendRedirect("view");

		 }

	}
}
