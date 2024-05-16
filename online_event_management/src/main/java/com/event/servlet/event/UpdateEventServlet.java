package com.event.servlet.event;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.event.Event;
import com.event.service.event.EventServiceImpl;
import com.event.service.event.IEventEventService;

/**
 * Servlet implementation class UpdateEventServlet
 */
@WebServlet("/UpdateEventServlet")
public class UpdateEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEventServlet() {
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
		
		String eventId = request.getParameter("eventId");
		
		event.setEventId(eventId);
		event.setEventName(request.getParameter("eventname"));
		event.setEventDate(request.getParameter("eventdate"));
		event.setVenue(request.getParameter("eventvenue"));
		event.setEventDescription(request.getParameter("eventdescription"));
		event.setBudget(Double.parseDouble(request.getParameter("budget"))); 
		
		System.out.println(event.getEventId());
		
		IEventEventService ieventSevice = new EventServiceImpl();
		ieventSevice.updateEvent(eventId, event);
		
		
		
		request.setAttribute("event", event);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/allEvents.jsp");
		dispatcher.forward(request, response);
	}

}
