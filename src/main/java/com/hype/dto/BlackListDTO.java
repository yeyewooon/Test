package com.hype.dto;

public class BlackListDTO {

	private String reg_date;
	private String user_id;
	private String content;
	
	public BlackListDTO() {}
	public BlackListDTO(String reg_date, String user_id, String content) {
		super();
		this.reg_date = reg_date;
		this.user_id = user_id;
		this.content = content;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	@Override
	public String toString() {
		return reg_date + " : " + user_id + " : "+ content;
	}
	
	
	
}
