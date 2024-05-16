<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<% String logoutUrl = "logout.jsp"; %> 
   
<%
	String companyId = (String) session.getAttribute("companyId");
 	String companyName = (String) session.getAttribute("companyName");
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company-Home</title>

<!-- <link rel="stylesheet" type="text/css" href="css/companyIndexStyle.css"> -->

<style>
     body {
        background-color:#f2f6fc;
		color: #69707a;
        
    }
    

    
    h1 {
        margin-top: 40px;
        font-size: 88px; /* Change the font size to make it bigger */
    /* font-family: 'Arial', sans-serif; */ /* Change the font family to a cute font type */
    font-family:'Comic Sans MS', cursive;
    color: white; /* Set the text color to white */
    text-shadow: 6px 6px 4px black;
    }
    .welcome-msg {
        margin-top: 0;
        font-size: 24px;
        text-shadow: 2px 2px 4px black; /* Add text shadow */
    font-family: 'Comic Sans MS', cursive;
    }
    .image-container {
        display: flex;
        justify-content: center;
        margin-top: 20px;
    }
    .image-container img {
        width: 100px;
        height: 100px;
        margin: 0 10px;
        }
        
    .navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
    background-color: rgba(0, 0, 0, 0.5);
}

.nav-links {
    display: flex;
    list-style: none;
    margin: 0;
    padding: 0;
    justify-content: center; 
    
}

.nav-item-left {
    margin-right:20px;
    box-shadow: 0 0 10px rgba(255, 99, 71, 0.5); /* Pale red shadow */
    padding: 5px 10px;
}

.nav-item-left:hover {
    box-shadow: 0 0 15px rgba(255, 99, 71, 0.8); /* Darker shadow on hover */
}

.nav-item-right {
    margin-left: auto;
}

.nav-link {
    text-decoration: none;
    color: white;
    font-family: 'Comic Sans MS', cursive;
}

.btn-settings,
.btn-logout {
    background-color: transparent;
    border: none;
    color: white;
    cursor: pointer;
    font-size: 14px;
    font-family: 'Comic Sans MS', cursive;
}

.btn-settings:hover,
.btn-logout:hover {
    text-decoration: underline;
}

.logo {
        color: white; 
        font-size: 20px;
    }
    
  /*  h2 {
    margin-top: 45px;
    color: white; 
    font-family: Arial, sans-serif;
} */

.creative-welcome {
		margin-top: 30px;
        font-family: 'Comic Sans MS', cursive; /* Set a different cute font */
        font-size: 28px; /* Increase the font size */
        color: white; /* Set the text color to white */
        text-shadow: 2px 2px 4px black; /* Add a black shadow around the text */
        margin: 30px; /* Add some margin for spacing */
    }
    
        
    }
</style>
</head>
<body>
 <!-- <div class="background-image"></div> -->
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
<td><%= companyId %></td>
<td><%= companyName %></td>
</tr>
</table>
 
<div class="navbar">
    <h1 class="logo">Welcome, <%= companyName %>!</h1>
    <ul class="nav-links">
        <li class="nav-item-left"><a class="nav-link" href="#">Home</a></li>
        <li class="nav-item-left"><a class="nav-link" href="company.jsp">Add Company</a></li>
        
        <li class="nav-item-right">
            <form action="<%= request.getContextPath() %>/Getcompanyservlet" method="POST">
               <input type="hidden" name="CompanyId" value="<%= companyId %>">
               <input type="hidden" name="companyName" value="<%= companyName %>">
               <input type="submit" class="btn-settings" value="Settings">
            </form>
        </li>
        <li class="nav-item-right">
            <form method="post" action="<%= logoutUrl %>">
                <input class="btn-logout" type="submit" value="Log Out">
            </form>
        </li>
    </ul>
</div>
 
 


<h1>Company</h1>
<!-- <h2>Log in Successful!</h2> -->

<div class="welcome-msg">
    <p class="creative-welcome">This is company home page</p>
</div>



</body>
</html>