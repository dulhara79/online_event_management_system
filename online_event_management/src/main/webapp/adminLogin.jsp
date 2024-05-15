<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Login</title>
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
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String errorMessage = (String) request.getAttribute("errorMessage"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Login</title>
<link rel="stylesheet" type="text/css" href="css/adminLoginStyle.css">
<style>
  .container {
    display: flex;
    align-items: center;
    justify-content: center;
    min-height: 100vh;
  }
  .login-image {
    flex: 1;
    background: url('img/adminLoginImg.jpg')no-repeat center center;
    background-size: cover;
    max-width: 100px;
    height: auto;
  }
  .login-form {
    flex: 1;
  }
</style>
</head>
<body>

<div class="container">
  <div class="login-image">
     <!-- <img class="login-image"  alt="" src="img/adminLoginImg.jpg"> -->
  </div>
  <div class="login-form">
    <form action="<%= request.getContextPath() %>/AdminLoginServlet" method="post">
      <h1>Admin Login</h1><br>
      
      <label class="admin-form-lable" for="admin-user-name">Admin ID</label>
      <input class="admin-form-input" type="text" name="adminId" placeholder="Enter user ID" required="required">
      
      <br>
      
      <label class="admin-form-lable" for="admin-user-password">Password</label>
      <input class="admin-form-input" type="password" id="password" name="password" placeholder="Enter Password" required="required">
      
      <br>
      
      <input class="admin-form-submit-button" type="submit" name="submit" value="Login">
    </form>
    
    <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
        <div class="error-message">
            <%= errorMessage %>
        </div>
    <% } %>
  </div>
</div>

</body>
</html>
