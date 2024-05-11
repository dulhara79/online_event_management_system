<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<% String logoutUrl = "logout.jsp"; %> 
   
<%
	String userID = (String) session.getAttribute("userId");
 	String userName = (String) session.getAttribute("userName");
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<<<<<<< Updated upstream
<title>Home</title>
<link rel="stylesheet" type="text/css" href="css/userHomeStyle.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

=======
<title>Evora</title>
<link rel="stylesheet" type="text/css" href="css/userHomeStyle.css">
<style>
     body {
        background-image: url('https://wallpapercave.com/wp/wp2848047.jpg');
        background-size: cover;
        background-repeat: no-repeat;
        text-align: center;
        color: white;
        margin: 0;
        padding: 0;
        height: 100vh;
        
    }
    

    
    h1 {
        margin-top: 40px;
        font-size: 88px; /* Change the font size to make it bigger */
    /* font-family: 'Arial', sans-serif; */ /* Change the font family to a cute font type */
    font-family:'Comic Sans MS', cursive;
    color: white; /* Set the text color to white */
    text-shadow: 6px 6px 4px black;
    }
    .welcome-msg {
        margin-top: 0;
        font-size: 24px;
        text-shadow: 2px 2px 4px black; /* Add text shadow */
    font-family: 'Comic Sans MS', cursive;
    }
    .image-container {
        display: flex;
        justify-content: center;
        margin-top: 20px;
    }
    .image-container img {
        width: 100px;
        height: 100px;
        margin: 0 10px;
        }
        
    .navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
    background-color: rgba(0, 0, 0, 0.5);
}

.nav-links {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
    justify-content: center; 
    
}

.nav-item-left {
    margin-right:20px;
    box-shadow: 0 0 10px rgba(255, 99, 71, 0.5); /* Pale red shadow */
    padding: 5px 10px;
}

.nav-item-left:hover {
    box-shadow: 0 0 15px rgba(255, 99, 71, 0.8); /* Darker shadow on hover */
}

.nav-item-right {
    margin-left: auto;
}

.nav-link {
    text-decoration: none;
    color: white;
    font-family: 'Comic Sans MS', cursive;
}

.btn-settings,
.btn-logout {
    background-color: transparent;
    border: none;
    color: white;
    cursor: pointer;
    font-size: 14px;
    font-family: 'Comic Sans MS', cursive;
}

.btn-settings:hover,
.btn-logout:hover {
    text-decoration: underline;
}

.logo {
        color: white; 
        font-size: 20px;
    }
    
  /*  h2 {
    margin-top: 45px;
    color: white; 
    font-family: Arial, sans-serif;
} */

.creative-welcome {
		margin-top: 30px;
        font-family: 'Comic Sans MS', cursive; /* Set a different cute font */
        font-size: 28px; /* Increase the font size */
        color: white; /* Set the text color to white */
        text-shadow: 2px 2px 4px black; /* Add a black shadow around the text */
        margin: 30px; /* Add some margin for spacing */
    }
    
        
    }
</style>
>>>>>>> Stashed changes
</head>
<body>
 <!-- <div class="background-image"></div> -->
<% 
		String status = (String) session.getAttribute("status"); 
	
		if(status != null && status.equals("success")){
			
			request.getSession().removeAttribute("status");
		} else {
			response.sendRedirect("userLogin.jsp");
		}
	
%>

<input type="hidden" id="status" value="<%=status%>">

<table hidden="">
<tr>
<td><%= userID %></td>
<td><%= userName %></td>
</tr>
</table>
 
<div class="navbar">
    <h1 class="logo">Welcome aboard, <%= userName %>!</h1>
    <ul class="nav-links">
        <li class="nav-item-left"><a class="nav-link" href="webSitehomePage.jsp">Home</a></li>
        <li class="nav-item-left"><a class="nav-link" href="userAllEvents.jsp">Events</a></li>
        
        <li class="nav-item-right">
            <form action="<%= request.getContextPath() %>/GetUserServlet" method="POST">
               <input type="hidden" name="userId" value="<%= userID %>">
               <input type="submit" class="btn-settings" value="Settings">
            </form>
        </li>
        <li class="nav-item-right">
            <form method="post" action="<%= logoutUrl %>">
<<<<<<< Updated upstream
                <input class="btn-logout" type="submit" value="Logout">
            </form>
        </li>
    </ul>
</div>
 --%>
<%--  <% System.out.println(userName); %>
<div class="navbar">
    <h1 class="logo">Welcome, <%= userName %></h1>
    <ul class="nav-links">
        <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="userAllEvents.jsp">Events</a></li>
        <li class="nav-item">
            <form action="<%= request.getContextPath() %>/GetUserServlet" method="POST">
               <input type="hidden" name="userId" value="<%= userID %>">
               <input type="submit" class="btn-settings" value="Settings">
            </form>
        </li>
        <li class="nav-item">
            <form method="post" action="<%= logoutUrl %>">
                <input class="btn-logout" type="submit" value="Logout">
=======
                <input class="btn-logout" type="submit" value="Log Out">
>>>>>>> Stashed changes
            </form>
        </li>
    </ul>
</div> --%>
 
 <header>
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
						<%-- 
						<li class="nav-item active"><a class="nav-link" aria-current="page" href="<%=index%>">Home</a></li>
						 --%>
						<li class="nav-item"> <a class="nav-link" href="userProfile.jsp">Profile</a></li>
						<li class="nav-item"><a class="nav-link" href="userAllBookings.jsp">Bookings</a></li>
						<li class="nav-item"><a class="nav-link" href="userAllEvents.jsp">Events</a></li>
						<li class="nav-item"><a class="nav-link" href="AboutUs.jsp">About us</a></li>
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

 <main>
        <section>
            <h2>Upcoming Events</h2>
            <div class="event-list">
                <!-- Here you can dynamically generate and display upcoming events -->
                <div class="event">
                    <h3>Event Title</h3>
                    <p>Date: January 1, 2025</p>
                    <p>Location: Event Venue</p>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
                <div class="event">
                    <h3>Event Title</h3>
                    <p>Date: January 1, 2025</p>
                    <p>Location: Event Venue</p>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
                <div class="event">
                    <h3>Event Title</h3>
                    <p>Date: January 1, 2025</p>
                    <p>Location: Event Venue</p>
                    <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                </div>
                <!-- Add more events as needed -->
            </div>
        </section>
  </main>
 
 
 


<h1>Evora</h1>
<!-- <h2>Log in Successful!</h2> -->

<div class="welcome-msg">
    <p class="creative-welcome">Welcome to Evora, your gateway to a realm of limitless experiences and boundless creativity<br> Dive into a world where every interaction is a discovery, every moment a chance to connect<br> Start your journey today and unlock the extraordinary!</p>
</div>


<<<<<<< Updated upstream
<footer>
        <p>&copy; 2025 Event Management System. All rights reserved.</p>
 </footer>
=======
>>>>>>> Stashed changes

</body>
</html>