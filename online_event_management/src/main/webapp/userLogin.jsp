<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/userLoginStyle.css">
</head>
<body>
<form action="<%= request.getContextPath() %>/UserLoginServlet" method="post">
	<h1 style="margin-left: 100px;">User Login</h1>

	<label class="admin-form-lable" for="admin-user-name">User ID</label>
	<input class="admin-form-input" type="text" name="userId" placeholder="Enter user ID" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-password">Password</label>
	<input class="admin-form-input" type="password" id="password" name="password" placeholder="Enter Password" required="required">
	
	<br>
	
	<input class="admin-form-submit-button " type="submit" name="submit" value="Login">
	
	<h5 class="admin-form-lable" style="margin-left: 30px;"> 
		<a href="adminLogin.jsp" style="text-decoration: none; color: blue;">Admin Login</a> |
		<a href="coordinatorLogin.jsp" style="text-decoration: none; color: blue;">Coordinator Login</a> |
		<a href="#" style="text-decoration: none; color: blue;">Company Login</a>
	</h5>
</form>



<% if (errorMessage != null && !errorMessage.isEmpty()) { %>

    <div class="error-message">
        <%= errorMessage %>
    </div>
<% } %>

</body>
</html>