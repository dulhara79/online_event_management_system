package com.event.servlet.booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.service.booking.BookingServiceImpl;
import com.event.service.booking.IBookingService;

/**
 * Servlet implementation class GetBookingServlet
 */
@WebServlet("/GetBookingServlet")
public class GetBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetBookingServlet() {
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
		String bookingId = request.getParameter("bookingId");
		
		
		IBookingService ibookingservice = new BookingServiceImpl();
		ibookingservice.getBookingByUserId(userId);
		
		
		request.setAttribute("userId", userId);
		request.setAttribute("bookingId", bookingId);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/userAllBookings.jsp");
		dispatcher.forward(request, response);
	}

}
