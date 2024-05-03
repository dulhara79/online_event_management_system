<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Admin add company page</h1>
<form class="admin-add-form" action="<%= request.getContextPath() %>/AddCoordinatorServlet" method = "post">
	<label class="admin-form-lable" for="admin-coodinator-name">Username</label>
	<input class="admin-form-input" type="text" name="username" paleholder="Enter username" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-coodinator-fname">First name</label>
	<input class="admin-form-input" type="text" name="firstname" paleholder="Enter First name" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-coodinator-lname">Last name</label>
	<input class="admin-form-input" type="text" name="lastname" paleholder="Enter Last name" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-coodinator-age">Age</label>
	<input class="admin-form-input" type="text" name="username" paleholder="Enter Age" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-coodinator-gender" name="gender">Gender</label>
	<input type="radio" id="gebder1" name="gender" value="Male" required="required">
	<label for="gender1">Male</label>
	<input type="radio" id="gender2" name="gender" value="Female" required="required">
	<label for="age1">Female</label>
	
	<br>
	
	<label class="admin-form-lable" for="admin-coodinator-address">Address</label>
	<textarea class="admin-user-address-area" rows="4" cols="6" name="address" paleholder="Enter Address" required="required"></textarea>
	
	<br>
	
	<label class="admin-form-lable" for="admin-coodinator-mobile">Phone number</label>
	<input class="admin-form-input" type="text" name="mobileno" paleholder="Enter Mobile Number" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-coodinator-email">Email</label>
	<input class="admin-form-input" type="email" name="email" paleholder="Enter Email" required="required">
	
	<br>
	
	<label class="admin-form-lable" for="admin-coodinator-password">Password</label>
	<input class="admin-form-input" type="password" id="password" name="password" paleholder="Enter Password" required="required">
	
	<br>
	
	<input class="admin-form-submit-button" type="submit" name="submit" value="Add Coordinator Details">


</form>
</body>
</html>