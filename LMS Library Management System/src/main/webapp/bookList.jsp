<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="javax.servlet.DatabaseConnection" %>

<!DOCTYPE html>
<html>
<head>
    <title>Book List</title>
    <link rel="stylesheet" type="text/css" href="css/bl.css">
</head>
<body>
    <div class="book-list-container">
        <h2>List of Books</h2>
        <table>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <th>Author</th>
                <th>Publisher</th>
                <th>Status</th>
            </tr>
            <%
                try {
                    Connection conn = DatabaseConnection.initializeDatabase();
                    PreparedStatement ps = conn.prepareStatement("SELECT * FROM books");
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getInt("book_id") %></td>
                            <td><%= rs.getString("title") %></td>
                            <td><%= rs.getString("author") %></td>
                            <td><%= rs.getString("publisher") %></td>
                            <td><%= rs.getInt("issued") == 1 ? "Issued" : "Available" %></td>
                        </tr>
            <%
                    }
                    conn.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                    out.println("<tr><td colspan='5'>Error retrieving book list.</td></tr>");
                }
            %>
        </table>
        <div class="go-back">
            <a href="dashboard.jsp">Go Back to Dashboard</a>
        </div>
    </div>
</body>
</html>
