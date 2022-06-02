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
   
   

//   public ArrayList<ImageDTO> selectMainImgBySeqPro(int seq_product) throws Exception{
//	      String sql = "select * from tbl_image where seq_product=? order by 1 desc";
//	      
//	      try(Connection con = bds.getConnection();
//	         PreparedStatement pstmt = con.prepareStatement(sql);){
//	         
//	         pstmt.setInt(1, seq_product);
//	         ResultSet rs = pstmt.executeQuery();
//	         ArrayList<ImageDTO> list = new ArrayList<>();
//	         while(rs.next()) {
//	            int seq_image = rs.getInt("seq_image");
//	            String image_name = rs.getString("image_name");
//	            String image_path = rs.getString("image_path");
//	            list.add(new ImageDTO(seq_image, seq_product, image_name, image_path));
//	         }
//	         return list;
//	      }
//	   }
   
/*   //데이터베이스에서 사진 불러오기
   public ArrayList<ImageDTO> selectMainImgBySeqPro(int seq_product) throws Exception{
      String sql = "select * from tbl_image where seq_product=? and image_name like '%main%' order by 1 desc";
      
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
   	*/
   
   // 상품 정보 가져오기
   public ArrayList<ProductDTO> selectAll(int seq_product) throws Exception{
	   String sql = "select * from tbl_product where seq_product = ?";
	   
	   try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
		   
		   pstmt.setInt(1, seq_product);
		   
		   ResultSet rs = pstmt.executeQuery();
		   
		   ArrayList<ProductDTO> list = new ArrayList<>();
		   while(rs.next()) {
			   
			   String product_code = rs.getString("product_code");
			   String category = rs.getString("category");
			   String product_name = rs.getString("product_name");
			   int product_price = rs.getInt("product_price");
			   String product_content = rs.getString("product_content");
			   
			   list.add(new ProductDTO(0, product_code, category, product_name, product_price, product_content));
		   
		   }
		   return list;
	   }
   }
   
   // 상품상세페이지 이미지 가져오기
   public ArrayList<ImageDTO> selectAllImgBySeq(int seq_product) throws Exception{
	      String sql = "select * from tbl_image where seq_product=?";
	      
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
   
   // 장바구니 담기
   
   
}