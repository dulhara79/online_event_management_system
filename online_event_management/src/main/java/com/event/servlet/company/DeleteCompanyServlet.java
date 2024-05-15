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
 * Servlet implementation class DeleteCompanyServlet
 */
@WebServlet("/DeleteCompanyServlet")
public class DeleteCompanyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCompanyServlet() {
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
		
		String CompanyId = request.getParameter("CompanyId");
		
		ICompanyService icompanyservice = new ICompanyServiceImp();
		icompanyservice.deletecompany(CompanyId);
		
		request.setAttribute("CompanyId", CompanyId);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/allcompany.jsp");
		dispatcher.forward(request, response);
		
		
		doGet(request, response);
	}

}
