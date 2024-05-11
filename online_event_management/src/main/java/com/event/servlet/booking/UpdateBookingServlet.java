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
 * Servlet implementation class UpdateBookingServlet
 */
@WebServlet("/UpdateBookingServlet")
public class UpdateBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateBookingServlet() {
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
		
		String bookingId = request.getParameter("bookingId");
		
		System.out.println("update booking servlet: " + bookingId);
		
		booking.setBookingId(bookingId);
		booking.setUserId(request.getParameter("userId"));
	    booking.setEventId(request.getParameter("eventId"));
		booking.setEventName(request.getParameter("eventName"));
		booking.setEventDescription(request.getParameter("eventDescription"));
		/*
		 * String eventId = request.getParameter("eventId"); String eventName =
		 * request.getParameter("eventName"); String eventDescription =
		 * request.getParameter("eventDescription");
		 */
		
		IBookingService iBookingService = new BookingServiceImpl();

		iBookingService.updateBooking(bookingId, booking);
		
		/* booking.setBookingId(bookingId); */
		
		
		/*
		 * booking.setEventId(eventId); booking.setEventName(eventName);
		 * booking.setEventDescription(eventDescription);
		 */
		
		request.setAttribute("booking", booking);
		request.setAttribute("bookingId", bookingId);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/updateBookings.jsp");
		dispatcher.forward(request, response);
		
		
	    
		/*
		 * try { iBookingService.updateBooking(bookingId, booking); // Redirect back to
		 * the user's bookings page response.sendRedirect(request.getContextPath() +
		 * "/userAllBookings.jsp"); } catch (Exception e) { // Handle any exceptions
		 * e.printStackTrace(); response.getWriter().println("An error occurred: " +
		 * e.getMessage()); }
		 */
	}
}
