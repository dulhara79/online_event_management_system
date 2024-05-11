<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Log Out</title>
</head>
<body>
	<!-- 

	<script type="text/javascript">
		alert("You have been logged out");
	</script>

	 -->

	<%
	String userId = (String) session.getAttribute("userId");
	
	session.invalidate(); // destroy the user's session
	response.sendRedirect("userLogin.jsp");

	if (userId != null && userId.startsWith("U0")) {
		response.sendRedirect("userLogin.jsp");// redirect to the user login page
	}
	if (userId != null && /* userId.startsWith("AD") */(userId.charAt(0)== 'A' && userId.charAt(1)== 'D')) {
		response.sendRedirect("adminLogin.jsp");// redirect to the login page
	}
	if (userId != null && userId.startsWith("CP")) {
		//  response.sendRedirect("companyLogin.jsp");// redirect to the login page
	}
	if (userId != null && userId.startsWith("EC")) {
		//  response.sendRedirect("coordinatorLogin.jsp");// redirect to the login page
	}
	%>

</body>
</html>