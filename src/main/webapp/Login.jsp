<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #74ebd5 0%, #ACB6E5 100%);
        height: 100vh;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    form {
        background-color: #fff;
        padding: 40px 50px;
        border-radius: 15px;
        box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
        width: 350px;
        display: flex;
        flex-direction: column;
        align-items: stretch;
    }

    h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #333;
    }

    label {
        margin-bottom: 8px;
        color: #555;
        font-weight: 600;
    }

    input[type="text"], input[type="password"] {
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 8px;
        outline: none;
        transition: 0.3s;
        font-size: 15px;
    }

    input[type="text"]:focus, input[type="password"]:focus {
        border-color: #6c63ff;
        box-shadow: 0 0 5px rgba(108, 99, 255, 0.5);
    }

    button {
        background-color: #6c63ff;
        color: white;
        padding: 12px;
        border: none;
        border-radius: 8px;
        font-size: 16px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    button:hover {
        background-color: #5a54d4;
    }

    .note {
        text-align: center;
        margin-top: 15px;
        color: #666;
        font-size: 14px;
    }
</style>
</head>

<body>
   <form action="login" method="post">
       <h2>Login</h2>
       
       <label for="email">Enter Email</label>
       <input type="text" id="email" name="email" placeholder="Enter your email">

       <label for="pass">Password</label>
       <input type="password" id="pass" name="password" placeholder="Enter your password">

       <button type="submit">Login</button>

       <div class="note">Don’t have an account? <a href="Register.jsp">Sign up</a></div>
   </form>
</body>
</html>
