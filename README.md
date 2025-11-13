
# Employee Management System (Maven + JSP + Servlet + JDBC)

This is a complete CRUD-based Employee Management System built using **Java JSP/Servlet**, **JDBC**, and **Maven**.  
It includes Login, Registration, Dashboard, Add Employee, Edit Employee, Delete Employee, View Employee, and Logout functionalities with full session handling.

This project demonstrates a clean MVC architecture using:
- Servlets (Controller)
- JSP (View)
- DAO + JDBC (Model)

---

## 🚀 Features

### 🔐 Authentication Module
- User Registration  
- Login using username & password  
- Logout + Session Invalidation  
- Session handling using **HttpSession**

### 👥 Employee Module – CRUD Operations
- ➕ **Add Employee**
- 📄 **View All Employees**  
- 👁️ **View Single Employee Details**
- ✏️ **Edit Employee**
- 🗑️ **Delete Employee**

### 📊 Dashboard
- Shows total employees  
- Quick navigation to CRUD pages  

---

## 📁 Project Structure

Your project follows a clean 3-layer architecture.

### **🔹 Controller Layer (Servlets)**  
```

src/main/java/com/servlets/emp/controller/

├── DeleteServlet.java
├── EditServlet.java
├── LoginServlet.java
├── LogoutServlet.java
├── RegisterServlet.java
├── UpdateServlet.java
└── ViewServlet.java

```

### **🔹 DAO Layer**
```

src/main/java/com/servlets/emp/dao/

├── EmployeeDAO.java
└── EmployeeDAOImpl.java

```

### **🔹 DTO / Model Layer**
```

src/main/java/com/servlets/emp/dto/
└── Employee.java

```

### **🔹 Database Utility**
```

src/main/java/com/servlets/util/
└── DBConnection.java

```

---

## 🎨 View Layer (JSP pages)

```

src/main/webapp/

├── Dashboard.jsp
├── EditForm.jsp
├── index.jsp
├── Login.jsp
├── Navbar.jsp
├── Register.jsp
└── viewAll.jsp

````

- `index.jsp` → home/landing  
- `Login.jsp` → login page  
- `Register.jsp` → create account  
- `Dashboard.jsp` → after login  
- `viewAll.jsp` → list all employees  
- `EditForm.jsp` → update employee  

---

## 🛠️ Technologies Used

### **Backend**
- Java  
- JSP  
- Servlets  
- JDBC  
- Maven  

### **Frontend**
- JSP  
- HTML, CSS  
- Bootstrap (optional)

### **Database**
- MySQL

---

## ⚙️ How to Run the Project

### 1️⃣ Clone the repo
```bash
git clone https://github.com/NikhilRS18/StaffHub-Central-Hub-for-Employee-Operations.git
````

### 2️⃣ Create MySQL database

```sql
CREATE DATABASE employeemanagement;
```

### 3️⃣ Update database credentials

Inside `DBConnection.java`:

```java
private static final String URL = "jdbc:mysql://localhost:3306/employeemanagement";
private static final String USERNAME = "root";
private static final String PASSWORD = "your_password";
```

### 4️⃣ Build the project

```bash
mvn clean install
```

### 5️⃣ Deploy WAR file on Tomcat

Copy the WAR from:

```
target/Employee_Management.war
```

Paste into:

```
apache-tomcat/webapps/
```

### 6️⃣ Start Tomcat and run:

```
http://localhost:8080/Employee_Management
```

---

## 📸 Screenshots (Add Yours Here)

Create a folder named `assets/` and upload images.

Example:

```markdown
## 🔐 Login Page
![Login Page](assets/login.png)

## 🏠 Dashboard
![Dashboard](assets/dashboard.png)

## 👥 View All Employees
![View All](assets/viewall.png)
```

---

## 📌 Future Enhancements

* Add search functionality
* Add sorting and pagination
* Convert JDBC → Hibernate/JPA
* Switch to Spring Boot
* Add employee photo upload
* Add authentication filter

---

## 👨‍💻 Author

**Nikhil R S**

GitHub: [https://github.com/NikhilRS18](https://github.com/NikhilRS18)

```

---


