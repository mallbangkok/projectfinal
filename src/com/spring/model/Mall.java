package com.spring.model;

import java.util.*;

import javax.persistence.*;

@Entity
@Table(name = "mall")
public class Mall {
	@Id @GeneratedValue
	private long mallId;
	private String mallName;
	private String type;
	private String area;
	private String mallGroup;
	private String statusMall;
	private String updatedDate;
	private String timeMall;
	private String phoneNoMall;
	private String imageMall;
	
	@ManyToMany(cascade=CascadeType.ALL , mappedBy = "malls" , fetch = FetchType.EAGER)
	private Set<Facilities> facilites = new HashSet<Facilities>();
	

	@OneToMany (cascade=CascadeType.ALL, mappedBy = "mall" , fetch = FetchType.EAGER) 
	private Set<Store> stores = new HashSet<Store>();
	
	public Mall() {
		super();
		// TODO Auto-generated constructor stub
		
	}

	public Mall(String mallName, String type, String area, String mallGroup,String statusMall,String updatedDate, String timeMall, String phoneNoMall,
			String imageMall) {
		super();
		this.mallName = mallName;
		this.type = type;
		this.area = area;
		this.mallGroup = mallGroup;
		this.statusMall = statusMall;
		this.updatedDate = updatedDate;
		this.timeMall = timeMall;
		this.phoneNoMall = phoneNoMall;
		this.imageMall = imageMall;
	}

	public Mall(long mallId, String mallName, String type, String area, String mallGroup, String statusMall,
			String updatedDate, String timeMall, String phoneNoMall, String imageMall) {
		super();
		this.mallId = mallId;
		this.mallName = mallName;
		this.type = type;
		this.area = area;
		this.mallGroup = mallGroup;
		this.statusMall = statusMall;
		this.updatedDate = updatedDate;
		this.timeMall = timeMall;
		this.phoneNoMall = phoneNoMall;
		this.imageMall = imageMall;
	}

	public long getMallId() {
		return mallId;
	}

	public void setMallId(long mallId) {
		this.mallId = mallId;
	}

	public String getMallName() {
		return mallName;
	}

	public void setMallName(String mallName) {
		this.mallName = mallName;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getMallGroup() {
		return mallGroup;
	}

	public void setMallGroup(String mallGroup) {
		this.mallGroup = mallGroup;
	}

	public String getStatusMall() {
		return statusMall;
	}

	public void setStatusMall(String statusMall) {
		this.statusMall = statusMall;
	}

	public String getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(String updatedDate) {
		this.updatedDate = updatedDate;
	}

	public String getTimeMall() {
		return timeMall;
	}

	public void setTimeMall(String timeMall) {
		this.timeMall = timeMall;
	}

	public String getPhoneNoMall() {
		return phoneNoMall;
	}

	public void setPhoneNoMall(String phoneNoMall) {
		this.phoneNoMall = phoneNoMall;
	}

	public String getImageMall() {
		return imageMall;
	}

	public void setImageMall(String imageMall) {
		this.imageMall = imageMall;
	}

	public Set<Facilities> getFacilites() {
		return facilites;
	}

	public void setFacilites(Set<Facilities> facilites) {
		this.facilites = facilites;
	}

	public Set<Store> getStores() {
		return stores;
	}

	public void setStores(Set<Store> stores) {
		this.stores = stores;
	}
}
