package com.event.servlet.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.admin.Admin;
import com.event.service.admin.AdminServiceImpl;
import com.event.service.admin.IAdminService;

/**
 * Servlet implementation class AddAdminServlet
 */
@WebServlet("/AddAdminServlet")
public class AddAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAdminServlet() {
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
		
		Admin admin = new Admin();
		
		admin.setUserName(request.getParameter("username"));
		admin.setName(request.getParameter("name"));
		admin.setAddress(request.getParameter("address"));
		admin.setPhoneNum(request.getParameter("mobileno"));
		admin.setEmail(request.getParameter("email"));
		admin.setPassword(request.getParameter("password"));
		
		IAdminService iadminservice = new AdminServiceImpl();
		iadminservice.addAdmin(admin);
		
		request.setAttribute("admin", admin);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/adminAllAdmins.jsp");
		dispatcher.forward(request, response);
	}

}
