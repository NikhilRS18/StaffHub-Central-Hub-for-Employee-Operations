package com.servlets.emp.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.servlets.emp.dto.Employee;
import com.servlets.util.DBConnection;

public class EmployeeDAOImpl implements EmployeeDAO  {

	   Connection con=null;

	@Override
	public boolean registerEmployee(Employee emp) {
		 con=DBConnection.ProvideConnection();
		 String register="insert into employee values(?,?,?,?,?,?,?)";
		 try {
			 PreparedStatement ps=con.prepareStatement(register);
			 ps.setInt(1,emp.getEmpID());
			 ps.setString(2, emp.getEname());
			 ps.setString(3, emp.getDept());
			 ps.setDouble(4, emp.getSalary());
			 ps.setLong(5,emp.getPhone());
			 ps.setString(6, emp.getEmail());
			 ps.setString(7, emp.getPassword());

			 int count=ps.executeUpdate();
			 if(count>0) {
				 return true;
			 }



		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public Employee LoginEmployee(String email,String password) {
		 String sqry="SELECT * FROM employee WHERE email=? AND password=?";
		 con=DBConnection.ProvideConnection();
		 Employee emp = null;
			try {
				PreparedStatement ps = con.prepareStatement(sqry);
				ps.setString(1, email);
				ps.setString(2, password);

				ResultSet rs=ps.executeQuery();
	            if (rs.next()) {
	            	emp=new Employee();
	                emp.setEmpID(rs.getInt("empID"));
	                emp.setEname(rs.getString("ename"));
	                emp.setDept(rs.getString("dept"));
	                emp.setSalary(rs.getDouble("salary"));
	                emp.setPhone(rs.getLong("phone"));
	                emp.setEmail(rs.getString("email"));
	                emp.setPassword(rs.getString("password"));
	            }

			} catch (SQLException e) {
				e.printStackTrace();
			}
			return emp;


	}

	@Override
	public List<Employee> getAllEmployee() {
		List<Employee> empList=new ArrayList<>();
		String viewAll="Select *  from employee";
		 con=DBConnection.ProvideConnection();
		 Employee emp = null;
		 try {
			PreparedStatement ps=con.prepareStatement(viewAll);
			ResultSet rs=ps.executeQuery();

			while(rs.next()) {
				System.out.println("Creates new employee object for each iteration");
	            	emp=new Employee();
	            	emp.setEmpID(rs.getInt(1));
	            	emp.setEname(rs.getString(2));
	            	emp.setDept(rs.getString(3));
	            	emp.setSalary(rs.getDouble(4));
	            	emp.setPhone(rs.getLong(5));
	            	emp.setEmail(rs.getString(6));
	            	emp.setPassword(rs.getString(7));
	            	empList.add(emp);
	            }


			} catch (SQLException e) {
		    e.printStackTrace();
		}
		return empList;
	}

	@Override
	public boolean deleteEmployee(int eid) {
		String deleteEmp="DELETE FROM employee WHERE empID=?";
		 con=DBConnection.ProvideConnection();
		 try {
			PreparedStatement ps=con.prepareStatement(deleteEmp);
			ps.setInt(1, eid);
			int  count=ps.executeUpdate();
			if(count>0) {
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public Employee findEmployeeById(int eid) {
		String empById="SELECT * FROM employee where empID=?";
		con=DBConnection.ProvideConnection();
		Employee emp=null;
		try {
			PreparedStatement ps=con.prepareStatement(empById);
			ps.setInt(1, eid);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				emp=new Employee();
            	emp.setEmpID(rs.getInt(1));
            	emp.setEname(rs.getString(2));
            	emp.setDept(rs.getString(3));
            	emp.setSalary(rs.getDouble(4));
            	emp.setPhone(rs.getLong(5));
            	emp.setEmail(rs.getString(6));
            	emp.setPassword(rs.getString(7));

			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return emp;
	}

	@Override
	public boolean updateEmployee(Employee emp) {


		String updateEmp = "UPDATE employee SET ename=?, dept=?,"
				+ " salary=?, phone=?, email=?, password=? WHERE empID=?";

		 con=DBConnection.ProvideConnection();
		try {
			PreparedStatement ps= con.prepareStatement(updateEmp);

        	ps.setString(1,emp.getEname());
        	ps.setString(2,emp.getDept());
        	ps.setDouble(3,emp.getSalary());
        	ps.setLong(4,emp.getPhone());
        	ps.setString(5,emp.getEmail());
        	ps.setString(6,emp.getPassword());
        	ps.setInt(7,emp.getEmpID());
        	int count=ps.executeUpdate();
        	if(count>0) {
        		return true;
        	}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return false;
	}

}
