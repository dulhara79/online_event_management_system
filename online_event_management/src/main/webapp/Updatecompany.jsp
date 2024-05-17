<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ page import = "com.event.model.company.company" %>    
<%@ page import = "com.event.service.company.ICompanyService" %>
<%@ page import = "com.event.service.company.ICompanyServiceImp" %>
<%@ page import = "java.util.ArrayList" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Company</title>
<style>
    body {
        font-family: Arial, sans-serif;
        /* Use the background-image property to set your background image */
        background-image: url('img/u2.jpg'); /* Replace 'path_to_your_image.jpg' with your actual image path */
        background-size: cover;
        background-position: center;
        padding: 20px;
    }
    h2 {
        color: #333;
        text-align: center;
    }
    form {
        margin-top: 20px;
        padding: 15px;
        background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
        border: 1px solid #ddd;
        border-radius: 5px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }
    button[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }
    button[type="submit"]:hover {
        background-color: #45a049;
    }
    
    .phoneError{
		color: red;
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
<h2>Update Company Details</h2>

	<%
		String CompanyId = (String) request.getAttribute("CompanyId");
	
	ICompanyService iCompanyService = new ICompanyServiceImp();
	ArrayList<company> companyList = iCompanyService.getcompanyById(CompanyId);
	
	%>
	<%
	for(company companies: companyList) {
	%>
		
		<form action="<%= request.getContextPath()%>/Updatecompanyservlet" method="post" oninput="enableSubmit()"> 
		
			<input type="hidden" type="text" name="companyId" value="<%= companies.getCompanyId() %>">
			Enter Company Id<input type="text" name="companyId" value="<%= companies.getCompanyId() %>" disabled="disabled">
			
			Company Name <input type="text" id="userName" name="UserName" value="<%= companies.getUserName() %>" oninput="validateUserNames()">
			<span class="phoneError" id="companyNameError" ></span> <br><br>
			
			Company Password<input id="password" type="password" name="" value="<%= companies.getPassword() %>" oninput="validatePasswords()">
			
			Confirm Password<input id="rePassword" type="password" name="Password" value="<%= companies.getPassword() %>" oninput="validatePasswords()">
			<span class="phoneError" id="passwordError" ></span> <br><br>
			
			Company Location<input type="text" id="address" name="Location" value="<%= companies.getLocation() %>" oninput="validateLocation()">
			<span class="phoneError" id="locationError" ></span> <br><br>
			
			Company Type<input type="text" id="char" name="Type" value="<%= companies.getType() %>" oninput="validatevalidateCharactersOnly()">
			<span class="phoneError" id="characterError" ></span> <br><br>
			
			Number of employees in the Company <input type="text" id="employee" name="Numberofemployee" value="<%= companies.getNumberofemp() %>" oninput="validateEmp()">
			<span class="phoneError" id="employeeError" ></span> <br><br>
			
			<button type="submit" id="submit" disabled>Update Company Details</button>
				
		</form>
		
	<%
		}
	%>
</body>

</html>

