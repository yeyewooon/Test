package com.hype.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.hype.dto.CartDTO;
import com.hype.dto.MemberDTO;

public class MemberDAO {
private BasicDataSource bds;
	
	public MemberDAO() {
		try {
			Context iCtx = new InitialContext();
			Context envCtx = (Context)iCtx.lookup("java:comp/env");
			bds = (BasicDataSource)envCtx.lookup("jdbc/bds");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public int signup(MemberDTO dto) throws Exception{ // 회원가입 메소드
		String sql = "insert into tbl_member values(?, ?, ?, ?, ?, ?, ?, ?, ?, default)";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, dto.getUser_id());
			pstmt.setString(2, dto.getUser_password());
			pstmt.setString(3, dto.getUser_name());
			pstmt.setString(4, dto.getUser_date());
			pstmt.setInt(5, dto.getUser_postCode());
			pstmt.setString(6, dto.getUser_roadAddr());
			pstmt.setString(7, dto.getUser_detailAddr());
			pstmt.setString(8, dto.getUser_phone());
			pstmt.setString(9, dto.getUser_email());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
		
	}
	
	public boolean checkId(String id) throws Exception{ //중복검사 메소드
		String sql = "select count(*) from tbl_member where user_id = ?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			int result = 0;
			if(rs.next()) {
				result = rs.getInt(1);
			}
			if(result == 0) {
				return true;
			}else {
				return false;
			}
		}
	}
	
	public MemberDTO login(String id, String pw) throws Exception{ //로그인 메소드
		String sql = "select * from tbl_member where user_id = ? and user_password = ?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				String user_name = rs.getString("user_name");
				String user_date = rs.getString("user_date");
				int user_postCode = rs.getInt("user_postCode");
				String user_rodAddr = rs.getString("user_roadAddr");
				String user_detailAddr = rs.getString("user_detailAddr");
				String user_phone = rs.getString("user_phone");
				String user_email = rs.getString("user_email");
				String user_blacklist = rs.getString("user_blacklist");
				
				return new MemberDTO(id, null, user_name, user_date, user_postCode, user_rodAddr, user_detailAddr,
						user_phone, user_email, user_blacklist);
			}else {
				return null;
			}
			
		}
	}
	
	public ArrayList<MemberDTO> findId(String name, String phone) throws Exception{ // 아이디 찾기 메소드
		String sql = "select user_id from tbl_member where user_name = ? and user_phone = ?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, name);
			pstmt.setString(2, phone);
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<MemberDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				String user_id = rs.getString("user_id");
				list.add(new MemberDTO(user_id, null,null,null,0,null,null,null,null,null));
			}
			return list;
			
		}
	}
	
	public int findPw(String user_id, String user_name) throws Exception{
		String sql = "select count(*) from tbl_member where user_id = ? and user_name = ?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, user_id);
			pstmt.setString(2, user_name);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return 1;
			}else {
				return 0;
			}
			
		}
		
	}
	
	
	public ArrayList<CartDTO> selectAllCart(String id) throws Exception{
		String sql = "select * from tbl_cart where user_id = ?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			ArrayList<CartDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				int seq_cart = rs.getInt(1); 
				int seq_product = rs.getInt(2);
				String user_id = rs.getString(3);
				String cart_name = rs.getString(4);
				int cart_quantity = rs.getInt(5);
				int cart_price = rs.getInt(6);
				
				list.add(new CartDTO(seq_cart, seq_product, user_id, cart_name, cart_quantity, cart_price));
			}
			return list;
			
		}
	}
	
	
	

	
}
