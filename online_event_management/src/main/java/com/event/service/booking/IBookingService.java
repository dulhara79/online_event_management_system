package com.event.service.booking;

import java.util.ArrayList;
import com.event.model.booking.booking;


public interface IBookingService 
{
	public void addBooking(booking Booking);
	
	public ArrayList<booking> getBookings();
	
	public ArrayList<booking> getBookingById();
	
	public void updateBooking(String booking_id, booking Booking);
	
	public void deleteBooking(String booking_id);
}
