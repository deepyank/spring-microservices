package com.springboot.web.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;

import com.springboot.web.dto.Login;
import com.springboot.web.dto.UserRegistration;
import com.springboot.web.service.LoginService;

@Controller
@SessionAttributes("name")
public class LoginController {

	@Autowired
	LoginService service;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		return "login";
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String showWelcomePage(@Valid @ModelAttribute("login") Login loginDTO, BindingResult result, ModelMap model,
			@RequestParam String name, @RequestParam String password) {

		if (result.hasErrors()) {
			System.out.println("login page ->>>>");
			return "login";
		}
		model.put("login", loginDTO);
		boolean isValidUser = service.validateUser(name, password);

		if (!isValidUser) {
			model.put("errorMessage", "Invalid Credentials");
			return "login";
		}
		model.put("name", name);
		/* model.put("password", password); */

		return "welcome";
	}

	@GetMapping("/signup")
	public String signUp(@ModelAttribute("user") UserRegistration userDTO) {
		return "UserRegistration";
	}

	@GetMapping("/logout")
	public String logout( WebRequest request, SessionStatus status) {
		status.setComplete();
	    request.removeAttribute("name", WebRequest.SCOPE_SESSION);
	    return "redirect:/";
	}

}
