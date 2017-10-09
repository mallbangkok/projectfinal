package com.spring.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name = "stamp")
public class Stamp {
	@Id 
	@GeneratedValue
	private int stampId;
	private String name;
	private int priceOfStamp;
	private int hourOfStamp;
	
	@ManyToOne (cascade=CascadeType.MERGE) 
	@JoinColumn (name = "mallId")
	private Mall mall;

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

	public Mall getMall() {
		return mall;
	}

	public void setMall(Mall mall) {
		this.mall = mall;
	}

	public Stamp(int stampId, String name, int priceOfStamp, int hourOfStamp, Mall mall) {
		super();
		this.stampId = stampId;
		this.name = name;
		this.priceOfStamp = priceOfStamp;
		this.hourOfStamp = hourOfStamp;
		this.mall = mall;
	}

	public Stamp(String name, int priceOfStamp, int hourOfStamp) {
		super();
		this.name = name;
		this.priceOfStamp = priceOfStamp;
		this.hourOfStamp = hourOfStamp;
	}

	public Stamp() {
		super();
	}
	
	
	

}
