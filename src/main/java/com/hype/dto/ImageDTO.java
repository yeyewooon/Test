package com.hype.dto;

public class ImageDTO {
	private int seq_image;
	private int seq_product;
	private String image_name;
	private String image_path;
	
	public ImageDTO(int seq_image, int seq_product, String image_name, String image_path) {
		super();
		this.seq_image = seq_image;
		this.seq_product = seq_product;
		this.image_name = image_name;
		this.image_path = image_path;
	}

	public int getSeq_image() {
		return seq_image;
	}

	public void setSeq_image(int seq_image) {
		this.seq_image = seq_image;
	}

	public int getSeq_product() {
		return seq_product;
	}

	public void setSeq_product(int seq_product) {
		this.seq_product = seq_product;
	}

	public String getImage_name() {
		return image_name;
	}

	public void setImage_name(String image_name) {
		this.image_name = image_name;
	}

	public String getImage_path() {
		return image_path;
	}

	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
	
	
}