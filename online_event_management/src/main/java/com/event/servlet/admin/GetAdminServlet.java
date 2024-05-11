package com.event.servlet.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.service.admin.AdminServiceImpl;
import com.event.service.admin.IAdminService;

/**
 * Servlet implementation class GetAdminServlet
 */
@WebServlet("/GetAdminServlet")
public class GetAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetAdminServlet() {
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

		String adminId = request.getParameter("adminId");

		IAdminService iadminservice = new AdminServiceImpl();
		iadminservice.getAdminByID(adminId);

		request.setAttribute("adminId", adminId);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/adminUpdateAdmin.jsp");
		dispatcher.forward(request, response);
	}

}
