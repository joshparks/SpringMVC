package com.joshparks.spring.dao;

import java.util.List;

import com.joshparks.spring.domain.City;

public interface CityDao {
	
	public void testDataSource();

	public City getCityById(int id);
	
	public List<City> getAllCities();
}
