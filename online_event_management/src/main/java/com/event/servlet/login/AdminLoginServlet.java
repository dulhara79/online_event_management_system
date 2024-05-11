package com.event.servlet.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.admin.Admin;
import com.event.service.admin.AdminServiceImpl;
import com.event.service.admin.IAdminService;


/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginServlet() {
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
		String password = request.getParameter("password");
		
		System.out.println("Admin Login servlet get parameter id : "+adminId);
		System.out.println("Admin Login servlet get parameter id : "+password);


		IAdminService iadminservice = new AdminServiceImpl();
		Admin validateadmin = iadminservice.getAdminByID(adminId);

		if (validateadmin != null && validateadmin.getAdminId() != null && validateadmin.getPassword() != null
				&& validateadmin.getAdminId().equals(adminId) && validateadmin.getPassword().equals(password)) {

			request.getSession().setAttribute("status", "success");

			request.getSession().setAttribute("adminId", validateadmin.getAdminId());
			request.getSession().setAttribute("userName", validateadmin.getUserName());

			System.out.println("Admin Login servlet validate: "+validateadmin.getAdminId());
			
			response.sendRedirect("adminIndex.jsp");

		} else {

			System.out.println("Admin Login servlet nonvalidate: "+validateadmin.getAdminId());
			System.out.println("Admin Login servlet nonvalidate: "+validateadmin.getPassword());
			
			request.setAttribute("errorMessage", "Incorrect username or password. Please try again.");
			request.getSession().setAttribute("status", "failed");
			request.getRequestDispatcher("/adminLogin.jsp").forward(request, response);

		}

	}

}