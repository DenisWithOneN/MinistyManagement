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

	public static ArrayList<Event> allEvents() throws SQLException, IOException {
		Connection con = DBhelper.getConnection();
		String query = "select * from event";
		PreparedStatement prepStmt = con.prepareStatement(query);
		ResultSet rs = prepStmt.executeQuery();

		ArrayList<Event> all = new ArrayList<>();

		while (rs.next()) {
			int id = rs.getInt("id");
			String eventTitle = rs.getString("event_title");
			Date eventDate = rs.getDate("event_date");
			String location = rs.getString("location");
			// convert local time to time sql
			Time eventTimeSql = rs.getTime("starting_hour");
			LocalTime eventTime = eventTimeSql.toLocalTime();

			int eventPresence = rs.getInt("event_presence");

			Event event = new Event(id, eventTitle, eventDate, location, eventTime, eventPresence);
			all.add(event);
		}

		DBhelper.closeConnection();
		return all;

	}
}
