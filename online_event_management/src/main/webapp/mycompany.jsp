<%@page import="com.event.util.CommonUtil"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.event.service.company.ICompanyServiceImp"%>
<%@page import="com.event.service.company.ICompanyService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% String logoutUrl = "logout.jsp"; %> 
   
<%
	String companyId = (String) session.getAttribute("companyId");
 	String companyName = (String) session.getAttribute("companyName");
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Registration Page </title>
<style>
        body {
            /* Set background image */
            background-image: url('img/u1.jpg');
            /* Adjust background settings */
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif; /* Optional: Set a fallback font */
        }

        /* Style the form container */
        form {
            margin: 50px auto;
            padding: 20px;
            width: 400px;
            background: linear-gradient(to bottom right, #f2f2f2, #c1c1c1); /* Gradient background */
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: table; /* Display form elements as a table */
        }

        /* Style form inputs */
        input[type="text"],[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        

        /* Style the submit button */
        input[type="submit"] {
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }

        /* Responsive styling */
        @media (max-width: 480px) {
            form {
                width: 80%;
            }
        }
    </style>
</head>
<body>
<h1>Insert Company Details</h1>

 <%
	
 		ICompanyServiceImp companyserviceimp = new ICompanyServiceImp();
		ArrayList<String> companyIds = companyserviceimp.getcompanyIds();
		
		String comId = CommonUtil.generatecompanyIds(companyIds);

%>
<script>
function validateForm() {
    var password = document.getElementById("password").value;
    var employees = document.getElementById("employees").value;
    
    
    var passwordRegex = /^[A-Z][a-zA-Z0-9]*$/;
    if (!passwordRegex.test(password)) {
        alert("Password should start with a capital letter and contain only letters and numbers.");
        return false;
    }
    
    
    var employeesRegex = /^[0-9]+$/;
    if (!employeesRegex.test(employees)) {
        alert("Number of employees should be a valid integer.");
        return false;
    }
    
    return true; 
}
</script>

<form action="<%= request.getContextPath()%>/Adompanyservlet" method="post" onsubmit="return validateForm()">
    Company ID <input type="text" id="companyId" name="companyId" value="<%=comId%>" disabled>
    Company Name <input type="text" name="userName">
    Company Password <input type="password" id="password" name="password">
    Company Location <input type="text" name="location">
    Company Type <input type="text" name="type">
    Number of Employees in the Company <input type="text" id="employees" name="numberOfEmployees">
    
    <input type="submit" value="Add Company Details">
</form>  




</form> 

</body>
</html>