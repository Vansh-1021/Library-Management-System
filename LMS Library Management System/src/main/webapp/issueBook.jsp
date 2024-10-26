<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Issue Book</title>
    <link rel="stylesheet" type="text/css" href="css/ib.css">
</head>
<body>
    <div class="background">
        <div class="issue-book-container">
            <h2>Issue Book</h2>
            <form action="IssueBookServlet" method="post">
                <label for="book_id">Book ID:</label>
                <input type="number" id="book_id" name="book_id" required>
                <label for="issue_id">Issue ID:</label>
                <input type="number" id="issue_id" name="issue_id" required>
                <label for="issue_date">Issue Date:</label>
                <input type="date" id="issue_date" name="issue_date" required>
                <button type="submit">Issue Book</button>
            </form>
            <button onclick="window.location.href='dashboard.jsp'" class="go-back-button">Go Back</button>
        </div>
    </div>
</body>
</html>
