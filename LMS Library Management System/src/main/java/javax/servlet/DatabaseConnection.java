package javax.servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    private static Connection connection = null;
    

    public static Connection initializeDatabase() throws SQLException, ClassNotFoundException {
        if (connection == null || connection.isClosed()) {

            Class.forName("com.mysql.cj.jdbc.Driver");
            

            String url = "jdbc:mysql://localhost:3306/library_db";
            String username = "root";
            String password = "1234";
            

            connection = DriverManager.getConnection(url, username, password);
        }
        return connection;
    }
    

    public static void closeConnection() throws SQLException {
        if (connection != null && !connection.isClosed()) {
            connection.close();
        }
    }
}
