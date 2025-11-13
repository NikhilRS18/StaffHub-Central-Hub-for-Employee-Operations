package com.servlets.emp.controller;

import java.io.IOException;
import java.io.PrintWriter;

import com.servlets.emp.dao.EmployeeDAO;
import com.servlets.emp.dao.EmployeeDAOImpl;
import com.servlets.emp.dto.Employee;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private EmployeeDAO edao = null;

    public LoginServlet() {
        edao = new EmployeeDAOImpl();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        Employee emp = edao.LoginEmployee(email, password);
        resp.setContentType("text/html");
        PrintWriter p = resp.getWriter();

        if (emp != null) {
            HttpSession session = req.getSession();

            session.setAttribute("employee", emp);
            req.getRequestDispatcher("Dashboard.jsp").include(req, resp);
        } else {
        	
            p.print("<html><body bgcolor='yellow'><h1>Login failed</h1></body></html>");
        }
    }
}
