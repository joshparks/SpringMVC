package com.joshparks.spring.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.joshparks.spring.domain.City;
import com.joshparks.spring.domain.User;
import com.joshparks.spring.service.MainService;

@Controller
@RequestMapping("/")
public class MainController {
	
	@Autowired
	private MainService mainSvc;

	@RequestMapping(method = RequestMethod.GET)
	public String getLandingPage(ModelMap model) {
		model.addAttribute("pageTitle", "Welcome Page");
		return "welcome";
	}
	
	@RequestMapping(value="/welcome", method = RequestMethod.GET)
	public String getWelcomePage(ModelMap model) {
		model.addAttribute("pageTitle", "Welcome Page");
		return "welcome";
	}
	
	@RequestMapping(value = "/jstl", method = RequestMethod.GET)
	public String getJstlPage(ModelMap model) {
		
		model.addAttribute("pageTitle", "JSTL Page");
		
		List<String> strList = mainSvc.getStringList();
		model.addAttribute("list", strList);
		
		User user = mainSvc.getUser(1);
		model.addAttribute("user", user);
		
		return "jstl";
	}
	
	@RequestMapping(value= "/city", method = RequestMethod.GET)
    public String getAjaxPage(ModelMap model) {
    	model.addAttribute("pageTitle", "AJAX Page");
    	List<City> cities = mainSvc.getAllCities();
    	model.addAttribute("cities", cities);
    	City cityForm = new City();
    	model.addAttribute("cityForm", cityForm);
        return "city";
    }
	
}