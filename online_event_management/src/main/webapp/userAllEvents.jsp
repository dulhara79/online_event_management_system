<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="com.event.model.event.Event"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.event.service.event.EventServiceImpl"%>
<%@page import="com.event.service.event.IEventEventService"%>
    
<% String logoutUrl = "logout.jsp"; %> 
   
<%
	String userID = (String) session.getAttribute("userId");
    System.out.println(userID);
    /* String userName = (String) session.getAttribute("userName"); */
%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>All Available Events</title>
    <link rel="stylesheet" type="text/css" href="css/userAllEventsStyle.css">
</head>
<body>

<h1>All Events</h1>



<div class="container">
    
    <table>
        <thead>
            <tr>
                <th>Event ID</th>
                <th>Event name</th>
                <th>Venue</th>
                <th>Event description</th>
                <th>Book</th>
            </tr>
        </thead>
        <tbody>               
             <%        
                IEventEventService ieventeventservice = new EventServiceImpl();
                ArrayList<Event> eventList = ieventeventservice.getEvents();
                for(Event event: eventList) {
            %>  
            <tr>
                <td><%= event.getEventId() %></td>
                <td><%= event.getEventName() %></td>
                <td><%= event.getVenue() %></td>
                <td><%= event.getEventDescription() %></td>
                <td>
                    <form action="<%= request.getContextPath() %>/AddBookingServlet" method="POST">
                        <input type="hidden" name="userId" value="<%= userID %>">
                        <input type="hidden" name="eventId" value="<%= event.getEventId() %>">
                        <input type="hidden" name="eventName" value="<%= event.getEventName() %>">
                        <input type="hidden" name="eventDescription" value="<%= event.getEventDescription() %>">
                        <button type="submit" class="edit-btn">Book</button>
                    </form>
                </td>
            </tr>
                <%
                }
                %>
            </tbody>
    </table>
</div>

   <div style="text-align: center; margin-bottom: 45px; margin-top: 30px; ">
        <form action="<%= request.getContextPath() %>/GetBookingServlet" method="POST" style="display: inline-block;">
            <input type="hidden" name="userId" value="<%= userID %>">
            <button type="submit" class="edit-btn">View my Booking</button>
        </form>
        <form action="javascript:history.back()" style="display: inline-block;">
            <button type="submit" class="edit-btn">Go Back</button>
        </form>
    </div>

</body>
</html>
