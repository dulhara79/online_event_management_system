package com.event.servlet.company;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.event.model.company.company;
import com.event.service.company.ICompanyService;
import com.event.service.company.ICompanyServiceImp;


/**
 * Servlet implementation class AddCompanyServlet
 */
@WebServlet(name = "Addcompanyservlet", urlPatterns = { "/Addcompanyservlet" })
public class AddCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCompanyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		company company  = new company ();
		
		company.setUserName(request.getParameter("UserName"));
		company.setPassword(request.getParameter("Password"));
		company.setLocation(request.getParameter("Location"));
		company.setType(request.getParameter("Type"));
		company.setNumberofemp(request.getParameter("Numberofemployee"));
		
		
		System.out.println("AddCompanyServlet UserName: " + request.getParameter("UserName"));
		
		
		ICompanyService Icompanyservice = new ICompanyServiceImp();
		Icompanyservice.addCompany(company);
		
		request.setAttribute("company", company);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/companyLogin.jsp"); //redirection page
		dispatcher.forward(request, response);
		
	}

}
