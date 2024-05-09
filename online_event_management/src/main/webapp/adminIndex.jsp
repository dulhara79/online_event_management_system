<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<% String logoutUrl = "logout.jsp"; %>

<%
	String userID = (String) session.getAttribute("adminId");
 	String userName = (String) session.getAttribute("userName");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Home</title>
<link rel="stylesheet" type="text/css" href="css/adminIndexStyle.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<style>
body {
	/* background-color:#f2f6fc; */
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
	
		if(status != null && status.equals("success")){
			
			request.getSession().removeAttribute("status");
		} else {
			response.sendRedirect("adminLogin.jsp");
		}
	
%>

	<input type="hidden" id="status" value="<%=status%>">

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
						<li class="nav-item"><span class="navbar-text" style="font-weight: bold;">Welcome!
								<%= userName %></span></li>
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
							<form method="post" action="<%= logoutUrl %>"
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
	<section>
		<div>
			<div class="sidebar">
				<ul class="sidebar-nav">
					<li><a href="#">Dashboard</a></li>
					<li><a href="#">Analytics</a></li>
					<li><a href="#">Reports</a></li>
					<li><a href="#">Settings</a></li>
					<li class="nav-item"><a class="nav-link"
						href="adminAllUser.jsp">Manage Users</a></li>
					<li class="nav-item"><a class="nav-link"
						href="addCategory.jsp">Manage Company</a></li>
					<li class="nav-item"><a class="nav-link"
						href="addCategory.jsp">Manage Coordinators</a></li>
					<li class="nav-item"><a class="nav-link"
						href="addCategory.jsp">Manage Events</a></li>
					<li><a href="adminAddUser.jsp">Add User</a></li>
				</ul>
			</div>
		</div>
		<div class="body-content">
			<div class="event-list">
				<!-- Here you can dynamically generate and display upcoming events -->
				<div class="event">
					<h3>Event Title</h3>
					<p>Date: January 1, 2025</p>
					<p>Location: Event Venue</p>
					<p>Description: Lorem ipsum dolor sit amet, consectetur
						adipiscing elit.</p>
				</div>
				<div class="event">
					<h3>Event Title</h3>
					<p>Date: January 1, 2025</p>
					<p>Location: Event Venue</p>
					<p>Description: Lorem ipsum dolor sit amet, consectetur
						adipiscing elit.</p>
				</div>
				<div class="event">
					<h3>Event Title</h3>
					<p>Date: January 1, 2025</p>
					<p>Location: Event Venue</p>
					<p>Description: Lorem ipsum dolor sit amet, consectetur
						adipiscing elit.</p>
				</div>
				<!-- Add more events as needed -->
			</div>
		</div>
	</section>
	<footer>
		<p>&copy; 2025 Event Management System. All rights reserved.</p>
	</footer>

</body>
</html>