package com.event.servlet.login;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.User;
import com.event.service.user.IUserService;
import com.event.service.user.UserServiceImpl;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
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
		
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		IUserService iuserservice = new UserServiceImpl();
		User validatedUser = iuserservice.getUserByID(userId);
		
		if(validatedUser != null && validatedUser.getUserId() != null && validatedUser.getPassword() != null &&validatedUser.getUserId().equals(userId) && validatedUser.getPassword().equals(password)) {
			
			request.getSession().setAttribute("status", "success");
			
			request.getSession().setAttribute("userId", validatedUser.getUserId());
			request.getSession().setAttribute("userName", validatedUser.getUserName());
			
			response.sendRedirect("UserHome.jsp");
			
		} else {
			
			request.setAttribute("errorMessage", "Incorrect username or password. Please try again.");
			request.getSession().setAttribute("status", "failed");
			request.getRequestDispatcher("/userLogin.jsp").forward(request, response);
			
		}
		
		
	}

}
