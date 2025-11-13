package com.servlets.emp.controller;

import java.io.IOException;

import com.servlets.emp.dao.EmployeeDAO;
import com.servlets.emp.dao.EmployeeDAOImpl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Delete")

public class DeleteServlet extends HttpServlet {
     EmployeeDAO edao=null;
	public DeleteServlet() {
        edao=new EmployeeDAOImpl();
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int empId=Integer.parseInt(req.getParameter("eid"));
		boolean isDeleted=edao.deleteEmployee(empId);

		if(isDeleted) {
			//req.getRequestDispatcher("view").forward(req, resp);
			resp.sendRedirect("view");
		}else {
			req.getRequestDispatcher("viewAll.jsp").forward(req, resp);
		}

	}
}


