package com.event.servlet.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.company.company;
import com.event.service.company.ICompanyService;
import com.event.service.company.ICompanyServiceImp;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/CompanyLoginServlet")
public class CompanyLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */

	public CompanyLoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");

		String companyId = request.getParameter("companyId");
		String password = request.getParameter("password");
		
		System.out.println("Company login servlet id " + companyId);
		System.out.println("Company login servlet password " + password);

		ICompanyService companyService = new ICompanyServiceImp();
		company validatedCompany = companyService.getcompanybyId(companyId); // getcompanybyid
		
		System.out.println("Company login servlet validatedCompany.getCompanyId() " + validatedCompany.getCompanyId());
		System.out.println("Company login servlet validatedCompany.getPassword() " + validatedCompany.getPassword());

		if (validatedCompany != null && validatedCompany.getCompanyId() != null
				&& validatedCompany.getPassword() != null && validatedCompany.getCompanyId().equals(companyId)
				&& validatedCompany.getPassword().equals(password)) {

			request.getSession().setAttribute("status", "success");
			request.getSession().setAttribute("companyId", validatedCompany.getCompanyId());
			request.getSession().setAttribute("companyName", validatedCompany.getUserName());

			response.sendRedirect("companyIndex.jsp");

		} else {
			request.setAttribute("errorMessage", "Incorrect company ID or password. Please try again.");
			request.getSession().setAttribute("status", "failed");
			request.getRequestDispatcher("/companyLogin.jsp").forward(request, response);
		}
	}
}
