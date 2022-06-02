package com.hype.dto;

public class BuyDTO {
	private int seq_order;
	private String user_id; 
	private String buy_name;
	private int buy_price;
	private int buy_qty;
	private String buy_create;
	
	public BuyDTO() {}

	public BuyDTO(int seq_order, String user_id, String buy_name, int buy_price, int buy_qty, String buy_create) {
		super();
		this.seq_order = seq_order;
		this.user_id = user_id;
		this.buy_name = buy_name;
		this.buy_price = buy_price;
		this.buy_qty = buy_qty;
		this.buy_create = buy_create;
	}
	
	
	public int getSeq_order() {
		return seq_order;
	}

	public void setSeq_order(int seq_order) {
		this.seq_order = seq_order;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getBuy_name() {
		return buy_name;
	}

	public void setBuy_namee(String buy_name) {
		this.buy_name = buy_name;
	}

	public int getBuy_price() {
		return buy_price;
	}

	public void setBuy_price(int buy_price) {
		this.buy_price = buy_price;
	}

	public int getBuy_qty() {
		return buy_qty;
	}

	public void setBuy_qty(int buy_qty) {
		this.buy_qty = buy_qty;
	}

	public String getBuy_create() {
		return buy_create;
	}

	public void setBuy_create(String buy_create) {
		this.buy_create = buy_create;
	}

	@Override
	public String toString() {
		return  seq_order + " : " + user_id + " : " + buy_name + " : "
				+ buy_price + " : " + buy_qty + " : " + buy_create;
	}

	
	
	
	
	
}
