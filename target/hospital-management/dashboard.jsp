<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession session = request.getSession(false);
    if (session == null || session.getAttribute("username") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head><title>Dashboard</title></head>
<body>
    <h2>Welcome, <%= session.getAttribute("username") %>!</h2>
    <p>You are logged in as: <%= session.getAttribute("role") %></p>
    <a href="logout.jsp">Logout</a>
</body>
</html>
