<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<h1>Add User</h1>

<form class="admin-add-form" action="<%= request.getContextPath() %>/AddUserServlet" method = "post">
	<label class="admin-form-lable" for="admin-user-name">Username</label>
	<input class="admin-form-input" type="text" name="username" placeholder="Enter username" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-fname">First name</label>
	<input class="admin-form-input" type="text" name="firstname" placeholder="Enter First name" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-lname">Last name</label>
	<input class="admin-form-input" type="text" name="lastname" placeholder="Enter Last name" required="required">
	
	<br><br>
	
	<label class="admin-form-lable" for="admin-user-gender" name="gender">Gender</label>
	<input type="radio" id="gebder1" name="gender" value="Male" required="required">
	<label for="gender1">Male</label>
	<input type="radio" id="gender2" name="gender" value="Female" required="required">
	<label for="age1">Female</label>
	
	<br><br>
	
	<label class="admin-form-lable" for="admin-user-address">Address</label>
	<textarea class="admin-user-address-area" rows="4" cols="20" name="address" placeholder="Enter Address" required="required"></textarea>
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-mobile">Phone number</label>
	<input class="admin-form-input" type="text" name="mobileno" placeholder="Enter Mobile Number" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-email">Email</label>
	<input class="admin-form-input" type="email" name="email" placeholder="Enter Email" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-password">Password</label>
	<input class="admin-form-input" type="password" id="password" name="password" placeholder="Enter Password" required="required">
	
	<br>
	
	<input class="admin-form-submit-button" type="submit" name="submit" value="Add User Details">


</form>

</body>
</html>