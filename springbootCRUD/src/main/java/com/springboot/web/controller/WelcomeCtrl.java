package com.springboot.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WelcomeCtrl {
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model){
		return "app";
	}
	
	@RequestMapping(value="/home", method = RequestMethod.GET)
	public String homePage(ModelMap model){
		return "welcome";
	}
}
