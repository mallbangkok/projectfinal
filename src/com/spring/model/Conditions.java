package com.spring.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "conditions")
public class Conditions {
	@Id
	@GeneratedValue
	private int conditionId;
	private String conditionName;
	private String typeOfCon;
	@OneToMany(cascade = CascadeType.MERGE, mappedBy = "conditions", fetch = FetchType.EAGER)
	private Set<Week> week = new HashSet<Week>();

	@ManyToOne(cascade = CascadeType.MERGE)
	@JoinColumn(name = "mallId")
	private Mall mall;

	public int getConditionId() {
		return conditionId;
	}

	public void setConditionId(int conditionId) {
		this.conditionId = conditionId;
	}

	public String getConditionName() {
		return conditionName;
	}

	public void setConditionName(String conditionName) {
		this.conditionName = conditionName;
	}

	public String getTypeOfCon() {
		return typeOfCon;
	}

	public void setTypeOfCon(String typeOfCon) {
		this.typeOfCon = typeOfCon;
	}

	public Conditions(int conditionId, String conditionName, String typeOfCon) {
		super();
		this.conditionId = conditionId;
		this.conditionName = conditionName;
		this.typeOfCon = typeOfCon;
	}

	public Conditions(String conditionName, String typeOfCon) {
		super();
		this.conditionName = conditionName;
		this.typeOfCon = typeOfCon;
	}

	public Conditions() {
		super();
	}

	public Set<Week> getWeek() {
		return week;
	}

	public void setWeek(Set<Week> week) {
		this.week = week;
	}

	public Mall getMall() {
		return mall;
	}

	public void setMall(Mall mall) {
		this.mall = mall;
	}

	public Conditions(int conditionId, String conditionName, String typeOfCon, Set<Week> week, Mall mall) {
		super();
		this.conditionId = conditionId;
		this.conditionName = conditionName;
		this.typeOfCon = typeOfCon;
		this.week = week;
		this.mall = mall;
	}
	

}
