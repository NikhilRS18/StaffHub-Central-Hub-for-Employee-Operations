package com.servlets.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	public static Connection ProvideConnection() {
		Connection con=null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("Load and Register");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employee_db", "root", "your password");
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return con;
	}
}

//dtabse and table
//register.jsp
//DTO---private  string emp_id, string ename, string dept, double salary, string phone ,string email,string password
//

