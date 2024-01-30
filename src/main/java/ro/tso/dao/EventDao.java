package ro.tso.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Time;
import java.time.LocalTime;
import java.util.ArrayList;

import ro.tso.helper.DBhelper;
import ro.tso.pojo.Event;

public class EventDao {

	public static ArrayList<Event> getAll() throws SQLException, IOException {
		Connection con = DBhelper.getConnection();
		String query = "select * from event";
		PreparedStatement prepStmt = con.prepareStatement(query);
		ResultSet rs = prepStmt.executeQuery();

		ArrayList<Event> all = new ArrayList<>();

		while (rs.next()) {
			int eventId = rs.getInt("id");
			String eventTitle= rs.getString("event_title");
			Date eventDate = rs.getDate("event_date");
			String location = rs.getString("location");
			// convert local time to time sql
			Time eventTimeSql = rs.getTime("starting_hour");
			LocalTime eventTime = eventTimeSql.toLocalTime();
			int eventPresence = rs.getInt("event_presence");

			Event event = new Event(eventId, eventTitle, eventDate, location, eventTime, eventPresence);
			all.add(event);
		}

		DBhelper.closeConnection();
		return all;

	}
	
	public static Event getById(int id) throws SQLException, IOException{
		Connection con = DBhelper.getConnection();
		String getQuery = "select * from event where id=?";
		PreparedStatement ps = con.prepareStatement(getQuery);
		ps.setInt(1, id);
		
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			int eventId = rs.getInt("id");
			String eventTitle= rs.getString("event_title");
			Date eventDate = rs.getDate("event_date");
			String location = rs.getString("location");
			// convert local time to time sql
			Time eventTimeSql = rs.getTime("starting_hour");
			LocalTime eventTime = eventTimeSql.toLocalTime();
			int eventPresence = rs.getInt("event_presence");
			
			Event event = new Event(eventId, eventTitle, eventDate, location, eventTime, eventPresence);
			
			DBhelper.closeConnection();
			return event;
		}
		
		DBhelper.closeConnection();
		return null;
		
	}
	
	public static void create(Event event) throws SQLException {
		EventDao.create(event.getEventTitle(), event.getEventDate(), event.getLocation(), event.getEventTime(), event.getEventPresence());
	}
	
	
	public static void create(String eventTitle, Date eventDate, String location, LocalTime eventTime, int eventPresence) throws SQLException {
		String insertQuery = "insert into event (event_title, event_date, location, starting_hour, event_presence)" + "value(?,?,?,?,?)";
		Connection con = DBhelper.getConnection();
		PreparedStatement ps = con.prepareStatement(insertQuery);
		ps.setString(1, eventTitle);
		ps.setDate(2, eventDate);
		ps.setString(3, location);
		Time sqlTime = Time.valueOf(eventTime);
		ps.setTime(4, sqlTime);
		ps.setInt(5, eventPresence);
		System.out.println("1");
		ps.executeUpdate();
		DBhelper.closeConnection();
	}
	
	
	public static void deleteById(int id) throws SQLException {
		Connection con = DBhelper.getConnection();
		String deleteQuery = "delete from event where id = ?";
		PreparedStatement ps = con.prepareStatement(deleteQuery);
		ps.setInt(1, id);
		ps.executeUpdate();
		DBhelper.closeConnection();
		
	}
	
	public static void update(Event event) throws SQLException {
		Connection con = DBhelper.getConnection();
		String updateQuery = "update event set event_title=?, event_date=?, location=?, starting_hour=?, event_presence=? where id=?;";
		PreparedStatement ps = con.prepareStatement(updateQuery);
		ps.setString(1, event.getEventTitle());
		ps.setDate(2, event.getEventDate());
		ps.setString(3, event.getLocation());
		LocalTime eventTime = event.getEventTime();
		Time sqlTime = Time.valueOf(eventTime);
		ps.setTime(4, sqlTime);
		ps.setInt(5, event.getEventPresence());
		System.out.println(event.getId());
		ps.setInt(6, event.getId());
		ps.executeUpdate();

		DBhelper.closeConnection();
	}
}
