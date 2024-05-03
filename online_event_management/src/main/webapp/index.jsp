<!-- Event index.jsp -->

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>This is home page</h1>

<h2>Insert Event</h2>

<form action="<%= request.getContextPath()%>/AddEventServlet" method = "post">

	Event Name <input type="text" name="eventname">
	Event Date <input type="text" name="eventdate">
	Event Venue <input type="text" name="eventvenue">
	Event Description <input type="text" name="eventdescription">
	Event Budget <input type="text" name="budget">
	<input type="submit" value="Add event details">


</form>
</body>
</html>