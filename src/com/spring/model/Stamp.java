package com.spring.model;

public class Stamp {
	private int stampId;
	private String name;
	private int priceOfStamp;
	private int hourOfStamp;
	
	public Stamp() {
		super();
	}
	public Stamp(String name, int priceOfStamp, int hourOfStamp) {
		super();
		this.name = name;
		this.priceOfStamp = priceOfStamp;
		this.hourOfStamp = hourOfStamp;
	}
	public Stamp(int stampId, String name, int priceOfStamp, int hourOfStamp) {
		super();
		this.stampId = stampId;
		this.name = name;
		this.priceOfStamp = priceOfStamp;
		this.hourOfStamp = hourOfStamp;
	}
	public int getStampId() {
		return stampId;
	}
	public void setStampId(int stampId) {
		this.stampId = stampId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPriceOfStamp() {
		return priceOfStamp;
	}
	public void setPriceOfStamp(int priceOfStamp) {
		this.priceOfStamp = priceOfStamp;
	}
	public int getHourOfStamp() {
		return hourOfStamp;
	}
	public void setHourOfStamp(int hourOfStamp) {
		this.hourOfStamp = hourOfStamp;
	}
	

}
