package com.joshparks.spring.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.stereotype.Repository;

import com.joshparks.spring.domain.City;
import com.joshparks.spring.jdbc.DataSourceFactory;

@Repository
public class CityDaoImpl implements CityDao {

	public void testDataSource() {

		DataSource ds = null;
		ds = DataSourceFactory.getMySQLDataSource();

		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			con = ds.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery("SELECT * FROM world.city");
			while (rs.next()) {
				System.out.println("Name=" + rs.getString("Name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null)
					rs.close();
				if (stmt != null)
					stmt.close();
				if (con != null)
					con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public City getCityById(int cityId) {

		String sql = "SELECT * FROM world.city WHERE ID = ?";

		DataSource ds = null;
		ds = DataSourceFactory.getMySQLDataSource();

		Connection con = null;
		//Statement stmt = null;
		ResultSet rs = null;
		City city = null;

		try {
			con = ds.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setInt(1, cityId);
			//ps.setString(1, Integer.toString(cityId));
			
			rs = ps.executeQuery();
			while (rs.next()) {
				city = new City(rs.getInt("ID"), rs.getString("Name"), rs.getString("CountryCode"),
						rs.getString("District"), rs.getInt("Population"));
			}
			rs.close();
			ps.close();
			return city;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
				}
			}
		}
		
		return city;

	}
	
	@Override
	public List<City> getAllCities() {

		String sql = "SELECT * FROM world.city";

		DataSource ds = null;
		ds = DataSourceFactory.getMySQLDataSource();

		Connection con = null;
		ResultSet rs = null;
		City city = null;
		List<City> cities = new ArrayList<City>();

		try {
			con = ds.getConnection();
			PreparedStatement ps = con.prepareStatement(sql);
			
			rs = ps.executeQuery();
			while (rs.next()) {
				city = new City(rs.getInt("ID"), rs.getString("Name"), rs.getString("CountryCode"),
						rs.getString("District"), rs.getInt("Population"));
				cities.add(city);
			}
			rs.close();
			ps.close();
			return cities;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException e) {
				}
			}
		}
		
		return cities;

	}

}
