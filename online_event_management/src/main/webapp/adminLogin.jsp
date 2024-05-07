<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/adminLoginStyle.css">
</head>
<body>

<form action="<%= request.getContextPath() %>/AdminLoginServlet" method="post">
	<h1 style="margin-left: 100px">Admin Login</h1><br>
	
	<label class="admin-form-lable" for="admin-user-name">Admin ID</label>
	<input class="admin-form-input" type="text" name="adminId" placeholder="Enter user ID" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-password">Password</label>
	<input class="admin-form-input" type="password" id="password" name="password" placeholder="Enter Password" required="required">
	
	<br>
	
	<input class="admin-form-submit-button " type="submit" name="submit" value="Login">
</form>

<% if (errorMessage != null && !errorMessage.isEmpty()) { %>

    <div class="error-message">
        <%= errorMessage %>
    </div>
<% } %>

</body>
</html>