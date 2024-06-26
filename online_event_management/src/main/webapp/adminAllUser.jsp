<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="com.event.model.User"%>
<%@page import="com.event.service.user.UserServiceImpl"%>
<%@page import="com.event.service.user.IUserService"%>
<%@page import="java.util.ArrayList"%>

<%
String logoutUrl = "logout.jsp";
%>

<%
String userID = (String) session.getAttribute("adminId");
String userName = (String) session.getAttribute("userName");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-All Users</title>
<link rel="stylesheet" type="text/css" href="css/adminAllUserStyle.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	
	<style>
body {
	background-color:#f2f6fc;
	color: #69707a;
}

.container {
	margin-top: 50px;
	margin-bottom: 50px;
}

.card-img-top {
	height: 300px;
	object-fit: cover;
}

label {
	margin-bottom: 5px;
	margin-left: 5px;
}
</style>
	
</head>
<body> --%>

	<%-- 
	<<<<<< comment stated >>>>>>>>
	
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

	<<<<<< comment ended >>>>>>>>
 --%>

<%-- <header>
		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button"
					data-mdb-toggle="collapse" data-mdb-target="#navbar1"
					aria-controls="navbarExample01" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-bars"></i>
				</button>

				<div class="collapse navbar-collapse justify-content-between"
					id="navbar1">

					<ul class="navbar-nav mb-2 mb-lg-0">
						<li class="nav-item"><span class="navbar-text"
							style="font-weight: bold;">Welcome! <%=userName%></span></li>
					</ul>

					<ul class="navbar-nav mb-2 mb-lg-0 ms-auto">
						
						<li class="nav-item active"><a class="nav-link" aria-current="page" href="<%=index%>">Home</a></li>
						
						<li class="nav-item"><a class="nav-link"
							href="userProfile.jsp">Profile</a></li>
						<li class="nav-item"><a class="nav-link" href="AboutUs.jsp">About
								us</a></li>
						<li class="nav-item">
							<form method="post" action="<%=logoutUrl%>"
								class="d-flex align-items-center">
								<input class="btn btn-outline-primary" type="submit"
									value="Logout">
							</form>
						</li>
					</ul>
				</div>
			</div>
		</nav>
		<!-- Navbar -->
	</header>

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
						<form action="<%= request.getContextPath() %>/GetUserServlet"
							method="POST">
							<input type="hidden" name="userId"
								value="<%= users.getUserId() %>">
							<button type="submit" class="edit-btn">Edit</button>
						</form>
					</td>
					<td>
						<form action="<%= request.getContextPath() %>/DeleteUserServlet"
							method="POST">
							<input type="hidden" name="userId"
								value="<%= users.getUserId() %>">
							<button type="submit" class="delete-btn">Delete</button>
						</form>
					</td>
				</tr>
				<% } %>
			</tbody>
		</table>
	</div>

</body>
</html> --%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.event.model.User"%>
<%@page import="com.event.service.user.UserServiceImpl"%>
<%@page import="com.event.service.user.IUserService"%>
<%@page import="java.util.ArrayList"%>

<%
String logoutUrl = "logout.jsp";
%>

<%
String userID = (String) session.getAttribute("adminId");
String userName = (String) session.getAttribute("userName");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-All Users</title>
<link rel="stylesheet" type="text/css" href="css/adminAllUserStyle.css">

<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
    crossorigin="anonymous">
<link rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    
    <style>
body {
    background-color:#f2f6fc;
    color: #69707a;
}

.container {
    margin-top: 50px;
    margin-bottom: 50px;
}

.card-img-top {
    height: 300px;
    object-fit: cover;
}

label {
    margin-bottom: 5px;
    margin-left: 5px;
}
</style>
    
</head>
<body>


    <header>
        <!-- Navbar -->
        <nav class="navbar navbar-expand-lg navbar-light bg-white">
            <div class="container-fluid">
                <button class="navbar-toggler" type="button"
                    data-mdb-toggle="collapse" data-mdb-target="#navbar1"
                    aria-controls="navbarExample01" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>

                <div class="collapse navbar-collapse justify-content-between"
                    id="navbar1">

                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <li class="nav-item"><span class="navbar-text"
                            style="font-weight: bold;">Welcome! <%=userName%></span></li>
                    </ul>

                    <ul class="navbar-nav mb-2 mb-lg-0 ms-auto">
                        <li class="nav-item"><a class="nav-link"
                            href="userProfile.jsp">Profile</a></li>
                        <li class="nav-item"><a class="nav-link" href="aboutus.jsp">About
                                us</a></li>
                        <li class="nav-item">
                            <form method="post" action="<%=logoutUrl%>"
                                class="d-flex align-items-center">
                                <input class="btn btn-outline-primary" type="submit"
                                    value="Logout">
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Navbar -->
    </header>

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
                        <form id="editForm_<%= users.getUserId() %>" action="<%= request.getContextPath() %>/GetUserServlet"
                            method="POST">
                            <input type="hidden" name="userId"
                                value="<%= users.getUserId() %>">
                            <button type="button" class="edit-btn">Edit</button>
                        </form>
                    </td>
                    <td>
                        <form id="deleteForm_<%= users.getUserId() %>" action="<%= request.getContextPath() %>/DeleteUserServlet"
                            method="POST">
                            <input type="hidden" name="userId"
                                value="<%= users.getUserId() %>">
                            <button type="button" class="delete-btn">Delete</button>
                        </form>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
    document.addEventListener('DOMContentLoaded', function () {
        const editButtons = document.querySelectorAll('.edit-btn');
        const deleteButtons = document.querySelectorAll('.delete-btn');

        editButtons.forEach(button => {
            button.addEventListener('click', function () {
                const formId = this.parentElement.getAttribute('id');
                Swal.fire({
                    title: 'Edit User',
                    text: 'Are you sure you want to edit this user?',
                    icon: 'question',
                    showCancelButton: true,
                    confirmButtonText: 'Yes',
                    cancelButtonText: 'Cancel'
                }).then((result) => {
                    if (result.isConfirmed) {
                        document.getElementById(formId).submit();
                    }
                });
            });
        });

        deleteButtons.forEach(button => {
            button.addEventListener('click', function () {
                const formId = this.parentElement.getAttribute('id');
                Swal.fire({
                    title: 'Delete User',
                    text: 'Are you sure you want to delete this user?',
                    icon: 'warning',
                    showCancelButton: true,
                    confirmButtonText: 'Yes, delete it',
                    cancelButtonText: 'No, keep it'
                }).then((result) => {
                    if (result.isConfirmed) {
                        document.getElementById(formId).submit();
                    }
                });
            });
        });
    });
    </script>

</body>
</html>
