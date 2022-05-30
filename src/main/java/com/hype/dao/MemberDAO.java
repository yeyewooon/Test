package com.hype.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
		String sql = "insert into tbl_member values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getNickname());
			pstmt.setString(4, dto.getPhone());
			pstmt.setString(5, dto.getPostCode());
			pstmt.setString(6, dto.getRoadAddr());
			pstmt.setString(7, dto.getDetailAddr());
			pstmt.setString(8, dto.getExtraAddr());
			pstmt.setString(8, dto.getExtraAddr());
			pstmt.setString(8, dto.getExtraAddr());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
		
	}
}
