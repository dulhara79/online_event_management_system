<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.event.model.User"%>
<%@page import="com.event.service.user.UserServiceImpl"%>
<%@page import="com.event.service.user.IUserService"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%
	
		String userId = (String) request.getAttribute("userId");
	
		IUserService iuserservice = new UserServiceImpl();
		ArrayList<User> userList = iuserservice.getUserById(userId);
	%>
	
	<%
		for(User users: userList) {
	 %>
	<form class="admin-add-form" action="<%= request.getContextPath() %>/UpdateUserServlet" method = "post">
	
	<input type = "hidden" name= "userId" value = "<%= users.getUserId() %>">
	
	<label class="admin-form-lable" for="admin-user-name">User ID</label>
	<input type = "text" value = "<%= users.getUserId()%>" disabled="disabled">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-name">Username</label>
	<input class="admin-form-input" type="text" name="username" value="<%= users.getUserName() %>">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-fname">First name</label>
	<input class="admin-form-input" type="text" name="firstname" value="<%= users.getFirstName() %>">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-lname">Last name</label>
	<input class="admin-form-input" type="text" name="lastname" value="<%= users.getLastName() %>">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-gender" name="gender" >Gender</label>
	<input type="radio" id="gebder1" name="gender" value="Male">
	<label for="gender1">Male</label>
	<input type="radio" id="gender2" name="gender" value="Female">
	<label for="age1">Female</label>
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-address">Address</label>
	<textarea class="admin-user-address-area" rows="4" cols="20" name="address" value="<%= users.getAddress() %>" ></textarea>
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-mobile">Phone number</label>
	<input class="admin-form-input" type="text" name="mobileno" value="<%= users.getPhoneNo() %>">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-email">Email</label>
	<input class="admin-form-input" type="email" name="email" value="<%= users.getEmail() %>">
	
	<br>
	
	<label class="admin-form-lable" for="admin-user-password">Password</label>
	<input class="admin-form-input" type="password" id="password" name="password" value="<%= users.getPassword() %>">
	 
	 <br>
	
	<input class="admin-form-submit-button" type="submit" name="submit" value="Update user Details">
	
	</form>
	 <%
		}
	 %>
</body>
</html>