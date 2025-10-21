package com.hospital.servlets;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.sql.*;
import com.hospital.utils.DatabaseConnection;

public class AddPatientServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String name = request.getParameter("full_name");
        String gender = request.getParameter("gender");
        String age = request.getParameter("age");
        String address = request.getParameter("address");
        String contact = request.getParameter("contact_number");
        String email = request.getParameter("email");

        try {
            Connection conn = DatabaseConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement(
                "INSERT INTO patients (full_name, gender, age, address, contact_number, email) VALUES (?, ?, ?, ?, ?, ?)"
            );
            ps.setString(1, name);
            ps.setString(2, gender);
            ps.setInt(3, Integer.parseInt(age));
            ps.setString(4, address);
            ps.setString(5, contact);
            ps.setString(6, email);
            ps.executeUpdate();

            out.println("<h3>Patient Registered Successfully!</h3>");
            conn.close();
        } catch (Exception e) {
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    }
}
