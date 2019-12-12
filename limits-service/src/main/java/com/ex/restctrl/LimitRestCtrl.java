package com.ex.restctrl;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LimitRestCtrl {

	@GetMapping("/limits-service")
	public LimitConfiguration getLimit() {

	}
}
