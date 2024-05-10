package com.event.servlet.booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.booking.Booking;
import com.event.service.booking.BookingServiceImpl;
import com.event.service.booking.IBookingService;

/**
 * Servlet implementation class AddBookingServlet
 */
@WebServlet("/AddBookingServlet")
public class AddBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddBookingServlet() {
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
		
		Booking booking = new Booking();
				
		booking.setUserId(request.getParameter("userId"));
		booking.setEventId(request.getParameter("eventId"));
		booking.setEventName(request.getParameter("eventName"));
		booking.setEventDescription(request.getParameter("eventDescription"));
		
		IBookingService iBookingService = new BookingServiceImpl();
		iBookingService.addBooking(booking);
		
		request.setAttribute("booking", booking);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/userAllBookings.jsp");
		dispatcher.forward(request, response);
		
	}

}
