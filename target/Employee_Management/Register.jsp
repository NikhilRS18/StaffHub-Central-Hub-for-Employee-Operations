<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Registration Form</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background: #fff;
            padding: 40px 45px;
            border-radius: 15px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.2);
            width: 400px;
            animation: fadeIn 0.7s ease-in-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            font-weight: 600;
            display: block;
            margin-top: 12px;
            color: #444;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px 12px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 15px;
            transition: all 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #6c63ff;
            box-shadow: 0 0 5px rgba(108, 99, 255, 0.5);
            outline: none;
        }

        input[type="submit"] {
            margin-top: 25px;
            width: 100%;
            padding: 12px;
            background: #6c63ff;
            color: white;
            border: none;
            font-size: 16px;
            font-weight: 600;
            border-radius: 8px;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        input[type="submit"]:hover {
            background: #5a54d4;
        }

        .note {
            text-align: center;
            margin-top: 18px;
            color: #555;
            font-size: 14px;
        }

        .note a {
            color: #6c63ff;
            text-decoration: none;
            font-weight: 600;
        }

        .note a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Employee Registration</h2>
        <form action="Register" method="post">
            <label for="empID">Employee ID:</label>
            <input type="number" id="empID" name="empID" required placeholder="EMP_ID">

            <label for="ename">Employee Name:</label>
            <input type="text" id="ename" name="empName" required placeholder="Employee Name">

            <label for="dept">Department:</label>
            <input type="text" id="dept" name="department" required placeholder="Department">

            <label for="salary">Salary:</label>
            <input type="number" id="salary" name="salary" required placeholder="Salary">

            <label for="phone">Phone:</label>
            <input type="text" id="phone" name="phone" required pattern="[0-9]{10}" title="Enter a valid 10-digit phone number" placeholder="10-digit Phone Number">

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required placeholder="Email">

            <label for="password">Password:</label>
            <input type="password" id="password" name="pass" required placeholder="Password">

            <input type="submit" value="Register Employee">

            <div class="note">Already have an account? <a href="login.jsp">Login</a></div>
        </form>
    </div>
</body>
</html>
