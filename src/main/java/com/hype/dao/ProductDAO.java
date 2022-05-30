package com.hype.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.hype.dto.ProductDTO;

public class ProductDAO {
	private BasicDataSource bds;
	public ProductDAO() {
		try {
			Context iCtx = new InitialContext();
			Context envCtx = (Context)iCtx.lookup("java:comp/env");
			bds = (BasicDataSource)envCtx.lookup("jdbc/bds");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public int productInsert(ProductDTO dto) throws Exception{
		String sql = "insert into tbl_product values(?,?,?,?,?,?)";
		try(Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			pstmt.setInt(1, dto.getProduct_seq());
			pstmt.setString(2, dto.getCategory());
			pstmt.setString(3, dto.getProduct_name());
			pstmt.setInt(4, dto.getProduct_price());
			pstmt.setString(5, dto.getProduct_code());
			pstmt.setString(6, dto.getProduct_content());
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
}
