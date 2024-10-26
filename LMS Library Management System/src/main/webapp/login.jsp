<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
	<div class="login-container">
		<h2>Login</h2>

		<%
		String errorMessage = (String) request.getAttribute("errorMessage");
		if (errorMessage != null) {
		%>
		<div class="error-message"><%=errorMessage%></div>
		<%
		}
		%>

		<form action="LoginServlet" method="POST">
			<label for="username">Username:</label> <input type="text"
				id="username" name="username" required> <label
				for="password">Password:</label> <input type="password"
				id="password" name="password" required> <input type="submit"
				value="Login">
		</form>

		<a href="createAccount.jsp" class="create-account-button">Create
			Account</a>
	</div>
</body>
</html>
