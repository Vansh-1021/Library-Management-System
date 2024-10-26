<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Create Account</title>
    <link rel="stylesheet" type="text/css" href="css/ca.css">
</head>
<body>
    <div class="create-account-container">
        <h2>Create Account</h2>

        <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
            <div class="error-message" style="color: red;"><%= errorMessage %></div>
        <%
            }
        %>

        <form action="CreateAccountServlet" method="POST">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <input type="submit" value="Create Account">
        </form>
    </div>
</body>
</html>
