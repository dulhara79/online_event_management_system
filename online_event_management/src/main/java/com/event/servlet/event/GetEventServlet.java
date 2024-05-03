package com.event.servlet.event;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.service.event.EventServiceImpl;
import com.event.service.event.IEventEventService;

/**
 * Servlet implementation class GetEventServlet
 */
@WebServlet("/GetEventServlet")
public class GetEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetEventServlet() {
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
		
		String eventId = request.getParameter("eventId");
		
		IEventEventService iEventService = new EventServiceImpl();
		iEventService.getEventById(eventId);
		
		request.setAttribute("eventId", eventId);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/updateEvents.jsp");
		dispatcher.forward(request, response);
		
	}

}
