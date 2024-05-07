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

<table hidden="">
<tr>
<td><%= userID %></td>
<td><%= userName %></td>
</tr>
</table>
<%-- 
<div class="navbar">
    <div class="container">
        <h1 class="logo">Welcome, <%= userName %></h1>
        <ul class="nav-links">
            <li><a href="#">Home</a></li>
            <li><a href="#">Users</a></li>
            <li>
            	<form action="<%= request.getContextPath() %>/GetUserServlet" method="POST">
                   <input type="hidden" name="userId" value="<%= userID %>">
                   <input type="submit" value="Settings">
                </form>
            </li>
            <li>
                <form method="post" action="<%= logoutUrl %>">
                    <input class="btn-logout" type="submit" value="Logout">
                </form>
            </li>
        </ul>
    </div>
</div>
 --%>
 
 <div class="navbar">
    <h1 class="logo">Welcome, <%= userName %></h1>
    <ul class="nav-links">
        <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
        <li class="nav-item"><a class="nav-link" href="#">Events</a></li>
        <li class="nav-item">
            <form action="<%= request.getContextPath() %>/GetUserServlet" method="POST">
               <input type="hidden" name="userId" value="<%= userID %>">
               <input type="submit" class="btn-settings" value="Settings">
            </form>
        </li>
        <li class="nav-item">
            <form method="post" action="<%= logoutUrl %>">
                <input class="btn-logout" type="submit" value="Logout">
            </form>
        </li>
    </ul>
</div>
 
<%-- <form method="post" action="<%= logoutUrl %>" class=" ">
	<input class="btn btn-outline-primary" type="submit" value="Logout">
</form> --%>

<h1>LOGGIN SUCCESSFULL</h1>

</body>
</html>