package com.hype.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.hype.dto.ImageDTO;

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
	
	//데이터베이스에서 category로 seq_product 불러오기
	public ArrayList<Integer> selectSeqProByCtg(String category) throws Exception{
		String sql = "select seq_product from tbl_product where category=?";
		
		try(Connection con=bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setString(1, category);
			ResultSet rs = pstmt.executeQuery();
			ArrayList<Integer> list = new ArrayList<>();
			while(rs.next()) {
				int seq_product = rs.getInt("seq_product");
				list.add(seq_product);
			}
			return list;
		}
	}
	
	//데이터베이스에서 사진 불러오기
	public ArrayList<ImageDTO> selectMainImgBySeqPro(int seq_product) throws Exception{
		String sql = "select * from tbl_image where seq_product=?";
		//and image_name like '%main%' order by 1 desc 이거 추가
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setInt(1, seq_product);
			ResultSet rs = pstmt.executeQuery();
			ArrayList<ImageDTO> list = new ArrayList<>();
			while(rs.next()) {
				int seq_image = rs.getInt("seq_image");
				String image_name = rs.getString("image_name");
				String image_path = rs.getString("image_path");
				list.add(new ImageDTO(seq_image, seq_product, image_name, image_path));
			}
			return list;
		}
	}
	//데이터베이스에서 사진 불러오기ffffff
		public ArrayList<ImageDTO> select(String category) throws Exception{
			String sql = "select * from tbl_image where seq_product=(select seq_product from tbl_product where category=?)";
			//and image_name like '%main%' order by 1 desc 이거 추가
			
			try(Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);){
				
				pstmt.setString(1, category);
				ResultSet rs = pstmt.executeQuery();
				ArrayList<ImageDTO> list = new ArrayList<>();
				while(rs.next()) {
					int seq_image = rs.getInt("seq_image");
					int seq_product = rs.getInt("seq_product");
					String image_name = rs.getString("image_name");
					String image_path = rs.getString("image_path");
					list.add(new ImageDTO(seq_image, seq_product, image_name, image_path));
				}
				return list;
			}
		}
	
}
