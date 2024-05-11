<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coordinator Login</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>

<style>

/* adminLoginStyle.css */

/* Body Styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 120px;
    padding: 0;
}

body::before {
	    content: "";
	    position: fixed; 
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    background-image: url('img/img67.png');
	    background-size: cover;
	    background-attachment: fixed; 
	    z-index: -1;
	}

form {
    max-width: 400px;
    margin: 50px auto;
    /* background: linear-gradient(to bottom, #d3adf7, #b3b8f3); */
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    background-color: rgba(255, 255, 255, 0.4)
}

h1 {
	color: #000; 
    text-align: center; 
    margin-bottom: 10px; 
    border-bottom: 2px solid black; 
    font-weight: bold; 
    font-family: 'Poppins', sans-serif;
}

.coordinator-form-lable {
    display: block;
    margin-bottom: 10px;
    font-weight: bold;
}

.coordinator-form-input {
    width: 90%;
    padding: 10px;
    margin-bottom: 20px;
    background-color: #f4e9f7;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-family: 'Poppins', sans-serif;
}

.coordinator-form-submit-button {
    width: 96%;
    padding: 10px;
    border: none;
    background-color: #2d0954;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    border-radius: 5px;
    
}

.coordinator-form-submit-button:hover {
    background-color: #8a56b3;
}

.error-message {
    margin-top: 20px;
    padding: 10px;
    background-color: #f44336;
    color: #fff;
    border-radius: 5px;
}



</style>

<form action="<%= request.getContextPath() %>/CoordinatorLoginServlet" method="post">
	<h1>Coordinator Login</h1><br>
	
	<label class="coordinator-form-lable" for="coordinator-name">Coordinator ID</label>
	<input class="coordinator-form-input" type="text" name="coordinatorId" placeholder="Enter coordinator ID" required="required">
	
	<br>
	
	<label class="coordinator-form-lable" for="coordinator-password">Password</label>
	<input class="coordinator-form-input" type="password" id="password" name="password" placeholder="Enter Password" required="required">
	
	<br>
	
	<input class="coordinator-form-submit-button " type="submit" name="submit" value="Login">
</form>

<% if (errorMessage != null && !errorMessage.isEmpty()) { %>

    <div class="error-message">
        <%= errorMessage %>
    </div>
<% } %>

</body>
</html>