package com.joshparks.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.joshparks.spring.domain.City;
import com.joshparks.spring.service.MainService;

@Controller
@RequestMapping("/ngCity")
public class NgCityController {
	
	@Autowired
	private MainService mainSvc;

	@RequestMapping(method = RequestMethod.GET)
    public String getNgCityPage(ModelMap model) {
		model.addAttribute("pageTitle", "NgCity Page");
        return "ngCity";
	}
	
	@RequestMapping(value="/list", method = RequestMethod.GET, consumes={"application/json"}, produces={"application/json"})
	@ResponseBody
    public ResponseEntity<List<City>> getAllCities() {
		List<City> cities = mainSvc.getAllCities();
		return new ResponseEntity<List<City>>(cities, HttpStatus.OK);        
    }	
	
}
