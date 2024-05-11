<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Welcome to Evora</title>
<link rel="stylesheet" type="text/css" href="css/webSiteHomePageStyle.css">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

<style>
    body {
        background-image: url('https://i.pinimg.com/originals/7e/dd/00/7edd00b072baaf245ed807cf38222b5c.jpg');
        background-size: cover;
        text-align: center;
        color: white;
        font-family: 'Comic Sans MS', cursive;
    }
    header {
    background: url('https://i.pinimg.com/originals/71/59/74/7159745dd98afea51b604f2f8c443ab7.jpg') center 10%/cover, /* Use the background image with top alignment and cover size */
               rgba(0,0,0,0.7); /* Add a black semi-transparent overlay */
    padding: 20px;
    }
    .slogan {
        font-size: 24px;
        margin-bottom: 20px;
    }
    
    .slogan-top {
    margin-top: -30px; /* Adjust this value to move the text higher */
}
    
    /* Add a shadow effect to the text for better visibility */
header h1 {
    font-size: 93px; /* Set the font size to 122px */
    font-family: 'Comic Sans MS', cursive; /* Set the font family to Comic Sans */
    background: linear-gradient(to right, green, blue, red, orange, yellow, indigo, violet); /* Apply rainbow colors as background */
    -webkit-background-clip: text; /* Apply gradient as text color */
    color: white; /* Set text color to white */
    letter-spacing: 7px;
    margin-top: 80px; /* Add margin to push the text down */
    text-shadow: 5px 5px 2px rgba(0, 0, 0, 0.5); /* Add a shadow effect */
}

/* Add a shadow effect to the text for better visibility */
header .slogan {
    font-size: 22px; /* Set the font size to 24px */
    font-family: 'Comic Sans MS', cursive;
    color: white; /* Set the color to black */
    text-shadow: 4x 4px 1px rgba(0, 0, 0, 0.5);
    margin-top: 10px;
}
    
 .event-list, .event {
    font-family: 'Comic Sans MS', cursive; /* Set font family to Comic Sans */
}
    
    /* Adjust text color for better visibility */
.event-list, .event, footer {
    /* background-color: rgba(0, 0, 0, 0.3) */; /* Add a semi-transparent black background */
    color: white; /* Change text color to white */
}

/* Adjust text color for better visibility */
.event, footer {
    background-color: rgba(0, 0, 0, 0.3); /* Add a semi-transparent black background */
    color: white; /* Change text color to white */
}

.header-text {
     background: transparent; /* Make the background transparent */
    display: inline-block; /* Make the container inline-block to fit its content */
    padding: 10px 20px; /* Add padding for spacing */
    border-radius: 10px; /* Add border radius for rounded corners */
    margin-top: -20px; /* Add margin to push the text down */
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Add border radius for rounded corners */
    
}

nav {
    background: linear-gradient(to bottom, rgba(0,0,0,0.7), rgba(0,0,0,0.7)); /* Apply black gradient background */
    padding: 10px;
    margin-top: 10px
}

nav ul {
    text-align: left;
}

nav ul li {
    display: inline;
    margin-right: 20px;
    margin-left: 0;
}

nav ul li:first-child {
    margin-left: 0; /* Remove left margin for 'Register' */
}

nav ul li:nth-child(2) {
    margin-right: 0; /* Remove right margin for 'Login' */
}

nav ul li:nth-child(3) {
    margin-left: 20px; /* Add left margin for 'Events' */
}

nav ul li a {
    color: white;
    text-decoration: none;
}
    
section h2 {
    /* font-family: 'Comic Sans MS', cursive; */
     font-size: 28px; /* Set the font size to 28px */
    text-shadow: 4px 4px 2px rgba(0, 0, 0, 0.5);
    margin-top: 0;
}

section h2 {
   /*  font-family: 'Comic Sans MS', cursive; */
    text-shadow: 2px 2px 2px rgba(0, 0, 0, 0.5); /* Add a shadow effect */
    background-color: rgba(0, 0, 0, 0.2); /* Add a semi-transparent black background */
    color: white; /* Change text color to white */
    padding: 10px; /* Add padding for spacing */
    border-radius: 10px; /* Add border radius for rounded corners */
    margin-bottom: 20px; /* Add margin to separate from content below */
}

.event-list .event:nth-of-type(1) h3 {
    color: yellow; /* "Colours" Art Exhibition */
}

.event-list .event:nth-of-type(2) h3 {
    color: yellow; /* "Fiesta" Food Fest */
}

.event-list .event:nth-of-type(3) h3 {
    color: yellow; /* "Stars" Musical Show */
}

section p {
    font-family: 'Comic Sans MS', cursive;
}

    
</style>
</head>
<body>
<header>

<div class="header-text">
	<h1>Evora</h1>
    <p class="slogan slogan-top">Where Memories Shine Brighter and Stories Get Happier</p>
    </div>

        <nav>
            <ul>
                <li><a href="userLogin.jsp">Login</a></li>
                <li><a href="userRegister.jsp">Register</a></li>
                <!-- <li><a href="allEvents.jsp">Events</a></li> -->
                <li><a href="aboutus.jsp">About Us</a></li>
            </ul>
        </nav>
    </header> 
<!-- 		<nav class="navbar navbar-expand-lg navbar-light bg-white">
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
		</nav> -->
	

    <main>
        <section>
            <h2>Upcoming Events</h2>
            <div class="event-list">
                <!-- Here you can dynamically generate and display upcoming events -->
                <div class="event">
                    <h3>"Stars" Musical Show</h3>
                    <p>Date: May 18, 2024</p>
                    <p>Location: Loreal Hall</p>
                    <p>Experience the smooth sounds of jazz in a magical setting. Relax under the stars as talented musicians take you on a musical journey with their soulful tunes!</p>
                </div>
                <div class="event">
                    <h3>"Fiesta" Food Fest</h3>
                    <p>Date: June 14, 2024</p>
                    <p>Location:  Downtown Square</p>
                    <p>Experience a culinary adventure with flavors from around the globe. Sample delicious dishes, watch live cooking demonstrations, and enjoy the vibrant atmosphere of this food lover's paradise!</p>
                </div>
                <div class="event">
                    <h3>"Colours" Art Exhibition</h3>
                    <p>Date: August 31, 2024</p>
                    <p>Location: TD Art Gallery</p>
                    <p>Experience a world of creativity and beauty at this stunning art exhibition. Featuring works by local and international artists, this event showcases the diversity and richness of the art world!</p>
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
                   
                   <!-- <img class="event party_img" alt="party3" src="img/partyImg5.jpg"> -->
                </div>
        
        </section>
        
        <section>
            <h2>What is Evora?</h2>
            <p>Ever wished life had a rewind button? Welcome to Evora, where we're all about capturing life's best moments and hitting the replay button whenever you please!</p>
    <p>Think of us as your personal memory maestros, here to help you curate the perfect playlist of life's greatest hits. From heart-pounding concerts to mouth-watering food fests and mind-bending art shows, we're your backstage pass to the ultimate show called life.</p>
    <p>Join us in our mission to turn the ordinary into extraordinary, the mundane into magical, and the everyday into unforgettable. Let's paint the town with memories that'll make even the wildest dreams jealous!</p>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 - Event Management System. All Rights Reserved.</p>
    </footer>
</body>
</html>