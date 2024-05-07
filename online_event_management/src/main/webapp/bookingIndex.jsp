<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Insert Booking</h1>

<form action="<%= request.getContextPath()%>/AddBookingServlet" method="post">

	User Name <input type="text" name="UserName">
	Event Name <input type="text" name="EventName">
	Payment ID <input type="text" name="PaymentID">
	Service Name <input type="text" name="ServiceName">
	Event Description <input type="text" name="EventDescription">
	
	<input type="submit" value="add booking">

</form>

</body>
</html>