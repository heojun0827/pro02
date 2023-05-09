package com.myshop.dto;

public class Basket {
	private	String basket_num;
	private	String id;
	private	String pcode;
	private	int amount;
	public String getBasket_num() {
		return basket_num;
	}
	public void setBasket_num(String basket_num) { this.basket_num = basket_num; }
	public String getId() { return id; }
	public void setId(String id) { this.id = id; }
	public String getPcode() { return pcode; }
	public void setPcode(String pcode) {this.pcode = pcode;}
	public int getAmount() { return amount; }
	public void setAmount(int amount) { this.amount = amount; }
}
