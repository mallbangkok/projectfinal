package com.spring.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "conditionofparking")
public class ConditionOfParking {
	@Id
	@GeneratedValue
	private int conditionId;
	private String conName;
	private int timeOfCon;
	private int priceOfCon;
	private String dateOfCon;
	private String type;
	@ManyToOne (cascade=CascadeType.MERGE) 
	@JoinColumn (name = "mallId")
	private Mall mall;

	public String getConName() {
		return conName;
	}

	public void setConName(String conName) {
		this.conName = conName;
	}

	public int getTimeOfCon() {
		return timeOfCon;
	}

	public void setTimeOfCon(int timeOfCon) {
		this.timeOfCon = timeOfCon;
	}

	public int getPriceOfCon() {
		return priceOfCon;
	}

	public void setPriceOfCon(int priceOfCon) {
		this.priceOfCon = priceOfCon;
	}

	public String getDateOfCon() {
		return dateOfCon;
	}

	public void setDateOfCon(String dateOfCon) {
		this.dateOfCon = dateOfCon;
	}

	public ConditionOfParking(String conName, int timeOfCon, int priceOfCon, String dateOfCon) {
		super();
		this.conName = conName;
		this.timeOfCon = timeOfCon;
		this.priceOfCon = priceOfCon;
		this.dateOfCon = dateOfCon;
	}

	public ConditionOfParking() {
		super();
	}

	public int getConditionId() {
		return conditionId;
	}

	public void setConditionId(int conditionId) {
		this.conditionId = conditionId;
	}

	public ConditionOfParking(int conditionId, String conName, int timeOfCon, int priceOfCon, String dateOfCon) {
		super();
		this.conditionId = conditionId;
		this.conName = conName;
		this.timeOfCon = timeOfCon;
		this.priceOfCon = priceOfCon;
		this.dateOfCon = dateOfCon;
	}

	public ConditionOfParking(int conditionId, String conName, int timeOfCon, int priceOfCon, String dateOfCon,
			String type) {
		super();
		this.conditionId = conditionId;
		this.conName = conName;
		this.timeOfCon = timeOfCon;
		this.priceOfCon = priceOfCon;
		this.dateOfCon = dateOfCon;
		this.type = type;
	}

	public Mall getMall() {
		return mall;
	}

	public void setMall(Mall mall) {
		this.mall = mall;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public ConditionOfParking(String conName, int timeOfCon, int priceOfCon, String dateOfCon, String type) {
		super();
		this.conName = conName;
		this.timeOfCon = timeOfCon;
		this.priceOfCon = priceOfCon;
		this.dateOfCon = dateOfCon;
		this.type = type;
	}
	
	

}
