<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.servlets.emp.dto.Employee" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Employee Dashboard</title>

<style>
/* Reset and font setup */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Arial, sans-serif;
}

/* Background */
body {
    background: linear-gradient(135deg, #89f7fe, #66a6ff);
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

/* Dashboard Box */
.dashboard-box {
    background-color: #fff;
    padding: 40px 50px;
    border-radius: 20px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.15);
    width: 420px;
    text-align: center;
    animation: fadeIn 0.8s ease;
}

/* Fade-in animation */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(30px); }
    to { opacity: 1; transform: translateY(0); }
}

/* Avatar Circle */
.avatar {
    width: 90px;
    height: 90px;
    border-radius: 50%;
    background: linear-gradient(135deg, #3b82f6, #2563eb);
    color: white;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 36px;
    font-weight: 600;
    margin: 0 auto 15px auto;
    box-shadow: 0 4px 10px rgba(0,0,0,0.2);
}

/* Heading */
h1 {
    color: #1f2937;
    font-size: 26px;
    margin-bottom: 25px;
}

/* Info Section */
.info {
    text-align: left;
    background: #f9fafb;
    border-radius: 12px;
    padding: 20px;
    box-shadow: inset 0 0 5px rgba(0,0,0,0.05);
}

.info p {
    font-size: 16px;
    margin: 12px 0;
    padding: 8px 10px;
    border-left: 4px solid #3b82f6;
    background: #fff;
    border-radius: 6px;
    color: #374151;
    transition: all 0.2s ease;
}

.info p:hover {
    background: #eff6ff;
    transform: translateX(3px);
}

/* Label bolding */
.info b {
    color: #1e3a8a;
}

/* Logout Button */
.logout {
    margin-top: 25px;
}

.logout a {
    display: inline-block;
    background-color: #1f2937;
    color: white;
    text-decoration: none;
    padding: 12px 30px;
    border-radius: 8px;
    font-size: 16px;
    font-weight: 500;
    transition: all 0.3s ease;
}

.logout a:hover {
    background-color: #3b82f6;
    transform: translateY(-2px);
}

/* Responsive */
@media (max-width: 500px) {
    .dashboard-box {
        width: 90%;
        padding: 30px;
    }

    .info p {
        font-size: 15px;
    }
}
</style>
</head>
<body>

<%
Employee emp = (Employee) session.getAttribute("employee");
if (emp == null) {
    out.println("Employee session not found. Redirecting...");
    response.sendRedirect("Login.jsp");
    return;
}
%>

<div class="dashboard-box">

    <div class="avatar">
        <%= emp.getEname().substring(0,1).toUpperCase() %>
    </div>

    <h1>Welcome, <%= emp.getEname() %></h1>

    <div class="info">
        <p><b>Employee ID:</b> <%= emp.getEmpID() %></p>
        <p><b>Department:</b> <%= emp.getDept() %></p>
        <p><b>Salary:</b> ₹<%= emp.getSalary() %></p>
        <p><b>Phone:</b> <%= emp.getPhone() %></p>
        <p><b>Email:</b> <%= emp.getEmail() %></p>
    </div>

    <div class="logout">
        <a href="Login.jsp">Logout</a>
    </div>
</div>

</body>
</html>
