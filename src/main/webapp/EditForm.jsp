<%@page import="com.servlets.emp.dto.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>
<style>
    /* General reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    body {
        background-color: #f5f7fa;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }

    .container {
        background-color: #fff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        width: 400px;
    }

    h1 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
        font-size: 28px;
    }

    h2 {
        text-align: center;
        color: #555;
        margin-bottom: 25px;
        font-size: 20px;
    }

    form {
        display: flex;
        flex-direction: column;
    }

    label {
        margin-bottom: 5px;
        font-weight: bold;
        color: #555;
    }

    input[type="text"],
    input[type="number"],
    input[type="email"],
    input[type="password"] {
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 5px;
        transition: 0.3s;
    }

    input[type="text"]:focus,
    input[type="number"]:focus,
    input[type="email"]:focus,
    input[type="password"]:focus {
        border-color: #007BFF;
        outline: none;
        box-shadow: 0 0 5px rgba(0,123,255,0.3);
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        padding: 12px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

</style>
</head>
<body>
    <% Employee emp=(Employee)request.getAttribute("emp");%>
    <div class="container">
        <h1>Edit Employee</h1>
        <h2>Update Details</h2>
        <form action="update" method="post">
            <input type="hidden" id="empID" value="<%=emp.getEmpID()%>" name="empID">

            <label for="ename">Employee Name:</label>
            <input type="text" id="ename" name="empName" value="<%=emp.getEname() %>" required placeholder="Employee Name">

            <label for="dept">Department:</label>
            <input type="text" id="dept" name="department" value="<%=emp.getDept() %>" required placeholder="Department">

            <label for="salary">Salary:</label>
            <input type="number" id="salary" name="salary" value="<%=emp.getSalary() %>" required placeholder="Salary">

            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone"  value="<%=emp.getPhone() %>" required pattern="[0-9]{10}" title="Enter a valid 10-digit phone number" placeholder="10-digit Phone Number">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" value="<%=emp.getEmail() %>" required placeholder="Email">

            <label for="password">Password:</label>
            <input type="password" id="password" name="pass"  value="<%=emp.getPassword() %>" required placeholder="Password">

            <input type="submit" value="Update">
        </form>
    </div>
</body>
</html>
