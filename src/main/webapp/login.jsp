<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Patient Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-container {
            background-color: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
            width: 350px;
        }
        h2 {
            text-align: center;
            color: #0078D4;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 6px;
            border: 1px solid #ccc;
        }
        input[type="submit"] {
            background-color: #0078D4;
            color: white;
            border: none;
            padding: 10px;
            width: 100%;
            border-radius: 6px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #005a9e;
        }
        .msg {
            text-align: center;
            color: red;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Patient Login</h2>
        <form action="LoginServlet" method="post">
            <input type="text" name="email" placeholder="Enter Email" required><br>
            <input type="password" name="password" placeholder="Enter Password" required><br>
            <input type="submit" value="Login">
        </form>
        <p class="msg">
            <% 
                String error = (String) request.getAttribute("errorMessage");
                if (error != null) { out.print(error); }
            %>
        </p>
        <p style="text-align:center;">Don’t have an account? <a href="register.jsp">Register</a></p>
    </div>
</body>
</html>

