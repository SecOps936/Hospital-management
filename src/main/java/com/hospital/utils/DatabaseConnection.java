package com.hospital.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {

    public static Connection getConnection() {
        Connection conn = null;
        try {
            String dbDriver = "org.mariadb.jdbc.Driver";
            String dbURL = "jdbc:mariadb://localhost:3306/";
            String dbName = "hospital_db"; // Your DB name
            String dbUsername = "heri";    // Your DB username
            String dbPassword = "1234";         // Your DB password

            Class.forName(dbDriver);
            conn = DriverManager.getConnection(dbURL + dbName, dbUsername, dbPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}


