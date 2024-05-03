<!-- event allEvent.jsp -->

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
<h2>All Events</h2>

<table>
	<thead>
		<tr>
			<th> Event ID </th>
			<th> Event Name </th>
			<th> Event Date </th>
			<th> Event Venue </th>
			<th> Event Description </th>
			<th> Event Budget </th>
			<th> Edit </th>
			<th> Delete </th>
		</tr>
	</thead>
	
	<tbody>
		
		<%
		
			IEventEventService iEventService = new EventServiceImpl();
			ArrayList<Event> eventList = iEventService.getEvents();
		%>
		
		<%
			for(Event events: eventList) {
		%>
		
			<tr>
				<td><%= events.getEventId() %></td>
				<td><%= events.getEventName() %></td>
				<td><%= events.getEventDate() %></td>
				<td><%= events.getVenue() %></td>
				<td><%= events.getEventDescription() %></td>
				<td><%= events.getBudget() %></td>
				
				<td>
					<form action="<%= request.getContextPath()%>/GetEventServlet" method="post">
						<input type="hidden" name="eventId" value="<%= events.getEventId() %>"> 
						<input type="submit" value="Edit">
					</form>
				
				</td>
				
				<td>
					<form action="<%= request.getContextPath()%>/DeleteEventServlet" method="post">
						<input type="hidden" name="eventId" value="<%= events.getEventId() %>"> 
						<input type="submit" value="Delete">
					</form>
				
				</td>
			
			</tr>
		
		<%
			}
		%>
	
	
	</tbody>

</table>

</body>
</html>