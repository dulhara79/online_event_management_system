<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
        body {
            /* Set background image */
            background-image: url('path_to_your_image.jpg');
            /* Adjust background settings */
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif; /* Optional: Set a fallback font */
        }

        /* Style the form container */
        form {
            margin: 50px auto;
            padding: 20px;
            width: 400px;
            background: linear-gradient(to bottom right, #f2f2f2, #c1c1c1); /* Gradient background */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: table; /* Display form elements as a table */
        }

        /* Style form inputs */
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        /* Style the submit button */
        input[type="submit"] {
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        /* Responsive styling */
        @media (max-width: 480px) {
            form {
                width: 80%;
            }
        }
    </style>
</head>
<body>
<h1>Insert Company Details</h1>


<form action="<%= request.getContextPath()%>/Addcompanyservlet" method = "post">

	Company Name <input type="text" name="UserName">
	Company Password<input type="text" name="Password">
	Company Location<input type="text" name="Location">
	Company Type<input type="text" name="Type">
	Number of employees in the Company <input type="text" name="Numberofemployee">
	
	<input type="submit" value="Add Company Details">

</form>

</body>
</html>