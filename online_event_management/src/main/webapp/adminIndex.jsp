<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% String logoutUrl = "logout.jsp"; %> 
   
<%
	String userID = (String) session.getAttribute("adminId");
 	String userName = (String) session.getAttribute("userName");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/adminIndexStyle.css">
</head>
<body>
<% 
		String status = (String) session.getAttribute("status"); 
	
		if(status != null && status.equals("success")){
			
			request.getSession().removeAttribute("status");
		} else {
			response.sendRedirect("adminLogin.jsp");
		}
	
%>

<input type="hidden" id="status" value="<%=status%>">

<nav class="navbar">
        <div class="container">
            <h1 class="logo">Admin <%= userName %></h1>
            <ul class="nav-links">
                <li><a href="#">Home</a></li>
                <li><a href="adminAllUser.jsp">Users</a></li>
                <li><a href="#">Settings</a></li>
                <li><a href="#">Reports</a></li>
                <li><a href="logout.jsp">Logout</a></li>
            </ul>
        </div>
    </nav>
    
<h1>This is admin home page</h1>
<a href="adminAddUser.jsp">Add user</a>
</body>
</html>