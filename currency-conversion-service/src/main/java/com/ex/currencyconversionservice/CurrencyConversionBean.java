package com.ex.currencyconversionservice;

import java.math.BigDecimal;

public class CurrencyConversionBean {
	private Long id;
	private String from;
	private String to;
	private BigDecimal conversionMultiple;
	private BigDecimal quantity;
	private BigDecimal totalCalculateAmout;
	private int port;

	public CurrencyConversionBean() {
		// TODO Auto-generated constructor stub
	}

	public CurrencyConversionBean(Long id, String from, String to, BigDecimal conversionMultiple, BigDecimal quantity,
			BigDecimal totalCalculateAmout, int port) {
		super();
		this.id = id;
		this.from = from;
		this.to = to;
		this.conversionMultiple = conversionMultiple;
		this.quantity = quantity;
		this.totalCalculateAmout = totalCalculateAmout;
		this.port = port;
	}

	public Long getId() {
		return id;
	}

	public String getFrom() {
		return from;
	}

	public String getTo() {
		return to;
	}

	public BigDecimal getConversionMultiple() {
		return conversionMultiple;
	}

	public void setConversionMultiple(BigDecimal conversionMultiple) {
		this.conversionMultiple = conversionMultiple;
	}

	public BigDecimal getQuantity() {
		return quantity;
	}

	public BigDecimal getTotalCalculateAmout() {
		return totalCalculateAmout;
	}

	public int getPort() {
		return port;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setFrom(String from) {
		this.from = from;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}

	public void setTotalCalculateAmout(BigDecimal totalCalculateAmout) {
		this.totalCalculateAmout = totalCalculateAmout;
	}

	public void setPort(int port) {
		this.port = port;
	}

	@Override
	public String toString() {
		return "CurrencyConversionBean [id=" + id + ", from=" + from + ", to=" + to + ", convertionMultiple="
				+ conversionMultiple + ", quantity=" + quantity + ", totalCalculateAmout=" + totalCalculateAmout
				+ ", port=" + port + "]";
	}

}
