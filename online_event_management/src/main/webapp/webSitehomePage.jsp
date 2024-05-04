<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/webSiteHomePageStyle.css">
</head>
<body>
<header>
        <nav>
            <ul>
                <li><a href="userLogin.jsp">Login</a></li>
                <li><a href="userRegister.jsp">Register</a></li>
                <li><a href="allEvents.jsp">Events</a></li>
                <li><a href="about.html">About Us</a></li>
            </ul>
        </nav>
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
        
        <section>
        	<h2>Memories</h2>
        		<div class="event">
                   <img class="event party_img" alt="party1" src="partyImg1.jpg">
           
                   <img class="event party_img" alt="party2" src="partyImg2.jpg">
                
                   <img class="event party_img" alt="party3" src="partyImg3.jpg">
                   
                   <img class="event party_img" alt="party3" src="partyImg5.jpg">
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