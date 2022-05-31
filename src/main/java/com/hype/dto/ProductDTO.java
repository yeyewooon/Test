package com.hype.dto;

public class ProductDTO {
	
	private int seqProduct;
	private String productCode;
	private String category;
	private String productName;
	private int productPrice;
	private String productContent;
	public ProductDTO(int seqProduct, String productCode, String category, String productName, int productPrice,
			String productContent) {
		super();
		this.seqProduct = seqProduct;
		this.productCode = productCode;
		this.category = category;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productContent = productContent;
	}
	public int getSeqProduct() {
		return seqProduct;
	}
	public void setSeqProduct(int seqProduct) {
		this.seqProduct = seqProduct;
	}
	public String getProductCode() {
		return productCode;
	}
	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public String getProductContent() {
		return productContent;
	}
	public void setProductContent(String productContent) {
		this.productContent = productContent;
	}
	
	
	
	
}
