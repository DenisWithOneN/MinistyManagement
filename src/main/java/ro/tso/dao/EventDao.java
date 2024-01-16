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
	
	
public static ArrayList<Event> allEvents() throws SQLException, IOException{
	Connection con = DBhelper.getConnection();
	String query = "select * from event";
	PreparedStatement prepStmt = con.prepareStatement(query);
	ResultSet rs = prepStmt.executeQuery();
	
	ArrayList<Event> all = new ArrayList<>();
	
	while(rs.next()) {
		int id = rs.getInt("id");
		String eventTitle =rs.getString("eventTitle");
		Date eventDate = rs.getDate("eventDate");
		String location = rs.getString("location");
		//convert local time to time sql
		Time eventTimeSql = rs.getTime("eventTime");
		LocalTime eventTime = eventTimeSql.toLocalTime();
		
		int eventPresence = rs.getInt("eventPresence");
		
		all.add(event);
	}
	
	DBhelper.closeConnection();
	return all;
	
	
}
}
