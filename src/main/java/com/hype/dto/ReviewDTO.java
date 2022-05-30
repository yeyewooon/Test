package com.hype.dto;

public class ReviewDTO {
	private int review_seq;
	private int product_seq;
	private String user_id;
	private String review_content;
	private String review_date;
	private int review_rate;
	public ReviewDTO() {}
	public ReviewDTO(int review_seq, int product_seq, String user_id, String reivew_content, String review_date, int review_rate) {
		super();
		this.review_seq = review_seq;
		this.product_seq = product_seq;
		this.user_id = user_id;
		this.review_content = reivew_content;
		this.review_date = review_date;
		this.review_rate = review_rate;
	}
	public int getReview_seq() {
		return review_seq;
	}
	public void setReview_seq(int review_seq) {
		this.review_seq = review_seq;
	}
	public int getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(int product_seq) {
		this.product_seq = product_seq;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getReview_date() {
		return review_date;
	}
	public void setReview_date(String review_date) {
		this.review_date = review_date;
	}
	public int getReview_rate() {
		return review_rate;
	}
	public void setReview_rate(int review_rate) {
		this.review_rate = review_rate;
	}
	@Override
	public String toString() {
		return review_seq + " : " + product_seq + " : " + user_id
				+ " : " + review_content + " : " + review_date + " : " + review_rate;
	}
	
	
}
