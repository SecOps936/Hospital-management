package com.hospital.servlet;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.sql.*;
import com.hospital.utils.DatabaseConnection;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String fullName = request.getParameter("name");
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        try (Connection conn = DatabaseConnection.getConnection()) {
            String query = "INSERT INTO patients (name, username, email, password) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(query);
            stmt.setString(1, fullName);
            stmt.setString(2, username);
            stmt.setString(3, email);
            stmt.setString(4, password);

            int rows = stmt.executeUpdate();

            if (rows > 0) {
                out.println("<html><body>");
                out.println("<h2 style='color:green;'>Registered successfully!</h2>");
                out.println("<a href='login.jsp'>Go to Login</a>");
                out.println("</body></html>");
            } else {
                out.println("<html><body><h3 style='color:red;'>Registration failed!</h3></body></html>");
            }

        } catch (Exception e) {
            out.println("<html><body><h3 style='color:red;'>Error: " + e.getMessage() + "</h3></body></html>");
        }
    }
}


