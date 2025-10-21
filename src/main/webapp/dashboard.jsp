<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page session="true" %>
<%
    String name = (String) session.getAttribute("name");
    if (name == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Patient Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f7;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #0078D4;
            color: white;
            padding: 15px;
            text-align: center;
        }
        .container {
            margin: 20px auto;
            width: 80%;
        }
        .card {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            margin: 15px 0;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        a {
            color: #0078D4;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>Welcome, <%= name %> 👋</h1>
        <a href="logout.jsp" style="color:white;">Logout</a>
    </div>

    <div class="container">
        <div class="card"><a href="profile.jsp">View / Update Profile</a></div>
        <div class="card"><a href="book_appointment.jsp">Book Appointment</a></div>
        <div class="card"><a href="appointments.jsp">View Appointments</a></div>
        <div class="card"><a href="prescriptions.jsp">View Prescriptions</a></div>
        <div class="card"><a href="reports.jsp">View Medical Reports</a></div>
        <div class="card"><a href="billing.jsp">Billing & Payments</a></div>
        <div class="card"><a href="contact.jsp">Contact Support</a></div>
    </div>
</body>
</html>

