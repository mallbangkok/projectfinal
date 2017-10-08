package com.spring.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "week")
public class Week {
	@Id @GeneratedValue
	private int weekId;
	private int price;
	private int rateTime;
	private String typeOfTime;
	private String dayOfWeek;
	@ManyToOne (cascade=CascadeType.MERGE) 
	@JoinColumn (name = "conditionId")
	private Conditions conditions;

	public int getWeekId() {
		return weekId;
	}

	public void setWeekId(int weekId) {
		this.weekId = weekId;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getRateTime() {
		return rateTime;
	}

	public void setRateTime(int rateTime) {
		this.rateTime = rateTime;
	}

	public String getTypeOfTime() {
		return typeOfTime;
	}

	public void setTypeOfTime(String typeOfTime) {
		this.typeOfTime = typeOfTime;
	}

	public String getDayOfWeek() {
		return dayOfWeek;
	}

	public void setDayOfWeek(String dayOfWeek) {
		this.dayOfWeek = dayOfWeek;
	}

	public Week(int price, int rateTime, String typeOfTime, String dayOfWeek) {
		super();
		this.price = price;
		this.rateTime = rateTime;
		this.typeOfTime = typeOfTime;
		this.dayOfWeek = dayOfWeek;
	}

	public Week() {
		super();
	}

	public Conditions getConditions() {
		return conditions;
	}

	public void setConditions(Conditions conditions) {
		this.conditions = conditions;
	}

	public Week(int weekId, int price, int rateTime, String typeOfTime, String dayOfWeek, Conditions conditions) {
		super();
		this.weekId = weekId;
		this.price = price;
		this.rateTime = rateTime;
		this.typeOfTime = typeOfTime;
		this.dayOfWeek = dayOfWeek;
		this.conditions = conditions;
	}

	public Week(int weekId, int price, int rateTime, String typeOfTime, String dayOfWeek) {
		super();
		this.weekId = weekId;
		this.price = price;
		this.rateTime = rateTime;
		this.typeOfTime = typeOfTime;
		this.dayOfWeek = dayOfWeek;
	}
	

}
