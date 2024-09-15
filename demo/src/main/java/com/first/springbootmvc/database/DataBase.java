package com.first.springbootmvc.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DataBase {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/webpage";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "vijay";

    public static String signupData(String enteredUsername, String enteredPassword) {
        try (Connection con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            String query = "INSERT INTO signup (username, passwords) VALUES (?, ?)";
            PreparedStatement statement = con.prepareStatement(query);
            statement.setString(1, enteredUsername);
            statement.setString(2, enteredPassword);

            int updates = statement.executeUpdate();
            return updates > 0 ? "successFull" : "not update";
        } catch (SQLException e) {
            e.printStackTrace();
            return "error";
        }
    }

    public static boolean verifyLogin(String enteredUsername, String enteredPassword) {
        try (Connection con = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            // Fetch the user based on the entered username
            String query = "SELECT * FROM signup WHERE username = ?";
            PreparedStatement statement = con.prepareStatement(query);
            statement.setString(1, enteredUsername);

            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                String storedPassword = rs.getString("passwords");
                // Compare entered password with the stored password
                return enteredPassword.equals(storedPassword);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
}
