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
		
		<form action="<%= request.getContextPath()%>/UpdateEventServlet" method="post" onsubmit="return validateForm()">
		
			<input type="hidden" name="eventId" value="<%= events.getEventId() %>">
			Event Name <input type="text" id="eventname" name="eventname" value="<%= events.getEventName() %>" >
			Event Date <input type="text" id="eventdate" name="eventdate" value="<%= events.getEventDate() %>" >
			Event Venue <input type="text" name="eventvenue" value="<%= events.getVenue() %>" >
			Event Description <input type="text" name="eventdescription" value="<%= events.getEventDescription() %>" >
			Event Budget <input type="text" id="budget" name="budget" value="<%= events.getBudget() %>" >
			<input type="submit" value="Update">
		
		</form>
		
	<%
		}
	%>
	
<script>
    function validateForm() {
        var eventName = document.getElementById("eventname").value;
        if (eventName.charAt(0) !== eventName.charAt(0).toUpperCase()) {
            alert("Event name must start with an uppercase letter.");
            return false;
        }
        
        var budget = document.getElementById("budget").value;
        if (budget < 10000) {
            alert("Budget must be greater than or equal to 10000.");
            return false;
        }
        
        var eventDate = document.getElementById("eventdate").value;
        var today = new Date();
        var selectedDate = new Date(eventDate);
        
        if (selectedDate.getTime() < today.getTime()) {
            alert("Event date must be today or a future date.");
            return false;
        }
        
        return true;
    }
</script>

<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('img/img55.jpg');
        background-size: cover;
        background-attachment: fixed; 
    }
    form {
        max-width: 500px;
        margin: 20px auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.9);
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
        background-color: #942cde;
        color: white;
        padding: 10px 20px;
        margin: 8px 0;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #be6ee6;
    }
</style>

</body>
</html>