package com.event.service.booking;

import java.util.ArrayList;
import com.event.model.booking.Booking;


public interface IBookingService 
{
	public void addBooking(Booking Booking);
	
	public ArrayList<Booking> getBookings();
	
	public ArrayList<Booking> getBookingById(String bookingId);
	
	public ArrayList<Booking> getBookingByUserId(String userId);
	
	public void updateBooking(String bookingId, Booking booking);
	
	public void deleteBooking(String bookingId);

}
