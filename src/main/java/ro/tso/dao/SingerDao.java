package ro.tso.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import ro.tso.helper.DBhelper;
import ro.tso.pojo.Singer;

public class SingerDao {

	public static ArrayList<Singer> getAll() throws SQLException, IOException {
		Connection con = DBhelper.getConnection();
		String getQuery = "select * from singer";
		PreparedStatement ps = con.prepareStatement(getQuery);
		ResultSet rs = ps.executeQuery();

		ArrayList<Singer> all = new ArrayList<>();

		while (rs.next()) {
			int id = rs.getInt("id");
			String singerName = rs.getString("singer_name");
			int singerPhoneNumber = rs.getInt("phone_number");
			int bandMembers = rs.getInt("band_members");

			Singer singer = new Singer(id, singerName, singerPhoneNumber, bandMembers);
			all.add(singer);
		}

		DBhelper.closeConnection();
		return all;

	}

	public static Singer getById(int id) throws SQLException, IOException {
		Connection con = DBhelper.getConnection();
		String getQuery = "select * from singer where id=?";
		PreparedStatement ps = con.prepareStatement(getQuery);
		ps.setInt(1, id);
		ResultSet rs = ps.executeQuery();

		while (rs.next()) {
			int ID = rs.getInt("id");
			String singerName = rs.getString("singer_name");
			int singerPhoneNumber = rs.getInt("phone_number");
			int bandMembers = rs.getInt("band_members");

			Singer singer = new Singer(ID, singerName, singerPhoneNumber, bandMembers);

			DBhelper.closeConnection();
			return singer;
		}

		DBhelper.closeConnection();
		return null;

	}
	
	public static void create(Singer singer) throws SQLException {
		SingerDao.create(singer.getSingerName(), singer.getSingerPhoneNumber(), singer.getBandMembers());
	}
	
	public static void create(String singerName, int singerPhoneNumber, int bandMembers) throws SQLException {
		Connection con = DBhelper.getConnection();
		String createQuery = "insert into singer (singer_name, phone_number, band_members)"+"value(?,?,?)";
		PreparedStatement ps = con.prepareStatement(createQuery);
		ps.setString(1, singerName);
		ps.setInt(2, singerPhoneNumber);
		ps.setInt(3, bandMembers);
		ps.executeUpdate();
		DBhelper.closeConnection();
	}
	
	public static void delete(int id) throws SQLException {
		Connection con = DBhelper.getConnection();
		String deleteQuery = "delete from singer where id=?";
		PreparedStatement ps = con.prepareStatement(deleteQuery);
		ps.setInt(1, id);
		ps.executeUpdate();
		DBhelper.closeConnection();
	}
	
	public static void update(Singer singer) throws SQLException {
		Connection con = DBhelper.getConnection();
		String updateQuery = "update singer set singer_name=?, phone_number=?, band_members=? where id=?";
		PreparedStatement ps = con.prepareStatement(updateQuery);
		ps.setString(1, singer.getSingerName());
		ps.setInt(2, singer.getSingerPhoneNumber());
		ps.setInt(3, singer.getBandMembers());
		ps.setInt(4, singer.getId());
		ps.executeUpdate();
		DBhelper.closeConnection();
	}

}
