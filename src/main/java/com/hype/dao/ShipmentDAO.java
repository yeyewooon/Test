package com.hype.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.hype.dto.OrderDTO;


public class ShipmentDAO {
	private BasicDataSource bds;

	public ShipmentDAO() {
		try {
			Context iCtx = new InitialContext();
			Context envCtx = (Context)iCtx.lookup("java:comp/env");
			bds = (BasicDataSource)envCtx.lookup("jdbc/bds");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	// 배송 정보 화면 보여주기 
	public ArrayList<OrderDTO> selectAll(int start, int end) throws Exception {
		String sql = "select * from (select tbl_order.*, row_number() over(order by seq_order desc) as num from tbl_order)"
				+ " where num between ? and ?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);

			ResultSet rs = pstmt.executeQuery();
			ArrayList<OrderDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				int seq_order = rs.getInt("seq_order");
				String user_id = rs.getString("user_id");
				String order_name = rs.getString("order_name");
				String order_phone = rs.getString("order_phone");
				String order_postCode = rs.getString("order_postCode");
				String order_address = rs.getString("order_address");
				String order_msg = rs.getString("order_msg");
				String order_status = rs.getString("order_status");
				list.add(new OrderDTO(seq_order,user_id,order_name,order_phone,order_postCode,order_address,order_msg,order_status));
			}
			return list;
		}
	}
	
	// 배송 정보 수정페이지에서 뿌려줄 데이터들  
	public ArrayList<OrderDTO> selectAllBySeq(int seq_order) throws Exception {
	
		String sql = "select * from tbl_order where seq_order = ?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setInt(1, seq_order);
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<OrderDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				String user_id = rs.getString("user_id");
				String order_name = rs.getString("order_name");
				String order_phone = rs.getString("order_phone");
				String order_postCode = rs.getString("order_postCode");
				String order_address = rs.getString("order_address");
				String order_msg = rs.getString("order_msg");
				String order_status = rs.getString("order_status");
				list.add(new OrderDTO(seq_order,user_id,order_name,order_phone,order_postCode,order_address,order_msg,order_status));
			}
			return list;
		}
	}
	
	// 배송 정보 데이터 수정
	public int modify(OrderDTO dto) throws Exception{
		String sql = "update tbl_order set order_name = ?, order_phone = ?, order_postCode = ?, order_address = ?, order_status = ? where seq_order=?";
		try(Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setString(1, dto.getOrder_name());
			pstmt.setString(2, dto.getOrder_phone());
			pstmt.setString(3, dto.getOrder_postCode());
			pstmt.setString(4, dto.getOrder_address());
			pstmt.setString(5, dto.getOrder_status());
			pstmt.setInt(6, dto.getSeq_order());
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	
	// 배송 정보 검색어로 찾기 
	public ArrayList<OrderDTO> searchByTitle(String searchKeyword) throws Exception{
		String sql = "select * from tbl_order where order_status like '%'||?||'%' order by 1 desc";
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){

			pstmt.setString(1, searchKeyword);
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<OrderDTO> list = new ArrayList<>();
			while(rs.next()) {
				int seq_order = rs.getInt("seq_order");
				String user_id = rs.getString("user_id");
				String order_name = rs.getString("order_name");
				String order_phone = rs.getString("order_phone");
				String order_postCode = rs.getString("order_postCode");
				String order_address = rs.getString("order_address");
				String order_msg = rs.getString("order_msg");
				String order_status = rs.getString("order_status");
				list.add(new OrderDTO(seq_order,user_id,order_name,order_phone,order_postCode,order_address,order_msg,order_status));
			}
			return list;
		}
	}
	
	
	// 날짜 변경
	public String getStringDate(Date date) {
		// 1900년 02월 02일 00시 00분 00초
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH시 mm분 ss초");
		return sdf.format(date);
	}
	
	
	// 페이지네이션 
	public HashMap<String, Object> getPageNavi(int curPage) throws Exception{
		String sql = "select count(*) as totalCnt from tbl_order";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			
			int totalCnt = rs.getInt("totalCnt"); // 전체 게시글의 개수
			int recordCntPerPage = 10; // 한 페이지에 몇개의 데이터(게시글)을 띄워줄지
			int naviCntPerPage = 5; // 네비바에 몇개 단위로 페이징을 구성할지
			int pageTotalCnt = 0; // 총 몇 페이지가 나올지
			
			
			if(totalCnt % recordCntPerPage > 0) { // 나머지가 생김(10의 배수가 아님x)
				pageTotalCnt = totalCnt / recordCntPerPage + 1;
			}else {
				pageTotalCnt = totalCnt / recordCntPerPage;
			}
			
			/* 현재 페이지는 반드시 1 이상
			 * 현재 페이지는 총 페이지의 개수를 넘어갈 수 없음  */
			if(curPage < 1) { // 현재 페이지가 0이거나 혹은 음수일때
				curPage = 1; // 무조건 첫페이지로 맞춰주기
			}else if(curPage > pageTotalCnt) { // 현재 페이지가 총 페이지 수보다 크다면
				curPage = pageTotalCnt; // 무조건 마지막 페이지로 맞춰주기 
			}					
			
			
			int startNavi = ((curPage-1) / naviCntPerPage) * naviCntPerPage + 1;
			int endNavi = startNavi + naviCntPerPage - 1;
			
			// endNavi가 전체페이지를 넘어갈 수 없음
			if(pageTotalCnt < endNavi) { // endNavi가 전체 페이지수보다 크다면
				endNavi = pageTotalCnt; // endNavi를 마지막 페이지로 수정해주겠다. 
			}
			
			// < > 모양을 넣어줄지 여부에 대한 검사
			boolean needPrev = true; // startNavi가 1일때 needPrev가 false
			boolean needNext = true; // endNavi가 마지막 페이지(전체 페이지)와 같을때 needNext가 false
			
			if(startNavi == 1) {
				needPrev = false;
			}
			if(endNavi == pageTotalCnt) {
				needNext = false;
			}
			
			HashMap<String, Object> map = new HashMap<>();
			map.put("startNavi", startNavi);
			map.put("endNavi", endNavi);
			map.put("needPrev", needPrev);
			map.put("needNext", needNext);
			
			return map;
		}
	}
	

	
}
