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

<%-- 
					<<<<<<<<<<< if the code this not working use this code  >>>>>>>>>>>
					
					
					

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
   				<<<<<<<<<<<<<<   >>>>>>>>>>>>>>
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String errorMessage = (String) request.getAttribute("errorMessage"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Login</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
    background: /*url('img/adminLoginImg.jpg')*/ no-repeat center center;
    background-size: cover;
    /*max-width: 100px;*/
    width: 40rem;
    height: auto;
  }
  .login-form {
    flex: 1;
    padding: 30px;
    border-radius: 10px;
    background-color: #fff;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
  }
  .login-form h1 {
    margin-bottom: 20px;
    font-weight: 700;
    color: #333;
    text-align: center;
  }
  .form-group {
    margin-bottom: 20px;
  }
  .form-control {
    border-radius: 20px;
    padding: 15px;
    font-size: 16px;
  }
  .btn-primary {
    border-radius: 20px;
    padding: 15px 30px;
    font-size: 16px;
    font-weight: bold;
    text-transform: uppercase;
    background-color: #007bff;
    border: none;
  }
  .btn-primary:hover {
    background-color: #0056b3;
  }
  .alert {
    border-radius: 10px;
    font-size: 16px;
  }
</style>
</head>
<body>

<div class="container">
  <div class="login-image">
  	<img class="login-image" alt="login Image" src="img/adminLoginImg.jpg">
  </div>
  <div class="login-form">
    <form action="<%= request.getContextPath() %>/AdminLoginServlet" method="post">
      <h1>Admin Login</h1>
      
      <div class="form-group">
        <label for="admin-user-name">Admin ID</label>
        <input type="text" class="form-control" name="adminId" placeholder="Enter user ID" required="required">
      </div>
      
      <div class="form-group">
        <label for="admin-user-password">Password</label>
        <input type="password" class="form-control" id="password" name="password" placeholder="Enter Password" required="required">
      </div>
      
      <button type="submit" class="btn btn-primary btn-block">Login</button>
    </form>
    
    <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
        <div class="alert alert-danger mt-3" role="alert">
            <%= errorMessage %>
        </div>
    <% } %>
  </div>
</div>

</body>
</html>
