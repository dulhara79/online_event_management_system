<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "com.event.model.event.Event" %>    
<%@ page import = "com.event.service.event.IEventEventService" %>
<%@ page import = "com.event.service.event.EventServiceImpl" %>
<%@ page import = "java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<title>Insert title here</title>
</head>
<body>

<h2>View Public Events</h2>

 <style>

    body {
    font-family: Arial, sans-serif;
    position: relative;
	}
	
	body::before {
	    content: "";
	    position: fixed;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    background-image: url('img/img46.jpg');
	    background-size: cover;
	    background-attachment: fixed;
	    opacity: 0.5; 
	    z-index: -1;
	}

    h2 {
    	color: #250536; 
    	text-align: center; 
    	margin-bottom: 10px; 
    	border-bottom: 2px solid black; 
    	font-weight: bold; 
    	font-size: 26px;
    	font-family: 'Poppins', sans-serif;
    }
    
    
    
    #add-event-btn {
        background-color: #5c1f87; 
        border: none;
        color: white;
        padding: 8px 20px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 14px;
        margin-top: 20px;
        cursor: pointer;
        border-radius: 3px;
        transition: transform 0.5s ease, opacity 0.5s ease;
    }
    
    #add-event-btn:hover {
    	transform: scale(1.05); 
    	opacity: 0.9;
        background-color: #cfa1f0; 
    }
    
    .event-cards {
    	display: flex;
    	flex-wrap: wrap;
    	
    	
	}

	 .event-card {
	    flex: 1 1 300px; 
	    border: 1px solid #3c0463; 
	    border-radius: 5px;
	    padding: 10px;
	    margin: 10px;
	    color: #000;
	    font-weight: bold;
	    border-radius: 15px;
	    font-size: 16px;
	    background: linear-gradient(to bottom right, rgba(128, 0, 128, 0.5), rgba(153, 50, 204, 0.5));
	    font-family: 'Your Sans-serif Font', sans-serif;
	    text-align: center;
	    transition: transform 0.3s ease, opacity 0.3s ease;
	}  
	
	
	.event-card:hover {
    	transform: scale(1.05); 
    	opacity: 0.9; 
	}	

	.event-info {
    	margin-top: 10px;
    	
	}

	
	.event-info p {
    	font-weight: bold;
	}
	
	.content{
		text-align: center;
	}
	
	.content{
		font-family: 'Poppins', sans-serif;
		font-size: 80px;
	    color: rgba(128, 0, 128, 1.0); 
	    font-weight: 800;
	    background-color: rgba(255, 255, 255, 0.3);
	    padding: 20px;

	}
	
	 .content p{
	 	margin: 0;
		text-decoration: none;
		color: #000;
		font-size: 24px;


	} 
	
	
    .event-gallery {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        margin-top: 20px;
    }

    .event-image {
        width: 250px;
        height: 200px;
        margin: 10px;
        overflow: hidden;
        border-radius: 15px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .event-image img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.3s ease;
    }

    .event-image:hover img {
        transform: scale(1.1);
    }
    
</style> 







<%
    IEventEventService iEventService = new EventServiceImpl();
    ArrayList<Event> eventList = iEventService.getEvents();
%>


<div>
	<div class="hero">
		
	    <nav class="content">
	        <h1>Evora Events </h1>
	        <p>Explore Our View Event Page!</p>
	        		
		</nav>
    	
	</div>

	<form action="<%= request.getContextPath()%>/index.jsp" method="post">
		   <input type="submit" value="Add Event" id="add-event-btn">
	</form>
		
	<div class="event-cards">
		   <% for(Event event : eventList) { %>
		    	
		       <div class="event-card">
		        <nav>
		        	<h2><%= event.getEventName() %></h2>
			           <p><strong>Event Date:</strong> <%= event.getEventDate() %></p>
			           <p><strong>Event Venue:</strong> <%= event.getVenue() %></p>
			           <p><strong>Event Description:</strong> <%= event.getEventDescription() %></p>
			           <p><strong>Event Budget:</strong> <%= event.getBudget() %></p>
		        </nav>
		        
		            
		       </div>
		   <% } %>
	</div>
	
	<div class="event-gallery">
        <div class="event-image">
            <img src="img/img42.jpg" alt="Event 1">
        </div>
        <div class="event-image">
            <img src="img/img43.jpg" alt="Event 2">
        </div>
       <div class="event-image">
            <img src="img/img7.jpg" alt="Event 3">
        </div>
        <div class="event-image">
            <img src="img/img9.jpg" alt="Event 4">
        </div>
    </div>
		
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.10.2/umd/popper.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.min.js"></script>
	
	
</div>

</body>
</html> 