package com.myshop.dto;

public class Review {
	private	String tnumber;
	private	String id;
	private	String order_num;
	private	String writing_date;
	private	String review;
	private	int rating;
	public String getTnumber() {
		return tnumber;
	}
	public void setTnumber(String tnumber) {
		this.tnumber = tnumber;
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
	public String getWriting_date() {
		return writing_date;
	}
	public void setWriting_date(String writing_date) {
		this.writing_date = writing_date;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	
}	
