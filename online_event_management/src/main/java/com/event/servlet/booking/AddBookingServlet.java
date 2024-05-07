package com.event.servlet.booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.booking.booking;
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
		
		booking booking = new booking();
		
		booking.setUser_name(request.getParameter("UserName"));
		booking.setEvent_name(request.getParameter("EventName"));
		booking.setPayment_id(request.getParameter("PaymentID"));
		booking.setService_name(request.getParameter("ServiceName"));
		booking.setEvent_description(request.getParameter("EventDescription"));
		
		IBookingService iBookingService = new BookingServiceImpl();
		iBookingService.addBooking(booking);
		
		request.setAttribute("Booking", booking);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/allBookings.jsp");
		dispatcher.forward(request, response);
		
	}

}
