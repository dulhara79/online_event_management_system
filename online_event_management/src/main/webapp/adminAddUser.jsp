<%@page import="com.event.util.CommonUtil"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.event.service.user.UserServiceImpl"%>
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
<title>Admin-User Register</title>

<link rel="stylesheet" type="text/css" href="css/style.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<script src="js/userFormValidation.js"></script>

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

</head>
<body> 
 		<% 
			String status = (String) session.getAttribute("status"); 
		
			if(status != null && status.equals("success")){
				
				request.getSession().removeAttribute("status");
			}
	
		%>

	<input type="hidden" id="status" value="<%=status%>">
 
 <%
	
		UserServiceImpl userserviceimpl = new UserServiceImpl();
		ArrayList<String> userIds = userserviceimpl.getUserIds();
		
		String userId = CommonUtil.generateUserIDs(userIds);

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
 
<div class="container">
    <h1>Add User</h1>
    <div class="row">
    	<div class="col-8 offset-2">
		   <form action="<%= request.getContextPath() %>/AddUserServlet" method="post" oninput="enableSubmit()">
			  <div class="form-group">
					<label for="username">UserID</label> 
					<input type="text"  name="userId" value="<%=userId%>" disabled="disabled"> <!-- id="username" -->
			   </div>
			   
			   <div class="form-group">
		           <label for="exampleInputEmail1">User-name</label>
		           <input type="text" class="form-control" id="userName" name="username" placeholder="Enter username" required oninput="validateUserNames()">
		           <span class="phoneError" id="usernameError" ></span>
		       </div>
		
		       <div class="form-group">
		           <label for="exampleInputEmail1">First name</label>
		           <input type="text" class="form-control" id="firstname" name="firstname" placeholder="Enter First name" required oninput="validateFirstNames()">
		           <span class="phoneError" id="firstnameError" ></span>
		       </div>
		
		       <div class="form-group">
		           <label for="lastname">Last name</label>
		           <input type="text" class="form-control" id="lastname" name="lastname" placeholder="Enter Last name" required oninput="validateLastNames()">
		           <span class="phoneError" id="lastnameError" ></span>
		       </div>
		
		       <div class="form-group">
		           <label>Gender</label><br>
		           <input type="radio" id="gender" name="gender" value="Male" required>
		           <label for="male">Male</label>
		           <input type="radio" id="gender" name="gender" value="Female" required>
		           <label for="female">Female</label>
		       </div>
		
		       <div class="form-group">
		           <label for="address">Address</label>
		           <input id="address" class="form-control" name="address" placeholder="Enter Address" required required oninput="validateAddress()">
		           <span class="phoneError" id="addressError" ></span>
		       </div>
		
		       <div class="form-group">
		           <label for="mobileno">Mobile number</label>
		           <input type="text" class="form-control" id="mobileno" name="mobileno" placeholder="Enter Mobile Number" required oninput="validatePhone()">
  				   <span class="phoneError" id="phoneError" ></span><!-- <br><br> -->
		       </div>
		
		       <div class="form-group">
		           <label for="email">Email</label>
		           <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
		       </div>
		
		       <div class="form-group">
		           <label for="password">Password</label>
		           <input type="password" class="form-control" id="password" placeholder="Enter Password" required oninput="validatePasswords()">
		       </div>
		       
		        <div class="form-group">
		           <label for="password">Confirm Password</label>
		           <input type="password" class="form-control" id="rePassword" name="password" placeholder="Confirm Password" required oninput="validatePasswords()">
		           <span class="phoneError" id="passwordError"></span>
		       </div>
		
		       <button type="submit" id="submit" class="btn btn btn-primary btn-block" disabled>Add User Details</button>
		   </form>
		</div>
	</div>  
</div>

</body>
</html>