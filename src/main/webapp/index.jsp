<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Employee Management System</title>

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
    background: linear-gradient(135deg, #74ebd5, #ACB6E5);
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Navbar Styling */
nav {
    width: 100%;
    background-color: #1f2937; /* Dark blue-gray */
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 15px 0;
    box-shadow: 0 4px 10px rgba(0,0,0,0.15);
    position: sticky;
    top: 0;
    z-index: 100;
}

nav a {
    color: #f1f5f9;
    text-decoration: none;
    font-weight: 500;
    font-size: 17px;
    margin: 0 25px;
    padding: 8px 12px;
    border-radius: 5px;
    transition: all 0.3s ease;
}

nav a:hover {
    background-color: #3b82f6; /* Blue accent */
    color: white;
    transform: translateY(-2px);
}

/* Main Content Section */
.main {
    text-align: center;
    margin-top: 100px;
    color: #111827;
}

.main h2 {
    font-size: 34px;
    font-weight: 700;
    margin-bottom: 30px;
}

.main .card {
    background-color: #ffffff;
    padding: 35px 50px;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
    max-width: 650px;
    margin: 0 auto;
    line-height: 1.7;
    color: #374151;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.main .card:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 30px rgba(0,0,0,0.15);
}

/* Footer */
footer {
    margin-top: auto;
    background: #1f2937;
    color: #d1d5db;
    width: 100%;
    text-align: center;
    padding: 10px 0;
    font-size: 14px;
}

/* Responsive Design */
@media (max-width: 768px) {
    nav {
        flex-wrap: wrap;
    }

    nav a {
        margin: 8px;
        font-size: 15px;
    }

    .main h2 {
        font-size: 26px;
    }

    .main .card {
        width: 85%;
        padding: 25px 20px;
    }
}
</style>
</head>

<body>

    <!-- Navigation -->
    <nav>
        <a href="index.jsp">Home</a>
        <a href="Register.jsp">Register</a>
        <a href="Login.jsp">Login</a>
        <a href="Dashboard.jsp">Dashboard</a>
        <a href="view">View Employee</a>
        <a href="Logout">Logout</a>
        <a href="Profile">Profile</a>
    </nav>

    <!-- Main Content -->
    <section class="main">
        <h2>Welcome to Employee Management System</h2>
        <div class="card">
            <p>
                Manage your employees efficiently with our smart HR solution.  
                Register, update, and view employee details with just a few clicks.  
                Streamline operations and focus on what truly matters — productivity and growth.
            </p>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        © 2025 Employee Management System | Designed by Nikhil
    </footer>

</body>
</html>
