package com.spring.model;

public class NoStamp {
	private String noStampId;
	private String condition;
	
	public NoStamp() {
		super();
		// TODO Auto-generated constructor stub
	}

	public NoStamp(String noStampId, String condition) {
		super();
		this.noStampId = noStampId;
		this.condition = condition;
	}

	public String getNoStampId() {
		return noStampId;
	}

	public void setNoStampId(String noStampId) {
		this.noStampId = noStampId;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}
}
