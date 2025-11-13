package com.servlets.emp.controller;

import java.io.IOException;
import java.util.List;

import com.servlets.emp.dao.EmployeeDAO;
import com.servlets.emp.dao.EmployeeDAOImpl;
import com.servlets.emp.dto.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/view")
public class ViewServlet extends HttpServlet{
	EmployeeDAO edao=null;
	public ViewServlet() {
		edao=new EmployeeDAOImpl();
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Employee> elist=edao.getAllEmployee();
		if(!elist.isEmpty()) {
			req.setAttribute("empList", elist);
			req.getRequestDispatcher("viewAll.jsp").forward(req, resp);
			//include is to add additonal info
			//its only trnasfer not include additonal info

		}
	}

}
