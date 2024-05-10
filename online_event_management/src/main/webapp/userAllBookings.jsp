<%@page import="com.event.model.booking.Booking"%>
<%@page import="com.event.service.booking.BookingServiceImpl"%>
<%@page import="com.event.service.booking.IBookingService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.event.service.event.IEventEventService"%>
<%@page import="com.event.service.event.EventServiceImpl"%>
<%@page import="com.event.model.event.Event"%>
<%@page import="java.util.ArrayList"%>
        
<% String logoutUrl = "logout.jsp"; %> 
   
<%
	String userID = (String) session.getAttribute("userId");
 	/* String userName = (String) session.getAttribute("userName"); */
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/userAllBookingsStyle.css">
</head>
<body>

<%-- <% 
		String status = (String) session.getAttribute("status"); 
	
		if(status != null && status.equals("success")){
			
			request.getSession().removeAttribute("status");
		} else {
			response.sendRedirect("userLogin.jsp");
		}
	
%>

<input type="hidden" id="status" value="<%=status%>">
 --%>
<table hidden="">
<tr>
<td><%= userID %></td>
</tr>
</table>

<h1>Your Booking</h1>

<div class="container">
    <table>
        <thead>
            <tr>
            	<th>Booking ID</th>
                <th>Event ID</th>
                <th>Event name</th>
                <th>Event description</th>
                <th>Remove</th>
            </tr>
        </thead>
        <tbody>
        	<%        
			    IBookingService ibookingservice = new BookingServiceImpl();
			    ArrayList<Booking> bookingList = ibookingservice.getBookingByUserId(userID);
			    for(Booking booking: bookingList) {
			%>                 
            <tr>
            	<td><%= booking.getBookingId() %></td>
                <td><%= booking.getEventId() %></td>
                <td><%= booking.getEventName() %></td>
                <td><%= booking.getEventDescription() %></td>
                <td>
                    <form action="<%= request.getContextPath() %>/DeleteBookingServlet" method="POST">
                        <input type="hidden" name="bookingId" value="<%= booking.getBookingId() %>">
                        <button type="submit" class="edit-btn">Remove</button>
                    </form>
                </td>
            </tr>
			<%
			System.out.println("user id in all booking jsp"+userID);
			System.out.println("booking id in all booking jsp"+booking.getBookingId());
			    } 
			 %>
        </tbody>
    </table>
</div>

</body>
</html>