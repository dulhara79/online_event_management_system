<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/userAllEventsStyle.css">
</head>
<body>

<%-- <% 
		String status = (String) session.getAttribute("status"); 
	
		if(status != null && status.equals("success")){
			
			System.out.println(status);
			
			request.getSession().removeAttribute("status");
		} else {
			System.out.println(status);
			response.sendRedirect("userLogin.jsp");
		}
	
%> --%>

<%-- 
<input type="hidden" id="status" value="<%=status%>">
 --%>
 

 
<table hidden="">
<tr>
<td><%= userID %></td>
</tr>

<h1>All Events</h1>

</table>

	<form action="<%= request.getContextPath() %>/GetBookingServlet" method="POST">
	<input type="hidden" name="userId" value="<%= userID %>">
	<button type="submit" class="edit-btn">View my Booking</button>
	</form>
<div class="container">
	
    <table>
        <thead>
            <tr>
                <th>Event ID</th>
                <th>Event name</th>
                <th>Event Date</th>
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
                <td><%= event.getEventDate() %></td>
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

 
</body>
</html>