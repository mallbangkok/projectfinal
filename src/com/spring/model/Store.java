package com.spring.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "store")
public class Store {
	@Id 
	@GeneratedValue
	private int storeId;
	private String storeName;
	private String storeType;
	private String storeStatus;
	private String floor;
	
	@ManyToOne (cascade=CascadeType.MERGE) 
	@JoinColumn (name = "mallId")
	private Mall mall;

	public int getStoreId() {
		return storeId;
	}

	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreType() {
		return storeType;
	}

	public void setStoreType(String storeType) {
		this.storeType = storeType;
	}

	public String getStoreStatus() {
		return storeStatus;
	}

	public void setStoreStatus(String storeStatus) {
		this.storeStatus = storeStatus;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public Store(String storeName, String storeType, String storeStatus, String floor) {
		super();
		this.storeName = storeName;
		this.storeType = storeType;
		this.storeStatus = storeStatus;
		this.floor = floor;
	}
	
	public Store(int storeId,String storeName, String storeType, String storeStatus, String floor) {
		super();
		this.storeId = storeId;
		this.storeName = storeName;
		this.storeType = storeType;
		this.storeStatus = storeStatus;
		this.floor = floor;
	}
	
	public Store() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Mall getMall() {
		return mall;
	}

	public void setMall(Mall mall) {
		this.mall = mall;
	}
	

}