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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<title>Insert title here</title>

</head>
<body>
<h2>All Public Events</h2>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 20px;
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ae51f0;
    }
    th {
        background-color: #8327c4;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    tr:hover {
        background-color: #ddd;
    }
    form {
        display: inline-block; /* Form elements inline */
    }
    input[type="submit"] {
        background-color: #9928d1; 
        color: white;
        border: none;
        padding: 5px 10px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 12px;
        margin: 2px;
        cursor: pointer;
        border-radius: 3px;
    }
    input[type="submit"]:hover {
        background-color: #b778e3;
    }
    
    /* Style for Add event button */
    #add-event-btn {
        background-color: #733fd4;
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
</style>

<form action="<%= request.getContextPath()%>/index.jsp" method="post">
    <input type="submit" value="Add Event" id="add-event-btn">
</form>

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
						<button type="submit" class="btn btn-danger">
           				 <i class="fa-solid fa-trash fa-xl" style="color: #e61414;"></i>
      					</button>
					</form>
				
				</td>
			
			</tr>
		
		<%
			}
		%>
	
	
	</tbody>

</table>

<form action="<%= request.getContextPath()%>/view.jsp" method="post">
    <input type="submit" value="View Events" id="view-event-btn">
</form>

</body>
</html>