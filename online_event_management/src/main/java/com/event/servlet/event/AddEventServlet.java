package com.event.servlet.event;

import com.event.model.event.Event;
import com.event.service.event.EventServiceImpl;
import com.event.service.event.IEventEventService;

import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddEventServlet
 */
/**
 * 
 */
@WebServlet("/AddEventServlet")
public class AddEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEventServlet() {
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
		
		Event event = new Event();
		
		event.setEventName(request.getParameter("eventname"));
		event.setEventDate(request.getParameter("eventdate"));
		event.setVenue(request.getParameter("eventvenue"));
		event.setEventDescription(request.getParameter("eventdescription"));
		event.setBudget(Double.parseDouble(request.getParameter("budget"))); //not sure
		
		IEventEventService ieventSevice = new EventServiceImpl();
		ieventSevice.addEvent(event);
		
		
		
		request.setAttribute("event", event);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/allEvents.jsp");
		dispatcher.forward(request, response);
	}

}
