package com.spring.model;

public class CalculateParking {
	private String timeIn;
	private String timeOut;
	private int sum;
	
	public CalculateParking() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CalculateParking(String timeIn, String timeOut) {
		super();
		this.timeIn = timeIn;
		this.timeOut = timeOut;
	}

	public String getTimeIn() {
		return timeIn;
	}

	public void setTimeIn(String timeIn) {
		this.timeIn = timeIn;
	}

	public String getTimeOut() {
		return timeOut;
	}

	public void setTimeOut(String timeOut) {
		this.timeOut = timeOut;
	}

	public int getSum() {
		return sum;
	}

	public void setSum(int sum) {
		this.sum = sum;
	}
}
