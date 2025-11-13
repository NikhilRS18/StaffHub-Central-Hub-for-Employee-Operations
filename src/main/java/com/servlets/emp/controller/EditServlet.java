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

@WebServlet("/EditForm")
public class EditServlet  extends HttpServlet{
	 EmployeeDAO edao=null;
     public EditServlet() {
		edao=new EmployeeDAOImpl();
	}

	 @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    	// int empId=Integer.parseInt(req.getParameter("eid"));
    	 int empId = Integer.parseInt(req.getParameter("eid"));

    	 Employee emp=edao.findEmployeeById(empId);

    	 if(emp!=null) {
    		 req.setAttribute("emp", emp);
    		 req.getRequestDispatcher("EditForm.jsp").forward(req, resp);
    	 }else {
             resp.getWriter().println("<h3 style='color:red;'>Employee not found!</h3>");
         }
    }
}
