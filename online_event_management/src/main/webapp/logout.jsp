<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%
  session.invalidate(); // destroy the user's session
  response.sendRedirect("userLogin.jsp"); // redirect to the login page
%>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>You have been logged out!!</h1>

</body>
</html>