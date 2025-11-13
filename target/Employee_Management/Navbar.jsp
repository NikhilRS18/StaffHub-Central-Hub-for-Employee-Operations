<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div {
	display: flex;
	justify-content: space around; /* Center the navigation bar */
	align-items: center;
	background-color: #f8f9fa;
	padding: 10px;
}

/* Style for the navigation bar */
nav {
	display: flex;
	justify-content: space-evenly;
	align-items: center;
	border: 2px solid black;
	padding: 15px;
	width: 100%;
	max-width: 800px; /* Limits nav width for large screens */
	background-color: #fff;
	border-radius:10px;
}


nav a {
	text-decoration: none;
	color: black;
	font-weight: bold;
	font-size: 18px;
	padding: 10px 20px;
	transition: 0.3s;
}


nav a:hover {
	background-color: #007bff;
	color: white;
	border-radius: 10px;
}
</style>
</head>
<body>
	<div>

		<nav id=nav>
			<a href="index.jsp">Home</a> 
			<a href="Register.jsp">Register</a> 
			<a href="Login.jsp">Login</a> 
			<a href="Dashboard.jsp">Dashboard</a>
			<a href="view">View Employee</a>
			
		</nav>
	</div>
</body>
</html>