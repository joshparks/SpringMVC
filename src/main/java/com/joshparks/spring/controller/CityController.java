package com.joshparks.spring.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.joshparks.spring.domain.City;
import com.joshparks.spring.service.MainService;

@Controller
public class CityController {
	
	@Autowired
	private MainService mainSvc;
	
	@RequestMapping(value = "/ajaxlist", method = RequestMethod.GET, headers={"Accept=*/*","Content-Type=*/*"})
	public @ResponseBody List<String> getList() {
		List<String> strList = new ArrayList<String>();
		strList.add("String 1");
		strList.add("String 2");
		strList.add("String 3");
		return strList;
	}
	
	@RequestMapping(value = "/testdb", method = RequestMethod.GET, headers={"Accept=*/*","Content-Type=*/*"})
	public @ResponseBody City testDB() {
		//mainSvc.testDbConnect();
		City city = mainSvc.getCityById(1);
		return city;
	}
	
	@RequestMapping(value = "/city/{id}", method = RequestMethod.GET, headers={"Accept=*/*","Content-Type=*/*"})
	public @ResponseBody City getCityById(@PathVariable(value="id") int id) {
		City city = mainSvc.getCityById(id);
		return city;
	}
	
	@RequestMapping(value = "/city/add", method = RequestMethod.POST)
	public @ResponseBody int addCity(@ModelAttribute("cityForm") City city, ModelMap map) {
		System.out.println("FORM: Name => " + city.getName());
		System.out.println("FORM: Country => " + city.getCountryCode());
		System.out.println("FORM: District => " + city.getDistrict());
		System.out.println("FORM: Population => " + city.getPopulation());
		return 0;
	}

}
