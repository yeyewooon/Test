package com.hype.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

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
	
	public int signup(MemberDTO dto) throws Exception{
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
			pstmt.setInt(8, dto.getUser_phone());
			pstmt.setString(9, dto.getUser_email());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
		
	}
	
	public boolean checkId(String id) throws Exception{
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
}
