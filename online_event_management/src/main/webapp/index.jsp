
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

</head>
<body>


<!-- Event index.jsp -->
<h1>Insert Public Event</h1>

<style>
    /* body {
        font-family: Arial, sans-serif;
        
        background-image: url('img/img6.jpg');
        margin: 0;
        padding: 0;
        background-repeat: no-repeat;
        background-attachment: fixed;
    } */
     body {
    font-family: Arial, sans-serif;
    position: relative;
	}
	
	body::before {
	    content: "";
	    position: fixed;
	    top: 0;
	    left: 0;
	    width: 100%;
	    height: 100%;
	    background-image: url('img/img50.jpg');
	    background-size: cover;
	    background-attachment: fixed;
	    opacity: 0.8; 
	    z-index: -1;
	}
    
    h1, h2 {
        color: #f2eded;
        text-align: center;
    }
    form {
        background-color: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
        width: 300px;
        margin: 20px auto;
       
    }
    input[type="text"], input[type="submit"] {
        width: 90%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc; 
        border-radius: 5px; 
    	
    }
    input[type="submit"] {
        background-color: #942cde;
        color: #fff;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    input[type="submit"]:hover {
        background-color: #c78df0;
    }
</style>

<form action="<%= request.getContextPath()%>/AddEventServlet" method = "post">

	Event Name <input type="text" name="eventname">
	Event Date <input type="text" name="eventdate">
	Event Venue <input type="text" name="eventvenue">
	Event Description <input type="text" name="eventdescription">
	Event Budget <input type="text" name="budget">
	<input type="submit" value="Add event details">

</form>

<form action="<%= request.getContextPath()%>/view.jsp" method="post">
    <input type="submit" value="View Events" id="view-event-btn">
</form>

</body>
</html>