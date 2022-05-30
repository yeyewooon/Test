package com.hype.dto;

public class ImageDTO {
	private int seq_image;
	private int product_seq;
	private String image_main;
	private int image_section;
	
	public ImageDTO() {}
	
	public ImageDTO(int seq_image, int product_seq, String image_main, int image_section) {
		super();
		this.seq_image = seq_image;
		this.product_seq = product_seq;
		this.image_main = image_main;
		this.image_section = image_section;
	}
	public int getSeq_image() {
		return seq_image;
	}
	public void setSeq_image(int seq_image) {
		this.seq_image = seq_image;
	}
	public int getProduct_seq() {
		return product_seq;
	}
	public void setProduct_seq(int product_seq) {
		this.product_seq = product_seq;
	}
	public String getImage_main() {
		return image_main;
	}
	public void setImage_main(String image_main) {
		this.image_main = image_main;
	}
	public int getImage_section() {
		return image_section;
	}
	public void setImage_section(int image_section) {
		this.image_section = image_section;
	}
	@Override
	public String toString() {
		return seq_image + " : " + product_seq + " : " + image_main
				+ " : " + image_section;
	}
	
	
}
