package com.event.servlet.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.event.model.coordinator.Coordinator;
import com.event.service.coordinator.CoordinatorServiceImpl;
import com.event.service.coordinator.ICoordinatorService;


/**
 * Servlet implementation class CoordinatorLoginServlet
 */
@WebServlet("/CoordinatorLoginServlet")
public class CoordinatorLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CoordinatorLoginServlet() {
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
			
			String coordinatorId = request.getParameter("coordinatorId");
			String password = request.getParameter("password");
			
			ICoordinatorService icoordinatorservice = new CoordinatorServiceImpl();
			Coordinator validatedCoordinator = icoordinatorservice.getCoordinatorByID(coordinatorId);
			
			if(validatedCoordinator != null && validatedCoordinator.getCoordinatorId() != null &&
					validatedCoordinator.getPassword() != null &&validatedCoordinator.getCoordinatorId().equals(coordinatorId)
					&& validatedCoordinator.getPassword().equals(password)) {
				
				request.getSession().setAttribute("status", "success");
				
				request.getSession().setAttribute("coordinatorId", validatedCoordinator.getCoordinatorId());
				request.getSession().setAttribute("coordinatorName", validatedCoordinator.getCoordinatorName());
				
				response.sendRedirect("coordinatorHome.jsp");
				
			} else {
				
				request.setAttribute("errorMessage", "Incorrect coordinatorname or password. Please try again.");
				request.getSession().setAttribute("status", "failed");
				request.getRequestDispatcher("/coordinatorLogin.jsp").forward(request, response);
				
			}
	}

}
