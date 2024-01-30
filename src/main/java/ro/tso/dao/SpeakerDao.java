package ro.tso.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ro.tso.helper.DBhelper;
import ro.tso.pojo.Speaker;

public class SpeakerDao {

	
	public static ArrayList<Speaker> getAll() throws SQLException {
		Connection con = DBhelper.getConnection();
		String getQuery = "select * from speaker";
		PreparedStatement ps = con.prepareStatement(getQuery);
		ResultSet rs = ps.executeQuery();
		
		ArrayList<Speaker> all = new ArrayList<>();
		
		while(rs.next()) {
			int id = rs.getInt("id");
			String speakerName = rs.getString("speaker_name");
			int speakerPhoneNumber = rs.getInt("phone_number");
			String email = rs.getString("email_adress");
			
			Speaker speaker = new Speaker(id, speakerName, speakerPhoneNumber, email);
			all.add(speaker);
			
		}
		DBhelper.closeConnection();
		return all;
		
	}
	
	public static Speaker getById(int id) throws SQLException {
		Connection con = DBhelper.getConnection();
		String getQuery = "select * from speaker where id=?";
		PreparedStatement ps = con.prepareStatement(getQuery);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();
		
		while(rs.next()) {
			int ID =  rs.getInt("id");
			String speakerName = rs.getString("speaker_name");
			int speakerPhoneNumber = rs.getInt("phone_number");
			String email = rs.getString("email_adress");
			
			Speaker speaker = new Speaker(ID, speakerName, speakerPhoneNumber, email);
			DBhelper.closeConnection();
			return speaker;
		}
		DBhelper.closeConnection();
		return null;
	}
	
	public static void create(Speaker speaker) throws SQLException {
		SpeakerDao.create(speaker.getSpeakerName(), speaker.getSpeakerPhoneNumber(), speaker.getEmailAdress());
	}
	
	public static void create(String speakerName, int speakerPhoneNumber, String emailAdress) throws SQLException {
		Connection con = DBhelper.getConnection();
		String createQuery = "insert into speaker (speaker_name, phone_number, email_adress)" + "values(?,?,?)";
		PreparedStatement ps = con.prepareStatement(createQuery);
		ps.setString(1, speakerName);
		ps.setInt(2, speakerPhoneNumber);
		ps.setString(3, emailAdress);
		ps.executeUpdate();
		DBhelper.closeConnection();
	}
	
	public static void delete(int id) throws SQLException {
		Connection con = DBhelper.getConnection();
		String deleteQuery = "delete from speaker where id=?";
		PreparedStatement ps = con.prepareStatement(deleteQuery);
		ps.setInt(1, id);
		ps.executeUpdate();
		DBhelper.closeConnection();
		
		
	}
	
	public static void update(Speaker speaker) throws SQLException {
		Connection con = DBhelper.getConnection();
		String updateQuery = "update speaker set speaker_name=?, phone_number=?, email_adress=? where id=?";
		PreparedStatement ps = con.prepareStatement(updateQuery);
		ps.setString(1, speaker.getSpeakerName());
		ps.setInt(2, speaker.getSpeakerPhoneNumber());
		ps.setString(3, speaker.getEmailAdress());
		ps.setInt(4, speaker.getId());
		ps.executeUpdate();
		DBhelper.closeConnection();
		
	}
}
