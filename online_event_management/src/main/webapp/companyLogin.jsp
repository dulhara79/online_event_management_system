<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% String errorMessage = (String) request.getAttribute("errorMessage"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company Login</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<style>
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('img/uvinduc1.jpg'); /* Specify the path to your background image */
            background-size: cover; /* Ensures the image covers the entire background */
            background-repeat: no-repeat; /* Prevents the image from repeating */
            background-attachment: fixed; /* Ensures the background image remains fixed */
            background-position: center; /* Centers the background image */
        }
        
        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background for the form */
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 4px;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50; /* Green color for the button */
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        input[type="submit"]:hover {
            background-color: #45a049; /* Darker shade of green on hover */
        }

        .error-message {
            color: red;
            font-weight: bold;
            margin-top: 10px;
        }
    </style>
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
    
    <% if (errorMessage != null && !errorMessage.isEmpty()) { %>
    <div class="error-message">
        <%= errorMessage %>
    </div>
    
</form>

<% } %>

</body>
</html>
