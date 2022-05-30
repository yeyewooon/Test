package com.hype.dto;

public class CartDTO {
	private int seq_cart;
	private int product_seq;
	private String user_id;
	private int cart_quantity;
	
	public CartDTO() {}
	public CartDTO(int seq_cart, int product_seq, String user_id, int car_quantity) {
		super();
		this.seq_cart = seq_cart;
		this.product_seq = product_seq;
		this.user_id = user_id;
		this.cart_quantity = car_quantity;
	}
	public int getSeq_cart() {
		return seq_cart;
	}
	public void setSeq_cart(int seq_cart) {
		this.seq_cart = seq_cart;
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
	public int getCart_quantity() {
		return cart_quantity;
	}
	public void setCart_quantity(int cart_quantity) {
		this.cart_quantity = cart_quantity;
	}
	@Override
	public String toString() {
		return seq_cart + " : " + product_seq + " : " + user_id
				+ " : " + cart_quantity;
	}
	
	
}
