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
<%-- 
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
 --%>
 
<div class="container">
    <h1>Add User</h1>
    <form action="<%= request.getContextPath() %>/AddUserServlet" method="post">
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" placeholder="Enter username" required>
        </div>

        <div class="form-group">
            <label for="firstname">First name</label>
            <input type="text" id="firstname" name="firstname" placeholder="Enter First name" required>
        </div>

        <div class="form-group">
            <label for="lastname">Last name</label>
            <input type="text" id="lastname" name="lastname" placeholder="Enter Last name" required>
        </div>

        <div class="form-group">
            <label>Gender</label><br>
            <input type="radio" id="male" name="gender" value="Male" required>
            <label for="male">Male</label>
            <input type="radio" id="female" name="gender" value="Female" required>
            <label for="female">Female</label>
        </div>

        <div class="form-group">
            <label for="address">Address</label>
            <textarea id="address" name="address" placeholder="Enter Address" required></textarea>
        </div>

        <div class="form-group">
            <label for="mobileno">Phone number</label>
            <input type="text" id="mobileno" name="mobileno" placeholder="Enter Mobile Number" required>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter Email" required>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" placeholder="Enter Password" required>
        </div>

        <button type="submit" class="btn">Add User Details</button>
    </form>
</div>

</body>
</html>