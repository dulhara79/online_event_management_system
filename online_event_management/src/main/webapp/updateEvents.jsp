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
<h2>Update Event</h2>

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


</body>
</html>