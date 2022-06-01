package com.hype.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.hype.dto.BuyDTO;
import com.hype.dto.QnaDTO;

public class QnaDAO {
private BasicDataSource bds;
	
	public QnaDAO() {
		try {
			Context iCtx = new InitialContext();
			Context envCtx = (Context)iCtx.lookup("java:comp/env");
			bds = (BasicDataSource)envCtx.lookup("jdbc/bds");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public String getStringDate(Date date) {
		// 1900년 02월 02일
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
		return sdf.format(date);
	}
	
	public ArrayList<BuyDTO> seq_orderSelectById(String id) throws Exception{ // 회원아이디로 주문번호찾기
		String sql = "select * from tbl_buy where user_id = ?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<BuyDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				int seq_order = rs.getInt("seq_order");
				String user_id = rs.getString("user_id");
				String buy_name = rs.getString("buy_name");
				int buy_qty  = rs.getInt("buy_qty");
				int buy_price = rs.getInt("buy_price");
				String buy_create = getStringDate(rs.getDate("buy_create"));
				
				list.add(new BuyDTO(seq_order,user_id,buy_name,buy_price, buy_qty, buy_create));
			}
			return list;
		}
		
	}
	
	
	public int qnaInsert(int seq_order, String id, String type, String title, String content) throws Exception{ //문의글 작성
		String sql = "insert into tbl_qna (seq_qna, seq_order, user_id, qna_type, qna_title, qna_content, qna_date )"
				+ "values(seq_qna.nextval, ?, ?, ?, ?, ?, sysdate)";
		
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setInt(1, seq_order);
			pstmt.setString(2, id);
			pstmt.setString(3, type);
			pstmt.setString(4, title);
			pstmt.setString(5, content);
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	
	
}
