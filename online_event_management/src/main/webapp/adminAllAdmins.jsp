<%-- <%@page import="com.event.model.admin.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.event.service.admin.AdminServiceImpl"%>
<%@page import="com.event.service.admin.IAdminService"%>

<% String logoutUrl = "logout.jsp"; %> 
   
<%
	String adminId = (String) session.getAttribute("adminId");
 	String userName = (String) session.getAttribute("userName");
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="css/adminAllUserStyle.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<style>
	
		body{
			background-color:#f2f6fc;
			color:#69707a;
		}
		.container{
			margin-top: 50px;
			margin-bottom: 50px;
		}
		
		.card-img-top{
			height: 300px;
			object-fit: cover;
		}
		
		label{
			margin-bottom: 5px;
			margin-left: 5px;
		}
		
	</style>

<title>Admin-All admins</title>
</head>
<body>

		<% 
			String status = (String) session.getAttribute("status"); 
		
			if(status != null && status.equals("success")){
				
				request.getSession().removeAttribute("status");
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
						<li class="nav-item"><span class="navbar-text"
							style="font-weight: bold;">Welcome! <%=userName%></span></li>
					</ul>

					<ul class="navbar-nav mb-2 mb-lg-0 ms-auto">
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
		<h1>All Admins</h1>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<table class="table table-dark">
					<thead>
						<tr>
							<th scope="col">Admin ID</th>
							<th scope="col">User name</th>
							<th scope="col">Name</th>
							<th scope="col">Address</th>
							<th scope="col">Mobile No</th>
							<th scope="col">Email</th>
							<th scope="col">Edit</th>
							<th scope="col">Delete</th>
						</tr>
					</thead>
					<tbody>
					<%        
		                IAdminService iadminservice = new AdminServiceImpl();
		                ArrayList<Admin> AdminList = iadminservice.getAdmins();
		                
		                for(Admin admin: AdminList) {
		            %>
						<tr>
							<td><%= admin.getAdminId() %></td>
							<td><%= admin.getUserName() %></td>
							<td><%= admin.getName() %></td>
							<td><%= admin.getAddress() %></td>
							<td><%= admin.getPhoneNum() %></td>
							<td><%= admin.getEmail() %></td>
							<td>
								<form action="<%= request.getContextPath() %>/GetAdminServlet"
									method="POST">
									<input type="hidden" name="adminId"
										value="<%= admin.getAdminId() %>">
									<button type="submit" class="edit-btn btn btn-outline-light btn-sm">Edit</button>
								</form>
							</td>
							<td>
								<form action="<%= request.getContextPath() %>/DeleteAdminServlet"
									method="POST">
									<input type="hidden" name="adminId"
										value="<%= admin.getAdminId() %>">
									<button type="submit" class="delete-btn btn btn-outline-light btn-sm">Delete</button>
								</form>
							</td>
						</tr>
						<% } %>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html> --%>

<%@page import="com.event.model.admin.Admin"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.event.service.admin.AdminServiceImpl"%>
<%@page import="com.event.service.admin.IAdminService"%>

<% String logoutUrl = "logout.jsp"; %> 
   
<%
	String adminId = (String) session.getAttribute("adminId");
 	String userName = (String) session.getAttribute("userName");
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-All admins</title>
<link rel="stylesheet" type="text/css" href="css/adminAllUserStyle.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
	body{
		background-color:#f2f6fc;
		color:#69707a;
	}
	.container{
		margin-top: 50px;
		margin-bottom: 50px;
	}
	.card-img-top{
		height: 300px;
		object-fit: cover;
	}
	label{
		margin-bottom: 5px;
		margin-left: 5px;
	}
</style>

<script>
function confirmAction(event, message, actionType) {
    event.preventDefault();
    swal({
        title: "Are you sure?",
        text: message,
        icon: actionType === 'edit' ? "info" : "warning",
        buttons: true,
        dangerMode: actionType !== 'edit',
    })
    .then((willProceed) => {
        if (willProceed) {
            event.target.form.submit();
        }
    });
}
</script>

</head>
<body>

	<% 
		String status = (String) session.getAttribute("status"); 
	
		if(status != null && status.equals("success")){
			request.getSession().removeAttribute("status");
		}
	%>

	<input type="hidden" id="status" value="<%=status%>">

	<header>
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
	</header>
	
	<div class="header">
		<h1>All Admins</h1>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<table class="table table-dark">
					<thead>
						<tr>
							<th scope="col">Admin ID</th>
							<th scope="col">User name</th>
							<th scope="col">Name</th>
							<th scope="col">Address</th>
							<th scope="col">Mobile No</th>
							<th scope="col">Email</th>
							<th scope="col">Edit</th>
							<th scope="col">Delete</th>
						</tr>
					</thead>
					<tbody>
					<%        
		                IAdminService iadminservice = new AdminServiceImpl();
		                ArrayList<Admin> AdminList = iadminservice.getAdmins();
		                
		                for(Admin admin: AdminList) {
		            %>
						<tr>
							<td><%= admin.getAdminId() %></td>
							<td><%= admin.getUserName() %></td>
							<td><%= admin.getName() %></td>
							<td><%= admin.getAddress() %></td>
							<td><%= admin.getPhoneNum() %></td>
							<td><%= admin.getEmail() %></td>
							<td>
								<form action="<%= request.getContextPath() %>/GetAdminServlet"
									method="POST">
									<input type="hidden" name="adminId"
										value="<%= admin.getAdminId() %>">
									<button type="button" class="edit-btn btn btn-outline-light btn-sm" onclick="confirmAction(event, 'Do you want to edit this admin?', 'edit')">Edit</button>
								</form>
							</td>
							<td>
								<form action="<%= request.getContextPath() %>/DeleteAdminServlet"
									method="POST">
									<input type="hidden" name="adminId"
										value="<%= admin.getAdminId() %>">
									<button type="button" class="delete-btn btn btn-outline-light btn-sm" onclick="confirmAction(event, 'Once deleted, you will not be able to recover this admin!', 'delete')">Delete</button>
								</form>
							</td>
						</tr>
						<% } %>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
