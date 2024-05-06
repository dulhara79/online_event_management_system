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
	    background-image: url('img/img27.jpg');
	    background-size: cover;
	    background-attachment: fixed;
	    opacity: 0.9; 
	    z-index: -1;
	}

    h2 {
    	color: #000000;
        text-align: center;
        margin-bottom: 20px;
        border-bottom: 2px solid black;
        font-weight: bold;
    }
    
    
    /* Style for Add event button */
    #add-event-btn {
        background-color: #4CAF50; /* Green color */
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
    }
    
    #add-event-btn:hover {
        background-color: #45a049; /* Darker green on hover */
    }
    
    .event-cards {
    	display: flex;
    	flex-wrap: wrap;
	}

	.event-card {
    	flex: 1 1 300px; /* Flex-grow, flex-shrink, flex-basis */
    	border: 3px solid #000000;
    	border-radius: 5px;
    	padding: 10px;
    	margin: 10px;
    	color: #121212;
    	font-weight: bold;
    	font-size: 16px;
	}

	.event-info {
    	margin-top: 10px;
    	
	}
	
	.event-info p {
    	font-weight: bold;
	}
    
    
</style>

<form action="<%= request.getContextPath()%>/index.jsp" method="post">
    <input type="submit" value="Add Event" id="add-event-btn">
</form>


<%
    IEventEventService iEventService = new EventServiceImpl();
    ArrayList<Event> eventList = iEventService.getEvents();
%>

<div class="event-cards">
    <% for(Event event : eventList) { %>
        <div class="event-card">
            <h2><%= event.getEventName() %></h2>
            <p><strong>Event Date:</strong> <%= event.getEventDate() %></p>
            <p><strong>Event Venue:</strong> <%= event.getVenue() %></p>
            <p><strong>Event Description:</strong> <%= event.getEventDescription() %></p>
            <p><strong>Event Budget:</strong> <%= event.getBudget() %></p>
        </div>
    <% } %>
</div>




</body>
</html>