<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Return Book</title>
    <link rel="stylesheet" type="text/css" href="css/rb.css">
</head>
<body>
    <div class="return-book-container">
        <h2>Return Book</h2>
        <form action="ReturnBookServlet" method="post">
            <label for="book_id">Book ID:</label>
            <input type="number" id="book_id" name="book_id" required>
            <label for="return_date">Return Date:</label>
            <input type="date" id="return_date" name="return_date" required>
            <button type="submit">Return Book</button>
        </form>
        <div class="back-button">
            <a href="dashboard.jsp">Go Back</a>
        </div>
    </div>
</body>
</html>
