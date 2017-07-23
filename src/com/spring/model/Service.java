package com.spring.model;

public class Service {
	private String serviceId;
	private String startRate;
	private String timeReceive;
	private NoStamp noStamp;
	
	public Service() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Service(String serviceId, String startRate, String timeReceive, NoStamp noStamp) {
		super();
		this.serviceId = serviceId;
		this.startRate = startRate;
		this.timeReceive = timeReceive;
		this.noStamp = noStamp;
	}

	public String getServiceId() {
		return serviceId;
	}

	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}

	public String getStartRate() {
		return startRate;
	}

	public void setStartRate(String startRate) {
		this.startRate = startRate;
	}

	public String getTimeReceive() {
		return timeReceive;
	}

	public void setTimeReceive(String timeReceive) {
		this.timeReceive = timeReceive;
	}

	public NoStamp getNoStamp() {
		return noStamp;
	}

	public void setNoStamp(NoStamp noStamp) {
		this.noStamp = noStamp;
	}
}
