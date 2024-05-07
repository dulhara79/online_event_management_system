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
<link rel="stylesheet" type="text/css" href="css/adminAllUserStyle.css">
</head>
<body>


<%-- 
<table>
	<thead>
		<th> User ID</th>
		<th> User name</th>
		<th> First Name</th>
		<th> Last Name</th>
		<th> Gender</th>
		<th> Address</th>
		<th> Mobile No</th>
		<th> Email</th>
		<th> Edit</th>
		<th> Delete</th>
	</thead>
	<tbody>
		<%
		
			IUserService iuserservice = new UserServiceImpl();
			ArrayList<User> userList = iuserservice.getUsers();
		%>
		
		<%
			for(User users: userList) {
		 %>		
			
			<tr>
				<td><%= users.getUserId() %></td>
				<td> <%= users.getUserName() %></td>
				<td> <%= users.getFirstName() %></td>
				<td><%= users.getLastName() %></td>
				<td> <%= users.getGender() %></td>
				<td><%= users.getAddress() %></td>
				<td><%= users.getPhoneNo() %></td>
				<td> <%= users.getEmail() %></td>
				
				<td>
					<form action="<%= request.getContextPath() %>/GetUserServlet" method="POST">
						<input type="hidden" name="userId" value="<%= users.getUserId() %>">
						<input type="submit" value="Edit">
					</form>
				</td>
				
				<td>
					<form action="<%= request.getContextPath() %>/DeleteUserServlet" method="POST">
						<input type="hidden" name="userId" value="<%= users.getUserId() %>">
						<input type="submit" value="Delete">
					</form>
				</td>
			</tr>
			
			
		<%
			}
		
		%>
	
	</tbody>
</table>
 --%>
 
 <div class="header">
    <h1>All Users</h1>
</div>

<div class="container">
    <table>
        <thead>
            <tr>
                <th>User ID</th>
                <th>User name</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Mobile No</th>
                <th>Email</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
        </thead>
        <tbody>
            <%        
                IUserService iuserservice = new UserServiceImpl();
                ArrayList<User> userList = iuserservice.getUsers();
                for(User users: userList) {
            %>      
            <tr>
                <td><%= users.getUserId() %></td>
                <td><%= users.getUserName() %></td>
                <td><%= users.getFirstName() %></td>
                <td><%= users.getLastName() %></td>
                <td><%= users.getGender() %></td>
                <td><%= users.getAddress() %></td>
                <td><%= users.getPhoneNo() %></td>
                <td><%= users.getEmail() %></td>
                <td>
                    <form action="<%= request.getContextPath() %>/GetUserServlet" method="POST">
                        <input type="hidden" name="userId" value="<%= users.getUserId() %>">
                        <button type="submit" class="edit-btn">Edit</button>
                    </form>
                </td>
                <td>
                    <form action="<%= request.getContextPath() %>/DeleteUserServlet" method="POST">
                        <input type="hidden" name="userId" value="<%= users.getUserId() %>">
                        <button type="submit" class="delete-btn">Delete</button>
                    </form>
                </td>
            </tr>
            <% } %>
        </tbody>
    </table>
</div>
 
</body>
</html>