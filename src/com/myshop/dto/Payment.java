package com.myshop.dto;

public class Payment {
	private	String paynumber;
	private	String id;
	private	String order_num;
	private	String paymethod;
	private	String method_num;
	private	int pamount;
	private	String setday;
	public String getPaynumber() {
		return paynumber;
	}
	public void setPaynumber(String paynumber) {
		this.paynumber = paynumber;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getOcode() {
		return order_num;
	}
	public void setOcode(String order_num) {
		this.order_num = order_num;
	}
	public String getPaymethod() {
		return paymethod;
	}
	public void setPaymethod(String paymethod) {
		this.paymethod = paymethod;
	}
	public String getNumber() {
		return method_num;
	}
	public void setNumber(String method_num) {
		this.method_num = method_num;
	}
	public int getPamount() {
		return pamount;
	}
	public void setPamount(int pamount) {
		this.pamount = pamount;
	}
	public String getSetday() {
		return setday;
	}
	public void setSetday(String setday) {
		this.setday = setday;
	}
	
}
