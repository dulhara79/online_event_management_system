package com.event.service.booking;

import java.util.ArrayList;
import com.event.model.booking.Booking;


public interface IBookingService 
{
	public void addBooking(Booking Booking);
	
	public ArrayList<Booking> getBookings();
	
	public ArrayList<Booking> getBookingById();
	
	public ArrayList<Booking> getBookingByUserId(String userId);
	
	public void updateBooking(String booking_id, Booking Booking);
	
	public void deleteBooking(String booking_id);
}
