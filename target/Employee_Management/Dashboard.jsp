<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.servlets.emp.dto.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .dashboard-box {
            background-color: white;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.2);
            width: 400px;
            text-align: center;
        }
        h1 {
            color: #333;
        }
        .info {
            text-align: left;
            margin-top: 20px;
        }
        .info p {
            font-size: 18px;
            margin: 10px 0;
            border-bottom: 1px solid #ddd;
            padding-bottom: 5px;
        }
        .logout {
            margin-top: 20px;
        }
        .logout a {
            background-color: #007bff;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 8px;
            transition: 0.3s;
        }
        .logout a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
 
<%
    Employee emp = (Employee) session.getAttribute("employee");
    if (emp == null) {
%>
        <h2>You are not logged in! <a href="Login.jsp">Login here</a></h2>
<%
    } else {
%>  
     
    <div class="dashboard-box">
        <h1>Welcome, <%= emp.getEname() %></h1>
        <div class="info">
            <p><b>Employee ID:</b> <%= emp.getEmpID() %></p>
            <p><b>Department:</b> <%= emp.getDept() %></p>
            <p><b>Salary:</b> $<%= emp.getSalary() %></p>
            <p><b>Phone:</b> <%= emp.getPhone() %></p>
            <p><b>Email:</b> <%= emp.getEmail() %></p>
        </div>
        <div class="logout">
            <a href="Login.jsp">Logout</a>
        </div>
    </div>
<%
    }
%>

</body>
</html>
