package com.hype.dto;

public class ProductDTO {
	private int product_seq;
	private String product_name;
	private int product_price;
	private String category;
	private String product_content;
	
	public ProductDTO() {}
	public ProductDTO(int product_seq, String product_name, int product_price, String categoy, String product_content) {
		super();
		this.product_seq = product_seq;
		this.product_name = product_name;
		this.product_price = product_price;
		this.category = categoy;
		this.product_content = product_content;
	}
	public int getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(int product_seq) {
		this.product_seq = product_seq;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getProduct_content() {
		return product_content;
	}
	public void setProduct_content(String product_content) {
		this.product_content = product_content;
	}
	@Override
	public String toString() {
		return product_seq + " : " + product_name + " : "
				+ product_price + " : " + category + " : " + product_content;
	}
	
	
}
