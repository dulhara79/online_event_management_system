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
<title>Your bookings</title>
<link rel="stylesheet" type="text/css" href="css/userAllBookingsStyle.css">
<style>
    /* Style for the buttons */
    button {
        background-color: #ADD8E6; /* Light blue color */
        padding: 10px 20px; /* Padding around the text */
        border: none; /* Remove button border */
        border-radius: 5px; /* Rounded corners */
        cursor: pointer; /* Cursor style */
    }

    /* Center the buttons horizontally */
    .button-container {
        text-align: center;
        margin-top: 20px; /* Add some space above the buttons */
    }
    
</style>

</head>
<body>


<table hidden="">
<tr>
<td><%= userID %></td>
</tr>
</table>

<h1 class="bookings-heading">Your Bookings With Evora</h1>

<div class="container">
    <table>
        <thead>
            <tr>
            	<th>Booking ID</th>
                <th>Event ID</th>
                <th>Event Name</th>
                <th>Event Description</th>
                <th>Edit</th>
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
                	<form action="<%= request.getContextPath() %>/UpdateBookingServlet" method="POST">
                        <input type="hidden" name="bookingId" value="<%= booking.getBookingId() %>">
                        <input type="hidden" name="eventId" value="<%= booking.getEventId() %>">
                        <input type="hidden" name="eventName" value="<%= booking.getEventName() %>">
                        <input type="hidden" name="eventDescription" value="<%= booking.getEventDescription() %>">
                        <button type="submit" class="edit-btn">Edit</button>
                    </form>
                </td>
                
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

<div class="button-container">
    <button onclick="goBack()">Go back</button>
    <button onclick="proceedToPay()">Proceed to Pay</button>
    <button onclick="saveAndExit()">Save and Exit</button>
</div>

<script>
    function goBack() {
        window.history.back(); // Go back to the previous page
    }

    function proceedToPay() {
        // Add your code here for handling the Proceed to Pay button click
        // For example, redirecting to a new payment page
        window.location.href = "payment-page.jsp"; // Redirect to the payment page
    }

    function saveAndExit() {
        // Add your code here for handling the Save and Exit button click
        window.location.href = "UserHome.jsp"; // Redirect to the UserHome page
    }
</script>

</body>
</html>