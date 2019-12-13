package com.ex.restctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ex.appconfiguration.PropertiesConfiguration;
import com.ex.bean.LimitConfiguration;

@RestController
public class LimitRestCtrl {

	@Autowired
	PropertiesConfiguration configuration;

	@GetMapping("/limits")
	public LimitConfiguration getLimit() {
		return new LimitConfiguration(configuration.getMinimum(), configuration.getMaximum());
	}

}
