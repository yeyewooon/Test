package com.hype.dto;

public class OrderDTO {
	private int seq_order;
    private String user_id;
    private String order_date;
    private int order_price;
    private String delivery_status;
    private String delivery_msg;
    
    
    
    public OrderDTO() {}
	public OrderDTO(int seq_order, String user_id, String order_date, int order_price, String delivery_status, String delivery_msg) {
		super();
		this.seq_order = seq_order;
		this.user_id = user_id;
		this.order_date = order_date;
		this.order_price = order_price;
		this.delivery_status = delivery_status;
		this.delivery_msg = delivery_msg;
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
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public int getOrder_price() {
		return order_price;
	}
	public void setOrder_price(int order_price) {
		this.order_price = order_price;
	}
	public String getDelivery_status() {
		return delivery_status;
	}
	public void setDelivery_status(String delivery_status) {
		this.delivery_status = delivery_status;
	}
	public String getDelivery_msg() {
		return delivery_msg;
	}
	public void setDelivery_msg(String delivery_msg) {
		this.delivery_msg = delivery_msg;
	}
	@Override
	public String toString() {
		return seq_order + " : " + user_id + " : " + order_date
				+ " : " + order_price + " : " + delivery_status + " : "
				+ delivery_msg;
	}
    
    
    
}
