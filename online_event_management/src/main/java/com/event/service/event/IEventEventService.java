package com.event.service.event;

/**
 * Event service interface
 */

import java.util.ArrayList;

import com.event.model.event.Event;

public interface IEventEventService {

	public void addEvent(Event event);
	
	public ArrayList<Event> getEvents();
	
	public ArrayList<Event> getEventById(String eventId);
	
	public void updateEvent(String eventId, Event event);
	
	public void deleteEvent(String eventId);
	
}
