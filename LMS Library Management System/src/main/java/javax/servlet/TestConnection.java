package javax.servlet;

import java.sql.Connection;

public class TestConnection {
    public static void main(String[] args) {
        try {
            Connection conn = DatabaseConnection.initializeDatabase();
            if (conn != null) {
                System.out.println("Database connected successfully!");
                DatabaseConnection.closeConnection();
            } else {
                System.out.println("Failed to connect to the database.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
