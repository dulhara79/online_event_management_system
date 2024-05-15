<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login here</title>
<link rel="stylesheet" type="text/css" href="css/userLoginStyle.css">
<style>
    body {
        background-image: url('https://static.vecteezy.com/system/resources/previews/022/005/820/non_2x/birthday-background-with-circle-frame-balloons-illustration-ai-generative-free-photo.jpg');
        background-size: 100% 100%;
        background-repeat: no-repeat;
        margin: 0;
        padding: 0;
        height: 100vh;
        
    }
 .login-container {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    padding: 20px;
    color: black;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    width: 80%;
    max-width: 400px;
    background-image: linear-gradient(to bottom,  #87ceeb, #ffcc00, #ff69b4);
    color: white; /* Set text color to white */
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5); /* Add text shadow for readability */
}

    
    .login-container input, .login-container label {
        background-color: rgba(255, 255, 255, 0.7); /* Transparent white background for inputs and labels */
        border-radius: 5px;
        padding: 5px;
        margin-bottom: 10px;
        font-family: 'Comic Sans MS', cursive;
    }
    
    .login-container input[type="text"],
.login-container input[type="password"] {
    font-family: "Comic Sans MS", cursive;
}
    .login-container h1 {
    font-family: "Comic Sans MS", cursive;
    }
    
.admin-form-submit-button {
    background-color: #ffecb3 !important; /* Light barbie yellow background color */
    color: black; /* Black text color */
    padding: 10px 20px; /* Padding for button */
    border: none; /* No border */
    border-radius: 5px; /* Rounded corners */
    cursor: pointer; /* Cursor style on hover */
    font-family: 'Comic Sans MS', cursive; /* Set font to Comic Sans MS */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); /* Add a subtle shadow */
    margin-top: 20px;
}






    
    h1 {
        font-family: 'Comic Sans MS', cursive; /* Set font to Comic Sans MS */
    }
}
    
    
</style>
</head>
<body>
<div class="login-container">
<form action="<%= request.getContextPath() %>/UserLoginServlet" method="post">
	<h1 style="color: black; margin-left: 100px; ">User Login</h1>

	<label class="admin-form-lable" for="admin-user-name" style="color: black;">User ID</label>
	<input class="admin-form-input" type="text" name="userId" placeholder="Enter User ID" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-password" style="color: black;">Password</label>
	<input class="admin-form-input" type="password" id="password" name="password" placeholder="Enter Password" required="required">
	
	<br>
	
	<input class="admin-form-submit-button " type="submit" name="submit" value="Login">
	
	<h5 class="admin-form-lable" style="margin-left: 30px;"> 
		<a href="adminLogin.jsp" style="text-decoration: none; color: blue;">Admin Login</a> |
		<a href="coordinatorLogin.jsp" style="text-decoration: none; color: blue;">Coordinator Login</a> |
		<a href="companyLogin.jsp" style="text-decoration: none; color: blue;">Company Login</a>
	</h5>
</form>
</div>


<% if (errorMessage != null && !errorMessage.isEmpty()) { %>

    <div class="error-message">
        <%= errorMessage %>
    </div>
<% } %>

</body>
</html>