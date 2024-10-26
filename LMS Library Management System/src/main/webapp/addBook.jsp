<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Book</title>
    <link rel="stylesheet" type="text/css" href="css/ab.css">
</head>
<body>
    <div class="background">
        <div class="add-book-container">
            <h2>Add a New Book</h2>
            <form action="AddBookServlet" method="post">
                <label for="book_id">Book ID:</label>
                <input type="number" id="book_id" name="book_id" required>

                <label for="title">Book Title:</label>
                <input type="text" id="title" name="title" required>

                <label for="author">Author:</label>
                <input type="text" id="author" name="author" required>

                <label for="publisher">Publisher:</label>
                <input type="text" id="publisher" name="publisher">

                <label for="status">Status:</label>
                <input type="text" id="status" name="status" required>

                <button type="submit">Add Book</button>
                <a href="dashboard.jsp" class="back-button">Go Back</a>
            </form>
        </div>
    </div>
</body>
</html>
