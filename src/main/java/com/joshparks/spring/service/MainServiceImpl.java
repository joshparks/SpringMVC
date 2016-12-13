package com.joshparks.spring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.joshparks.spring.dao.CityDao;
import com.joshparks.spring.domain.City;
import com.joshparks.spring.domain.User;

@Service
public class MainServiceImpl implements MainService {
	
	@Autowired
	private CityDao cityDao;
	
	@Override
	public List<String> getStringList() {
		List<String> strList = new ArrayList<String>();
		strList.add("String 1");
		strList.add("String 2");
		strList.add("String 3");
		return strList;
	}
	
	@Override
	public User getUser(int id) {
		return new User(1, "jparks", "Josh", "Parks");
	}
	
	@Override
	public void testDbConnect() {
		cityDao.testDataSource();
	}

	@Override
	public City getCityById(int id) {
		return cityDao.getCityById(id);
	}
	
	@Override
	public List<City> getAllCities() {
		return cityDao.getAllCities();
	}
	
}
