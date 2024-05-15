<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<%@ page import = "com.event.model.company.company" %>    
<%@ page import = "com.event.service.company.ICompanyService" %>
<%@ page import = "com.event.service.company.ICompanyServiceImp" %>
<%@ page import = "java.util.ArrayList" %>  

<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Company</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        background-image: url('path/to/your/background-image.jpg');
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
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
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
		
		<form action="<%= request.getContextPath()%>/Updatecompanyservlet" method="post"> 
		
		 <form action="<%= request.getContextPath()%>/Addcompanyservlet" method="post">  
		
			Company Id<input type="text" name="companyId" value="<%= companies.getCompanyId() %>" disabled>
			Company Name <input type="text" name="UserName" value="<%= companies.getUserName() %>" >
			Company Password <input type="text" name="Password" value="<%= companies.getPassword() %>" >
			Company Location <input type="text" name="Location" value="<%= companies.getLocation() %>" >
			Company Type 	<input type="text" name="Type" value="<%= companies.getType() %>" >
			Number of employees in the Company <input type="text" name="Numberofemployee" value="<%= companies.getNumberofemp() %>" >
			<input type="submit" value="Update">
		
		</form>
		
	<%
		}
	%>
</body>

</html>

 --%>