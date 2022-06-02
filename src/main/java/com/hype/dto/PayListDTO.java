package com.hype.dto;

public class PayListDTO {
	private int product_seq;
	private String product_name;
	private String product_code;
	private int product_price;
	private String category;
	private String product_content;
	private int cart_quantity;
	private String image_path;
	
	public PayListDTO() {
		super();
	}
	
	public PayListDTO(int product_seq, String product_name, String product_code, int product_price, String category,
			String product_content, int cart_quantity, String image_path) {
		super();
		this.product_seq = product_seq;
		this.product_name = product_name;
		this.product_code = product_code;
		this.product_price = product_price;
		this.category = category;
		this.product_content = product_content;
		this.cart_quantity = cart_quantity;
		this.image_path = image_path;
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


	public String getProduct_code() {
		return product_code;
	}


	public void setProduct_code(String product_code) {
		this.product_code = product_code;
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


	public int getCart_quantity() {
		return cart_quantity;
	}


	public void setCart_quantity(int cart_quantity) {
		this.cart_quantity = cart_quantity;
	}

	public String getImage_path() {
		return image_path;
	}

	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}

	@Override
	public String toString() {
		return  product_seq + " : " + product_name + " : "
				+ product_code + " : " + product_price + " : " + category + " : "
				+ product_content + " : " + cart_quantity + " : " + image_path ;
	}
	
	
	
	
}
