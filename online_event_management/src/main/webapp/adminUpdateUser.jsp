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
<title>Admin-Update User</title>
<link rel="stylesheet" type="text/css" href="css/style.css">

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

	<%
	String status = (String) session.getAttribute("status");

	if (status != null && status.equals("success")) {

		request.getSession().removeAttribute("status");
	}
	%>

	<input type="hidden" id="status" value="<%=status%>">
	
<%
	
		String userId = (String) request.getAttribute("userId");
	
		IUserService iuserservice = new UserServiceImpl();
		ArrayList<User> userList = iuserservice.getUserById(userId);
%>
	
	<%
		for(User users: userList) {
	 %>

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
						<%-- 
						<li class="nav-item active"><a class="nav-link" aria-current="page" href="<%=index%>">Home</a></li>
						 --%>
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