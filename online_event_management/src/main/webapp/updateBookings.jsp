<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.event.model.booking.Booking"%>
<%@page import="com.event.service.booking.BookingServiceImpl"%>
<%@page import="com.event.service.booking.IBookingService"%>

<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> --%>
    
<%@page import="com.event.service.event.IEventEventService"%>
<%@page import="com.event.service.event.EventServiceImpl"%>
<%@page import="com.event.model.event.Event"%>
<%@page import="java.util.ArrayList"%>
            
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Booking</title>

</head>
<body>
<h2>Update Your Bookings</h2>

<%
		String userId = (String) request.getAttribute("userId");
		String bookingId = (String) request.getAttribute("bookingId");
	
		IBookingService ibookingservice = new BookingServiceImpl();
		ArrayList<Booking> bookinglist = ibookingservice.getBookingById(bookingId);

%>
	
	<%
		System.out.println("Update booking jsp userid: " + userId);
		for(Booking bookings: bookinglist) {
	 %>
	
		<form action="<%= request.getContextPath()%>/UpdateBookingServlet" method="post">
			
			<input type="hidden" name="userId" value="<%= bookings.getUserId() %>" > 
			<input type="hidden" name="bookingId" value="<%= bookings.getBookingId() %>" >
			<input type="hidden" name="eventId" value="<%= bookings.getEventId() %>" >
			
			Booking Id <input type="text" name="bookingId" value="<%= bookings.getBookingId() %>" disabled="disabled">
			Event ID <input type="text" name="eventId" value="<%= bookings.getEventId() %>" disabled="disabled">
			Event Name <input type="text" name="eventName" value="<%= bookings.getEventName() %>" >
			Event Description <input type="text" name="eventDescription" value="<%= bookings.getEventDescription() %>" >
			
			<input type="submit" value="Update">
		</form>
		
	<%
		}
	%>

</body>
</html>