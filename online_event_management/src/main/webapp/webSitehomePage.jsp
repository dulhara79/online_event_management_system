<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="css/webSiteHomePageStyle.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


</head>
<body>
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
					  <li class="nav-item"><span class="navbar-text">Welcome! User</span></li>
					</ul>
					
					<ul class="navbar-nav mb-2 mb-lg-0 ms-auto">
						<li class="nav-item"> <a class="nav-link" href="userLogin.jsp">LogIn</a></li>
						<li class="nav-item"> <a class="nav-link" href="userRegister.jsp">Register</a></li>				
						<li class="nav-item"><a class="nav-link" href="view.jsp">Events</a></li>
						<li class="nav-item"> <a class="nav-link" href="userProfile.jsp">Profile</a></li>
						<li class="nav-item"><a class="nav-link" href="AboutUs.jsp">About us</a></li>				
					</ul>
				</div>
			</div>
		</nav>
	<!-- Navbar -->
</header>
<!-- <header>
        <nav>
            <ul>
                <li><a href="userLogin.jsp">Login</a></li>
                <li><a href="userRegister.jsp">Register</a></li>
                <li><a href="allEvents.jsp">Events</a></li>
                <li><a href="about.html">About Us</a></li>
            </ul>
        </nav>
    </header> -->

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
        
        <section>
        	<h2>Memories</h2>
        		<div class="event">
                   <img class="event party_img" alt="party1" src="img/partyImg1.jpg">
           
                   <img class="event party_img" alt="party2" src="img/partyImg2.jpg">
                
                   <img class="event party_img" alt="party3" src="img/partyImg3.jpg">
                   
                   <img class="event party_img" alt="party3" src="img/partyImg5.jpg">
                </div>
        
        </section>
        
        <section>
            <h2>About Us</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.</p>
        </section>
    </main>

    <footer>
        <p>&copy; 2025 Event Management System. All rights reserved.</p>
    </footer>
</body>
</html>