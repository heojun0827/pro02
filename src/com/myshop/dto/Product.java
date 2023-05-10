package com.myshop.dto;

public class Product {
	private	String pcode;
	private	String pname;
	private	int Price;
	private	String pcom;
	private	int Amount;
	private	String Pic1;
	private	String Pic2;
	private	String Pic3;
	private String cate;
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getPrice() {
		return Price;
	}
	public void setPrice(int price) {
		Price = price;
	}
	public String getPcom() {
		return pcom;
	}
	public void setPcom(String pcom) {
		this.pcom = pcom;
	}
	public int getAmount() {
		return Amount;
	}
	public void setAmount(int amount) {
		Amount = amount;
	}
	public String getPic1() {
		return Pic1;
	}
	public void setPic1(String pic1) {
		Pic1 = pic1;
	}
	public String getPic2() {
		return Pic2;
	}
	public void setPic2(String pic2) {
		Pic2 = pic2;
	}
	public String getPic3() {
		return Pic3;
	}
	public void setPic3(String pic3) {
		Pic3 = pic3;
	}
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	
	
}
