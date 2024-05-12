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

<style>
    body {
        background-image: url('https://wallpapercave.com/wp/LtRbuze.jpg');
        background-size: cover; /* Adjust as needed */
        font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        /* Add other background properties if needed */
    }
 
        h2 {
    text-align: center;
    margin-top: 30px;
    color: white;
    font-family: Comic Sans MS, cursive, sans-serif;
    font-size: 50px;
    letter-spacing: 2px;
    text-shadow: 2px 2px 2px rgba(0,0,0,0.5);
}

        form {
             width: 60%; /* Increase the width to 60% */
    margin: 0 auto;
    background-color: rgba(255, 255, 255, 0.7);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.7);
            font-family: Comic Sans MS, cursive, sans-serif;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin-bottom: 10px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        
        /* Use Comic Sans MS for input placeholders */
	input[type="text"]::placeholder {
    font-family: "Comic Sans MS", cursive, sans-serif;
}
        
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            float: right;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        
table {
    width: 80%;
    height: 100px; /* Set the height to 300px or adjust as needed */
    margin: 20px auto;
    border-collapse: collapse;
    background-color: rgba(255, 255, 255, 0.7); /* Use rgba for transparency */
}

th, td {
    padding: 4px;
    border: 1px solid #ddd;
    font-family: Comic Sans MS, cursive, sans-serif;
}

th {
    background-color: #f2f2f2;
}

input[type="submit"] {
    background-color: #800080; /* Purple color */
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    float: right;
}
input[type="submit"]:hover {
    background-color: #6a006a; /* Darker purple color on hover */
}

     
    </style>


</head>
<body>
<h2>Update Your Bookings</h2>

<%
		String userId = (String) request.getAttribute("userId");
		String bookingId = (String) request.getAttribute("bookingId");
	
		IBookingService ibookingservice = new BookingServiceImpl();
		ArrayList<Booking> bookinglist = ibookingservice.getBookingById(bookingId);

%>
    <table>
        <tr>
            <th>Booking ID</th>
            <th>Event ID</th>
            <th>Event Name</th>
            <th>Event Description</th>
        </tr>
        <% for (Booking bookings : bookinglist) { %>
        <tr>
            <td><%= bookings.getBookingId() %></td>
            <td><%= bookings.getEventId() %></td>
            <td><%= bookings.getEventName() %></td>
            <td><%= bookings.getEventDescription() %></td>
        </tr>
        <% } %>
    </table>
	
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