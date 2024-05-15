package com.event.servlet.company;

import java.io.IOException;
import java.util.ArrayList;

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
 * Servlet implementation class Updatecompanyservlet
 */
@WebServlet("/Updatecompanyservlet")
public class Updatecompanyservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Updatecompanyservlet() {
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
		
		String companyId = request.getParameter("companyId");
		
		System.out.println("updatecompany servlet get company id " +companyId);
		
		company.setCompanyId(companyId);	// removed inverted commas
		company.setUserName(request.getParameter("UserName"));
		company.setPassword(request.getParameter("Password"));
		company.setLocation(request.getParameter("Location"));
		company.setType(request.getParameter("Type"));
		company.setNumberofemp(request.getParameter("Numberofemployee"));
		
		ICompanyService Icompanyservice = new ICompanyServiceImp();
		Icompanyservice.Updatecompany(companyId, company);
		
		request.setAttribute("company", company);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/allcompany.jsp"); //redirection page
		dispatcher.forward(request, response);
		
	}

}
