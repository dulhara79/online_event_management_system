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
 * Servlet implementation class UpdateAdminServlet
 */
@WebServlet("/UpdateAdminServlet")
public class UpdateAdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAdminServlet() {
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
		
response.setContentType("txt/html");
		
		Admin admin = new Admin();
		
		String adminId = request.getParameter("adminId");
		
		System.out.println("admin update servlet adminId: "+ adminId);
		
		admin.setAdminId(adminId);
		admin.setUserName(request.getParameter("username"));
		admin.setName(request.getParameter("name"));
		admin.setAddress(request.getParameter("address"));
		admin.setPhoneNum(request.getParameter("mobileno"));
		admin.setEmail(request.getParameter("email"));
		admin.setPassword(request.getParameter("password"));
		
		IAdminService iadminservice = new AdminServiceImpl();
		iadminservice.updateAdmin(adminId, admin);
		
		System.out.println("Admin update servlet admin id: " + adminId);
		
		request.setAttribute("admin", admin);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/adminAllAdmins.jsp");
		dispatcher.forward(request, response);
	}

}
