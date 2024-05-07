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
	
<%-- 
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
--%>

<div class="container">
    <h1>Update</h1>
    <form action="<%= request.getContextPath() %>/UpdateUserServlet" method="post">
    	
    	<input type = "hidden" name= "userId" value = "<%= users.getUserId() %>">
    
    	<div class="form-group">
            <label for="username">UserID</label>
            <input type="text" id="username" name="username" value="<%= users.getUserId()%>" disabled="disabled">
        </div>
    
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" id="username" name="username" value="<%= users.getUserName() %>" required>
        </div>

        <div class="form-group">
            <label for="firstname">First name</label>
            <input type="text" id="firstname" name="firstname" value="<%= users.getFirstName() %>" required>
        </div>

        <div class="form-group">
            <label for="lastname">Last name</label>
            <input type="text" id="lastname" name="lastname" value="<%= users.getLastName() %>" required>
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
            <input type="text" id="address" name="address" value="<%= users.getAddress() %>" required>
            <%-- <textarea id="address" name="address" value="<%= users.getAddress()%>" required></textarea> --%>
        </div>

        <div class="form-group">
            <label for="mobileno">Phone number</label>
            <input type="text" id="mobileno" name="mobileno" value="<%= users.getPhoneNo()%>" required>
        </div>

        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" id="email" name="email" value="<%= users.getEmail() %>" required>
        </div>

        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" id="password" name="password" value="<%= users.getPassword() %>" required>
        </div>

        <button type="submit" class="btn">Update Details</button>
    </form>
</div>
	 <%
		}
	 %>
</body>
</html>