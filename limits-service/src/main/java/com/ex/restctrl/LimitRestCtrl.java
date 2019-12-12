package com.ex.restctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ex.appconfiguration.PropertiesConfiguration;
import com.ex.bean.LimitConfiguration;

@RestController
public class LimitRestCtrl {

	@Autowired
	private PropertiesConfiguration config;

	@GetMapping("/limits")
	public LimitConfiguration getLimit() {
		return new LimitConfiguration(config.getMinimum(), config.getMaximum());
	}
}
