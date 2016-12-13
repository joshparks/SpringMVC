package com.joshparks.spring.service;

import java.util.List;

import com.joshparks.spring.domain.City;
import com.joshparks.spring.domain.User;

public interface MainService {

	public List<String> getStringList();
	
	public User getUser(int id);

	public void testDbConnect();
	
	public City getCityById(int id);
	
	public List<City> getAllCities();
	
}
