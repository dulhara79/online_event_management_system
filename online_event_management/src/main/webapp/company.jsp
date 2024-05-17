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
        button[type="submit"] {
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            /* cursor: pointer; */
            width: 100%;
            font-size: 16px;
        }
        
        .phoneError{
		color: red;
	}

        /* Responsive styling */
        @media (max-width: 480px) {
            form {
                width: 80%;
            }
        }
    </style>
    <script type="text/javascript">
    function validateUserNames() {
        var user = document.getElementById('userName').value;
        var regex = /^[a-zA-Z]+$/;
        
        if (!regex.test(user)) {
          document.getElementById('companyNameError').innerText = 'User name name must contain only alphabetic characters.';
          return false;
        } else {
          document.getElementById('companyNameError').innerText = '';
          return true;
        }
    }
    
    function validatevalidateCharactersOnly() {
        var user = document.getElementById('char').value;
        var regex = /^[a-zA-Z]+$/;
        
        if (!regex.test(user)) {
          document.getElementById('characterError').innerText = 'Must contain only alphabetic characters.';
          return false;
        } else {
          document.getElementById('characterError').innerText = '';
          return true;
        }
    }
    
    function validatePasswords() {
    	var password = document.getElementById('password').value;
    	var rePassword = document.getElementById('rePassword').value;
    	if (password !== rePassword) {
    		document.getElementById('passwordError').innerText = '* Passwords do not match.';
    		return false;
    	} else {
    		document.getElementById('passwordError').innerText = '';
    		return true;
    	}
    }
    
    function validateAddress() {
        var address = document.getElementById('address').value;
        var regex = /^[a-zA-Z0-9/. ,]+$/;

        if (!regex.test(address)) {
          document.getElementById('locationError').innerText = 'Location can only contain letters, numbers, forward slashes, dots, and commas.';
          return false;
        } else {
          document.getElementById('locationError').innerText = '';
          return true;
        }
      }
    
    function validateEmployee(){
    	var phone = document.getElementById('employee').value;
    	var num = /^[0-9]+$/;
    	
    	if (!num.test(phone)) {
    		document.getElementById('employeeError').innerText = '* Number of employee should be a number.';
    		return false;
    	} else {
          document.getElementById('employeeError').innerText = '';
          return true;
        }
    }
    
    function enableSubmit() {
    	var isUsernameValidate = validateUserNames();
    	var arePasswordsValid = validatePasswords();
    	var areCharactersValidate = validatevalidateCharactersOnly();
    	var isLocationValidate = validateAddress();
    	var areEmployeeValidate = validateEmployee();
    	
    	document.getElementById('submit').disabled = !(areEmployeeValidate && isLocationValidate && areCharactersValidate && arePasswordsValid && isUsernameValidate);
    }
    
    </script>
    
</head>
<body>
<h1>Insert Company Details</h1>

 <%
	
 		ICompanyServiceImp companyserviceimp = new ICompanyServiceImp();
		ArrayList<String> companyIds = companyserviceimp.getcompanyIds();
		
		String comId = CommonUtil.generatecompanyIds(companyIds);

%>
<%--  <script>
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

<form action="<%= request.getContextPath()%>/Addcompanyservlet" method="post" onsubmit="return validateForm()">
    Company ID <input type="text" id="companyId" name="companyId" value="<%=comId%>" disabled>
    Company Name <input type="text" name="userName">
    Company Password <input type="password" id="password" name="password">
    Company Location <input type="text" name="location">
    Company Type <input type="text" name="type">
    Number of Employees in the Company <input type="text" id="employees" name="numberOfEmployees">
    
    <input type="submit" value="Add Company Details">
</form>   --%>


<form action="<%= request.getContextPath()%>/Addcompanyservlet" method = "post" oninput="enableSubmit()">
	Company ID<input type="text" id="companyId" name="" value="<%=comId%>" disabled="disabled">
	
	Company Name <input type="text" id="userName" name="UserName" oninput="validateUserNames()">
	<span class="phoneError" id="companyNameError" ></span> <br><br>
	
	Company Password<input id="password" type="password" name="" oninput="validatePasswords()">
	
	Confirm Password<input id="rePassword" type="password" name="Password" oninput="validatePasswords()">
	<span class="phoneError" id="passwordError" ></span> <br><br>
	
	Company Location<input type="text" id="address" name="Location" oninput="validateLocation()">
	<span class="phoneError" id="locationError" ></span> <br><br>
	
	Company Type<input type="text" id="char" name="Type" oninput="validatevalidateCharactersOnly()">
	<span class="phoneError" id="characterError" ></span> <br><br>
	
	Number of employees in the Company <input type="text" id="employee" name="Numberofemployee" oninput="validateEmp()">
	<span class="phoneError" id="employeeError" ></span> <br><br>
	
	<button type="submit" id="submit" disabled>Add Company Details</button>
</form> 

</body>
</html>