<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<% String logoutUrl = "logout.jsp"; %> 
   
<%
	String userID = (String) session.getAttribute("userId");
 	String userName = (String) session.getAttribute("userName");
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/userHomeStyle.css">
</head>
<body>
<% 
		String status = (String) session.getAttribute("status"); 
	
		if(status != null && status.equals("success")){
			
			request.getSession().removeAttribute("status");
		} else {
			response.sendRedirect("userLogin.jsp");
		}
	
%>

<input type="hidden" id="status" value="<%=status%>">

<%-- <table>
<tr>
<td><%= userID %></td>
<td><%= userName %></td>
</tr>
</table> --%>

<div class="navbar">
    <div class="container">
        <h1 class="logo">Welcome, <%= userName %></h1>
        <ul class="nav-links">
            <li><a href="#">Home</a></li>
            <li><a href="#">Users</a></li>
            <li><a href="#">Settings</a></li>
            <li>
                <form method="post" action="<%= logoutUrl %>">
                    <input class="btn-logout" type="submit" value="Logout">
                </form>
            </li>
        </ul>
    </div>
</div>

<!-- <div class="container">
    <h1></h1>
    <h2></h2>
    <h3>Login Successful</h3>
</div> -->




<%-- <form method="post" action="<%= logoutUrl %>" class=" ">
	<input class="btn btn-outline-primary" type="submit" value="Logout">
</form> --%>

<h1>LOGGIN SUCCESSFULL</h1>
</body>
</html>