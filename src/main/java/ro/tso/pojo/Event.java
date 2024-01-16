package ro.tso.pojo;

import java.sql.Date;
import java.time.LocalTime;

public class Event {
	
	private int id;
	private String eventTitle;
	private Date eventDate;
	private String location;
	private LocalTime eventTime;
	private int eventPresence;
	
	public Event(int id, String eventTitle, Date eventDate, String location, LocalTime eventTime, int eventPresence) {
		this.id = id;
		this.eventTitle = eventTitle;
		this.eventDate = eventDate;
		this.location = location;
		this.eventTime = eventTime;
		this.eventPresence = eventPresence;
	}
	
	public Event() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEventTitle() {
		return eventTitle;
	}

	public void setEventTitle(String eventTitle) {
		this.eventTitle = eventTitle;
	}

	public Date getEventDate() {
		return eventDate;
	}

	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public LocalTime getEventTime() {
		return eventTime;
	}

	public void setEventTime(LocalTime eventTime) {
		this.eventTime = eventTime;
	}

	public int getEventPresence() {
		return eventPresence;
	}

	public void setEventPresence(int eventPresence) {
		this.eventPresence = eventPresence;
	}
	
	
	
	
	

}
