<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "com.event.model.company.company" %>    
<%@ page import = "com.event.service.company.ICompanyService" %>
<%@ page import = "com.event.service.company.ICompanyServiceImp" %>
<%@ page import = "java.util.ArrayList" %>  
        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Company Details Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('img/u2.jpg');
        background-size: cover;
        background-position: center;
        padding: 20px;
        color: #333;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background-color: rgba(255, 255, 255, 0.9); /* Semi-transparent white background */
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    table th, table td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    table th {
        background-color: #4CAF50;
        color: white;
    }
    table tbody tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    .edit-btn {
        background-color: #3498db;
        color: white;
        border: none;
        padding: 8px 12px;
        border-radius: 4px;
        cursor: pointer;
    }
    .delete-btn {
        background-color: #e74c3c;
        color: white;
        border: none;
        padding: 8px 12px;
        border-radius: 4px;
        cursor: pointer;
    }
</style>
</head>

<body>
<h2>Company Details</h2>
<table>
	<thead>
		<tr>
			<th> Company Id </th>
			<th> Company User Name </th> 
			<th> Company Password </th>
			<th> Company Location </th>
			<th> Company Type</th>
			<th> Number of Employees </th>
			<th> Update Company Details </th> 
			<th> Delete Company Details </th>
		</tr>
	</thead>
	
	<tbody>
		
		<%
			ICompanyService iCompanyService = new ICompanyServiceImp();
			ArrayList<company> companyList = iCompanyService.getcompany();
		%>
		
		<% 
			for(company companies: companyList) {
		%>
		
			<tr>
				<td><%= companies.getCompanyId() %></td>
				<td><%= companies.getUserName() %></td>
				<td><%= companies.getPassword() %></td>
				<td><%= companies.getLocation() %></td> 
				<td><%= companies.getType() %></td>
				<td><%= companies.getNumberofemp() %></td>
				
				<td>
					<form action="<%= request.getContextPath()%>/Getcompanyservlet" method="post">
						<input type="hidden" name="CompanyId" value="<%= companies.getCompanyId() %>"> 
						<input type="submit" value="Update">
					</form>
				
				</td>
				
				<td>
				
    <form action="<%= request.getContextPath()%>/DeleteCompanyServlet" method="post">
        <input type="hidden" name="CompanyId" value="<%= companies.getCompanyId() %>"> 
        <button type="submit" class="btn btn-danger">Delete</button>
    </form>
	</td>

			
			</tr>
		
		<%
			}
		%>
	
	
	</tbody>

</table>

</body>
</html>