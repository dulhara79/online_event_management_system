package com.event.model.event;

/**
 * Event Java
 */

public class Event {

	private String eventId;
	private String eventName;
	private String eventDate;
	private String venue;
	private String eventDescription;
	private double budget;
	
	public String getEventId() {
		return eventId;
	}
	public String getEventName() {
		return eventName;
	}
	public String getEventDate() {
		return eventDate;
	}
	public String getEventDescription() {
		return eventDescription;
	}
	public double getBudget() {
		return budget;
	}
	public String getVenue() {
		return venue;
	}
	public void setEventId(String eventId) {
		this.eventId = eventId;
	}
	/**
	 * @param eventName
	 */
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}
	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}
	public void setBudget(double budget) {
		this.budget = budget;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	
	
	
	
	
}
