package com.spring.model;

import java.util.*;
import javax.persistence.*;

@Entity
@Table(name = "mall")
public class Mall {
	@Id
	@GeneratedValue
	private long mallId;
	private String mallNameEng;
	private String mallNameThai;
	private String type;
	private String area;
	private String mallGroup;
	private String statusMall;
	@Column(name = "updDate")
	private String updatedDate;
	private String timeMall;
	private String phoneNoMall;
	private String imageMall;

	@ManyToMany(cascade = CascadeType.ALL, mappedBy = "malls", fetch = FetchType.EAGER)
	private Set<Facilities> facilites = new HashSet<Facilities>();

	@OneToMany(cascade = CascadeType.MERGE, mappedBy = "mall", fetch = FetchType.EAGER)
	private Set<Stamp> stamp = new HashSet<Stamp>();

	@OneToMany(cascade = CascadeType.MERGE, mappedBy = "mall", fetch = FetchType.EAGER)
	private Set<Store> stores = new HashSet<Store>();

	@OneToMany(cascade = CascadeType.MERGE, mappedBy = "mall", fetch = FetchType.EAGER)
	private Set<Conditions> conditions = new HashSet<Conditions>();

	public Mall() {
		super();
	}

	public Mall(String mallNameEng, String mallNameThai, String type, String area, String mallGroup, String statusMall,
			String updatedDate, String timeMall, String phoneNoMall, String imageMall) {
		super();
		this.mallNameEng = mallNameEng;
		this.mallNameThai = mallNameThai;
		this.type = type;
		this.area = area;
		this.mallGroup = mallGroup;
		this.statusMall = statusMall;
		this.updatedDate = updatedDate;
		this.timeMall = timeMall;
		this.phoneNoMall = phoneNoMall;
		this.imageMall = imageMall;
	}

	public Mall(long mallId, String mallNameEng, String mallNameThai, String type, String area, String mallGroup,
			String statusMall, String updatedDate, String timeMall, String phoneNoMall, String imageMall) {
		super();
		this.mallId = mallId;
		this.mallNameEng = mallNameEng;
		this.mallNameThai = mallNameThai;
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

	public String getMallNameEng() {
		return mallNameEng;
	}

	public Set<Stamp> getStamp() {
		return stamp;
	}

	public void setStamp(Set<Stamp> stamp) {
		this.stamp = stamp;
	}

	public void setMallNameEng(String mallNameEng) {
		this.mallNameEng = mallNameEng;
	}

	public String getMallNameThai() {
		return mallNameThai;
	}

	public void setMallNameThai(String mallNameThai) {
		this.mallNameThai = mallNameThai;
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

	public Set<Conditions> getConditions() {
		return conditions;
	}

	public void setConditions(Set<Conditions> conditions) {
		this.conditions = conditions;
	}

}
