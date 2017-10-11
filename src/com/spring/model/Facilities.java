package com.spring.model;

import java.util.*;

import javax.persistence.*;

@Entity
@Table(name = "facilities")
public class Facilities {
	@Id
	private String facilitiesId;
	private String facilitiesName;
	
	@ManyToMany(fetch = FetchType.EAGER , cascade = CascadeType.MERGE)
	@JoinTable(name = "mall_facilities" , joinColumns = {
		@JoinColumn(name = "facilitiesId")} , inverseJoinColumns = {
		@JoinColumn(name = "mallId")})
	private Set<Mall> malls = new HashSet<Mall>();
	
	public Facilities() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Facilities(String facilitiesId, String facilitiesName) {
		super();
		this.facilitiesId = facilitiesId;
		this.facilitiesName = facilitiesName;
	}
	public String getFacilitiesId() {
		return facilitiesId;
	}
	public void setFacilitiesId(String facilitiesId) {
		this.facilitiesId = facilitiesId;
	}
	public String getFacilitiesName() {
		return facilitiesName;
	}
	public void setFacilitiesName(String facilitiesName) {
		this.facilitiesName = facilitiesName;
	}
	public Set<Mall> getMalls() {
		return malls;
	}
	public void setMalls(Set<Mall> malls) {
		this.malls = malls;
	}
}
