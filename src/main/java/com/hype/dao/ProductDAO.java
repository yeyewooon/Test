package com.hype.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.hype.dto.ImageDTO;
import com.hype.dto.ProductDTO;

public class ProductDAO {
	private BasicDataSource bds;

	public ProductDAO() {
		try {
			Context iCtx = new InitialContext();
			Context envCtx = (Context) iCtx.lookup("java:comp/env");
			bds = (BasicDataSource) envCtx.lookup("jdbc/bds");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 데이터베이스에서 category로 seq_product 불러오기
	public ArrayList<Integer> selectSeqPbyCate(String category) throws Exception {
		String sql = "select seq_product from tbl_product where category=?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setString(1, category);
			ResultSet rs = pstmt.executeQuery();
			ArrayList<Integer> list = new ArrayList<>();
			while (rs.next()) {
				int seq_product = rs.getInt("seq_product");
				list.add(seq_product);
			}
			return list;
		}
	}

	// 데이터베이스에서 category로 tbl_product 불러오기
	public ArrayList<ProductDTO> selectTblProbyCtg(String category) throws Exception {
		String sql = "select * from tbl_product where category=?  order by 1 desc";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setString(1, category);
			ResultSet rs = pstmt.executeQuery();
			ArrayList<ProductDTO> list = new ArrayList<>();
			while (rs.next()) {
				int seq_product = rs.getInt("seq_product");
				String product_code = rs.getString("product_code");
				String product_name = rs.getString("product_name");
				int product_price = rs.getInt("product_price");
				String product_content = rs.getString("product_content");
				list.add(new ProductDTO(seq_product, product_code, category, product_name, product_price,
						product_content));
			}
			return list;
		}
	}

	// 데이터베이스에서 category로 tbl_image에서 사진 불러오기
	public ArrayList<ImageDTO> getTblImgbyCtg(String category) throws Exception {
		String sql = "select * from tbl_image where seq_product in (select seq_product from tbl_product where category=?) order by 2 desc";
		// and image_name like '%main%' order by 1 desc 이거 추가

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {

			pstmt.setString(1, category);
			ResultSet rs = pstmt.executeQuery();
			ArrayList<ImageDTO> list = new ArrayList<>();
			while (rs.next()) {
				int seq_image = rs.getInt("seq_image");
				int seq_product = rs.getInt("seq_product");
				String image_name = rs.getString("image_name");
				String image_path = rs.getString("image_path");
				list.add(new ImageDTO(seq_image, seq_product, image_name, image_path));
			}
			return list;
		}
	}
	
	//사진 개수 세기
	public int countPro(String category) throws Exception{
		String sql = "select count(*) as cnt from tbl_product where category=?";
		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, category);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt("cnt");
				
			}
			return 0;
		}
		
	}
}
