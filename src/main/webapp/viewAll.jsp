<%@page import="com.servlets.emp.dto.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>View Employees</title>

<style>
/* Reset defaults */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Arial, sans-serif;
}

/* Body Background */
body {
    background: linear-gradient(135deg, #89f7fe, #66a6ff);
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    padding: 30px;
}

/* Page Heading */
h1 {
    text-align: center;
    color: #1f1f1f;
    margin-bottom: 25px;
    font-size: 32px;
    letter-spacing: 1px;
}

/* Table Styling */
table {
    width: 90%;
    max-width: 1000px;
    border-collapse: collapse;
    margin: 20px auto;
    background-color: #fff;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 8px 20px rgba(0,0,0,0.15);
}

th, td {
    padding: 14px 18px;
    text-align: center;
}

th {
    background-color: #1f2937;
    color: #f1f5f9;
    font-size: 18px;
}

td {
    color: #374151;
    font-size: 16px;
}

tr:nth-child(even) {
    background-color: #f3f4f6;
}

tr:hover {
    background-color: #e0f2fe;
    transition: background 0.3s ease;
}

/* Buttons for Edit/Delete */
.action-btn {
    text-decoration: none;
    padding: 6px 12px;
    border-radius: 5px;
    font-size: 14px;
    margin: 0 4px;
    transition: all 0.3s ease;
}

.edit-btn {
    background-color: #3b82f6;
    color: white;
}

.edit-btn:hover {
    background-color: #2563eb;
}

.delete-btn {
    background-color: #ef4444;
    color: white;
}

.delete-btn:hover {
    background-color: #dc2626;
}

/* No Data */
.no-data {
    font-size: 18px;
    color: #111827;
    background: #fff;
    padding: 20px 40px;
    border-radius: 10px;
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
    margin-top: 50px;
}

/* Back to Home Button */
.back-btn {
    display: inline-block;
    margin-top: 30px;
    background-color: #1f2937;
    color: #fff;
    text-decoration: none;
    padding: 12px 25px;
    border-radius: 8px;
    transition: 0.3s;
    font-size: 16px;
}

.back-btn:hover {
    background-color: #3b82f6;
    transform: translateY(-2px);
}

/* Responsive */
@media (max-width: 768px) {
    table {
        width: 100%;
        font-size: 14px;
    }

    th, td {
        padding: 10px;
    }

    .action-btn {
        padding: 5px 8px;
        font-size: 13px;
    }
}
</style>
</head>

<body>
    <%
        List<Employee> elist = (List<Employee>) request.getAttribute("empList");
        Employee e = (Employee) session.getAttribute("employee");
        if (e == null) {
            response.sendRedirect("Login.jsp");
            return;
        }
    %>

    <h1>Employee Records</h1>

    <%
        if (elist != null && !elist.isEmpty()) {
    %>
    <table>
        <tr>
            <th>Employee ID</th>
            <th>Name</th>
            <th>Department</th>
            <th>Salary</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Action</th>
        </tr>
        <%
            for (Employee emp : elist) {
        %>
        <tr>
            <td><%=emp.getEmpID()%></td>
            <td><%=emp.getEname()%></td>
            <td><%=emp.getDept()%></td>
            <td><%=emp.getSalary()%></td>
            <td><%=emp.getPhone()%></td>
            <td><%=emp.getEmail()%></td>
            <td>
                <a class="action-btn edit-btn" href="EditForm?eid=<%=emp.getEmpID()%>">Edit</a>
                <a class="action-btn delete-btn" href="Delete?eid=<%=emp.getEmpID()%>">Delete</a>
            </td>
        </tr>
        <%
            }
        %>
    </table>
    <% } else { %>
        <p class="no-data">No Employee Records Found.</p>
    <% } %>

    <a href="index.jsp" class="back-btn">← Back to Home</a>

</body>
</html>
