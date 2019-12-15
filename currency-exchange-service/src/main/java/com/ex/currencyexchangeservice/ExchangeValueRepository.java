package com.ex.currencyexchangeservice;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ExchangeValueRepository extends JpaRepository<ExchanageValue, Long> {
	ExchanageValue findByFromAndTo(String From,String To);
}
