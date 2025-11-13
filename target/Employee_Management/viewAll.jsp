<%@page import="com.servlets.emp.dto.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
<title>ViewAll</title>
</head>
<body>
	<%
	List<Employee> elist = (List<Employee>) request.getAttribute("empList");
	    
	%>
  
	<table border=1px>
		<tr>
			<th>Employee Id</th>
			<th>Employee Name</th>
			<th>Department</th>
			<th>Salary</th>
			<th>Phone</th>
			<th>Email</th>
			<th>Action</th>
	
	   </tr>
	<tr>
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
		
		<td> <a href="EditForm?eid=<%=emp.getEmpID()%>">Edit</a>
		     <a href="Delete?eid=<%=emp.getEmpID()%>">Delete</a>
		</td>
    </tr>
		<%
		}
		%>
	</tr>
	</table>
</body>
</html>