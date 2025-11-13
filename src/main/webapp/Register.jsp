<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Registration</title>
    <style>
        /* ===== Global Reset ===== */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        /* ===== Background Styling ===== */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #6C63FF, #42A5F5, #81C784);
            background-size: 400% 400%;
            animation: gradientShift 10s ease infinite;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 15px;
        }

        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }

        /* ===== Container (Glassmorphism Effect) ===== */
        .container {
            background: rgba(255, 255, 255, 0.15);
            backdrop-filter: blur(15px);
            border: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 18px;
            padding: 40px 45px;
            width: 100%;
            max-width: 420px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
            animation: fadeIn 0.8s ease-in-out;
            color: #fff;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* ===== Heading ===== */
        h2 {
            text-align: center;
            font-size: 26px;
            font-weight: 700;
            color: #fff;
            letter-spacing: 0.5px;
            margin-bottom: 25px;
        }

        /* ===== Labels & Inputs ===== */
        label {
            display: block;
            margin-top: 14px;
            font-weight: 600;
            font-size: 15px;
            color: #f1f1f1;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px 14px;
            margin-top: 6px;
            border: none;
            border-radius: 10px;
            background: rgba(255, 255, 255, 0.85);
            font-size: 15px;
            color: #333;
            transition: all 0.3s ease;
        }

        input:focus {
            outline: none;
            background: #fff;
            box-shadow: 0 0 10px rgba(108, 99, 255, 0.7);
        }

        /* ===== Submit Button ===== */
        input[type="submit"] {
            width: 100%;
            margin-top: 25px;
            padding: 14px;
            background: #6C63FF;
            border: none;
            color: white;
            font-size: 16px;
            font-weight: 600;
            border-radius: 10px;
            cursor: pointer;
            transition: transform 0.2s ease, background 0.3s ease;
        }

        input[type="submit"]:hover {
            background: #584de7;
            transform: scale(1.03);
        }

        /* ===== Footer Note ===== */
        .note {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #e0e0e0;
        }

        .note a {
            color: #FFD54F;
            text-decoration: none;
            font-weight: 600;
        }

        .note a:hover {
            text-decoration: underline;
        }

        /* ===== Responsive Design ===== */
        @media (max-width: 480px) {
            .container {
                padding: 30px 25px;
                max-width: 90%;
            }

            h2 {
                font-size: 22px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Employee Registration</h2>
        <form action="Register" method="post">
            <label for="empID">Employee ID</label>
            <input type="number" id="empID" name="empID" required placeholder="Enter your Employee ID">

            <label for="ename">Employee Name</label>
            <input type="text" id="ename" name="empName" required placeholder="Enter full name">

            <label for="dept">Department</label>
            <input type="text" id="dept" name="department" required placeholder="Enter department">

            <label for="salary">Salary</label>
            <input type="number" id="salary" name="salary" required placeholder="Enter salary amount">

            <label for="phone">Phone</label>
            <input type="text" id="phone" name="phone" required pattern="[0-9]{10}" title="Enter a valid 10-digit phone number" placeholder="Enter 10-digit phone number">

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required placeholder="Enter email address">

            <label for="password">Password</label>
            <input type="password" id="password" name="pass" required placeholder="Create a password">

            <input type="submit" value="Register Employee">

            <div class="note">Already registered? <a href="Login.jsp">Login here</a></div>
        </form>
    </div>
</body>
</html>
