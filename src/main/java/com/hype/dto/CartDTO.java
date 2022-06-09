package com.hype.dto;

public class CartDTO {
	private int seq_cart;
	private int product_seq;
	private String user_id;
	private int cart_name;
	private int cart_quantity;
	private int cart_price;
	
	public CartDTO() {}
	public CartDTO(int seq_cart, int product_seq, String user_id,int cart_name, int car_quantity,int cart_price) {
		super();
		this.seq_cart = seq_cart;
		this.product_seq = product_seq;
		this.user_id = user_id;
		this.cart_name = cart_name;
		this.cart_quantity = car_quantity;
		this.cart_price = cart_price;
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
	public int getCart_name() {
		return cart_name;
	}
	public void setCart_name(int cart_name) {
		this.cart_name = cart_name;
	}
	public int getCart_quantity() {
		return cart_quantity;
	}
	public void setCart_quantity(int cart_quantity) {
		this.cart_quantity = cart_quantity;
	}
	
	public int getCart_price() {
		return cart_price;
	}
	public void setCart_price(int cart_price) {
		this.cart_price = cart_price;
	}
	@Override
	public String toString() {
		return seq_cart + " : " + product_seq + " : " + user_id
				+ " : " +cart_name + " : "+ cart_quantity + cart_price;
	}
	
	
}
