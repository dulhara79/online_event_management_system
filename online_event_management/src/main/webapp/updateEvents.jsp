<!-- event updateEvent.jsp -->

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
<title>Insert title here</title>
</head>
<body>
<h2>Update Public Event</h2>

	<%
		String eventId = (String) request.getAttribute("eventId");
	
		IEventEventService iEventEventService = new EventServiceImpl();
		ArrayList<Event> eventList = iEventEventService.getEventById(eventId);
	
	%>
	
	<%
		for(Event events: eventList) {
	%>
		
		<form action="<%= request.getContextPath()%>/UpdateEventServlet" method="post">
		
			<input type="hidden" name="eventId" value="<%= events.getEventId() %>" >
			Event Name <input type="text" name="eventname" value="<%= events.getEventName() %>" >
			Event Date <input type="text" name="eventdate" value="<%= events.getEventDate() %>" >
			Event Venue <input type="text" name="eventvenue" value="<%= events.getVenue() %>" >
			Event Description <input type="text" name="eventdescription" value="<%= events.getEventDescription() %>" >
			Event Budget <input type="text" name="budget" value="<%= events.getBudget() %>" >
			<input type="submit" value="Update">
		
		</form>
		
	<%
		}
	%>

<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('img/img23.jpg');
        background-size: cover;
        background-attachment: fixed; 
    }
    form {
        max-width: 500px;
        margin: 20px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        color: #f2eded;
        text-align: center;
    }
    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 5px 0;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        width: 100%;
        background-color: #0ec22f;
        color: white;
        padding: 10px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>

</body>
</html>