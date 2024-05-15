<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% String errorMessage = (String) request.getAttribute("errorMessage"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company Login</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>

<form action="<%= request.getContextPath() %>/CompanyLoginServlet" method="post">
    <h1>Company Login</h1><br>
    
    <label for="companyId">Company ID</label>
    <input type="text" name="companyId" placeholder="Enter company ID" required="required">
    <br>
    
    <label for="password">Password</label>
    <input type="password" name="password" placeholder="Enter Password" required="required">
    <br>
    
    <input type="submit" name="submit" value="Login">
</form>

<% if (errorMessage != null && !errorMessage.isEmpty()) { %>
    <div class="error-message">
        <%= errorMessage %>
    </div>
<% } %>

</body>
</html>
