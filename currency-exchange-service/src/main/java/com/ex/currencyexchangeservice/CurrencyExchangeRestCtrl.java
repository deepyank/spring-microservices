package com.ex.currencyexchangeservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CurrencyExchangeRestCtrl {

	@Autowired
	private Environment env;

	@Autowired
	private ExchangeValueRepository repository;
	@GetMapping("currency-exchange/from/{from}/to/{to}")
	public ExchanageValue retriveExchangeValue(@PathVariable String from, @PathVariable String to) {
		ExchanageValue exchanageValue=repository.findByFromAndTo(from,to);
		exchanageValue.setPort(Integer.valueOf(env.getProperty("local.server.port")));
		return exchanageValue;
	}
}
