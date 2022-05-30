package com.hype.dto;

public class PayDTO {
	private int seq_pay;
	private int seq_order;
	private int pay_price;
	private String order_status;
	
	public PayDTO() {}
	public PayDTO(int seq_pay, int seq_order, int pay_price, String order_status) {
		super();
		this.seq_pay = seq_pay;
		this.seq_order = seq_order;
		this.pay_price = pay_price;
		this.order_status = order_status;
	}
	public int getSeq_pay() {
		return seq_pay;
	}
	public void setSeq_pay(int seq_pay) {
		this.seq_pay = seq_pay;
	}
	public int getSeq_order() {
		return seq_order;
	}
	public void setSeq_order(int seq_order) {
		this.seq_order = seq_order;
	}
	public int getPay_price() {
		return pay_price;
	}
	public void setPay_price(int pay_price) {
		this.pay_price = pay_price;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	@Override
	public String toString() {
		return seq_pay + " : " + seq_order + " : " + pay_price
				+ " : " + order_status;
	}
	
	
}
