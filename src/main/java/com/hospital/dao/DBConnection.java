package com.hospital.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
    // DEV: avoid hardcoding in production. Use env vars or JNDI for prod.
    private static final String URL = "jdbc:mariadb://localhost:3306/hospital_db?useSSL=false";
    private static final String USER = "heri";
    private static final String PASSWORD = "1234";

    static {
        try {
            // ensure MariaDB driver loaded (optional with newer JDBC)
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
}
