<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%
String logoutUrl = "logout.jsp";
%>

<%
String userID = (String) session.getAttribute("coodinatorId");
String userName = (String) session.getAttribute("coordinatorName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Coordinator Home</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
	
</head>
<body>

<%
	String status = (String) session.getAttribute("status");

	if (status != null && status.equals("success")) {

		request.getSession().removeAttribute("status");
	} else {
		/* response.sendRedirect("coordinatorLogin.jsp"); */
	}
%>

	<input type="hidden" id="status" value="<%=status%>">

	<table hidden="">
	<tr>
	<td><%= userID %></td>
	<td><%= userName %></td>
	</tr>
	
<%--  <header>
	  <!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<div class="container-fluid">
				<button class="navbar-toggler" type="button" data-mdb-toggle="collapse"
				  data-mdb-target="#navbar1" aria-controls="navbarExample01" aria-expanded="false"
				  aria-label="Toggle navigation">
				  <i class="fas fa-bars"></i>
				</button>
				
				<div class="collapse navbar-collapse justify-content-between" id="navbar1">
					
					<ul class="navbar-nav mb-2 mb-lg-0">
					  <li class="nav-item"><span class="navbar-text">Welcome! <%= userName %></span></li>
					</ul>
					
					<ul class="navbar-nav mb-2 mb-lg-0 ms-auto">
						
						<li class="nav-item active"><a class="nav-link" aria-current="page" href="<%=index%>">Home</a></li>
						
						
						<li class="nav-item">
				            <form action="<%= request.getContextPath() %>/GetUserServlet" method="POST">
				               <input type="hidden" name="userId" value="<%= userID %>">
				               <input type="submit" class="btn-settings" value="Settings">
				            </form>
				        </li>
						<li class="nav-item" >
							<form method="post" action="<%= logoutUrl %>" class="d-flex align-items-center">
	            				<input class="btn btn-outline-primary" type="submit" value="Logout">
	          				</form>
          				</li>
					</ul>
				</div>
			</div>
		</nav>
	<!-- Navbar -->
</header>
	 --%>
	<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Event Coordinator Page</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <header>
    <h1>Event Coordinator</h1>
    <nav>
    	<form method="post" action="<%= logoutUrl %>" class="d-flex align-items-center">
	           <input class="btn btn-outline-primary" type="submit" value="Logout">
	    </form>
		
      <ul>
        <li><a href="webSitehomePage.jsp">Home</a></li>
        <li><a href="view.jsp">Events</a></li>
        <li><a href="index.jsp">Add Events</a></li>
        <li><a href="allEvents.jsp">Manage Events</a></li>
        
      </ul>
      
    </nav>
  </header>

  <section class="banner">
    <h2>Welcome to our Event Coordinator Page</h2>
    <p>Let our experienced team plan and execute your perfect event!</p>
  </section>

  <section class="services">
    <h2>Our Services</h2>
    <ul>
      <li>Publish Events</li>
      <li>Wedding Planning</li>
      <li>Corporate Events</li>
      <li>Private Parties</li>
      <li>Conferences</li>
      <li>Event Management</li>
    </ul>
  </section>

	<section class="about">
	  <h2>About Us</h2>
	  <p>Welcome to our Event Coordinator Page! We are a team of professional event coordinators dedicated to making your event a success. With years of experience in the industry, we have the expertise and creativity to bring your vision to life.</p>
	  <p>Our mission is to provide exceptional service and attention to detail, ensuring that every aspect of your event is meticulously planned and executed. Whether you're hosting a wedding, corporate event, private party, or conference, we're here to help you every step of the way.</p>
	  <p>From concept development to vendor coordination and on-site management, we handle all the details so you can relax and enjoy your event. Let us take the stress out of event planning and create an unforgettable experience for you and your guests.</p>
	</section>

<footer>
        <p>&copy; 2025 Event Management System. All rights reserved.</p>
 </footer>
</body>
</html>

<style>

body {
	  font-family: Arial, sans-serif;
	  margin: 0;
	  padding: 0;
	}

	header {
	  background-color: #5c1f87;
	  color: #fff;
	  padding: 60px 20px;
	  display: flex;
	  justify-content: space-between;
	  align-items: center;
	}
	
	h1 {
		font-family: 'Poppins', sans-serif;
	}
	
	header form {
  	   margin-right: 20px; 
	}
	
	header form input[type="submit"] {
	  background-color: #5c1f87;
	  color: #fff;
	  border: none;
	  padding: 10px 20px;
	  border-radius: 5px;
	  cursor: pointer;
	}
	
	header form input[type="submit"]:hover {
	  background-color: #4a166d;
	}
	
	nav {
	    padding: 20px 30px;
	    display: flex;
	    justify-content: space-between; 
	    align-items: center;
		}
	
	nav form {
	    margin-left: auto; 
	}

	nav input[type="submit"] {
	   background-color: transparent; 
	    border: none; 
	    color: #fff; 
	    font-size: 16px;
	    cursor: pointer; 
	    font-family: 'Poppins', sans-serif;
	}
	
	nav input[type="submit"]:hover {
	    text-decoration: underline; 
	    background-color: #b796d6;
	}

	 nav ul {
	  list-style-type: none;
	  margin: 0;
	  padding: 0;
	  font-family: 'Poppins', sans-serif;
	} 

	nav ul li {
	  display: inline;
	  margin-right: 20px;
	}

	nav ul li a {
	  color: #fff;
	  text-decoration: none;
	}
	
	.banner {
	  background-color: #e3e1e1;
	  padding: 50px;
	  text-align: center;
	  font-family: 'Poppins', sans-serif;
	}
	
	.services {
	  padding: 50px;
	  font-family: 'Poppins', sans-serif;
	}
	
	.services ul {
	  list-style-type: none;
	  padding: 0;
	}
	
	.about {
	  background-color: #e3e1e1;
	  padding: 50px;
	  text-align: center;
	  font-family: 'Poppins', sans-serif;
	}
	
	footer {
	  background-color: #5c1f87;
	  color: #fff;
	  text-align: center;
	  padding: 20px;
	}	

</style>

</body>
</html>