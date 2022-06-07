package com.hype.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

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
			Context envCtx = (Context) iCtx.lookup("java:comp/env");
			bds = (BasicDataSource) envCtx.lookup("jdbc/bds");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int signup(MemberDTO dto) throws Exception {
		String sql = "insert into tbl_member values(?, ?, ?, ?, ?, ?, ?, ?, ?, default)";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, dto.getUser_id());
			pstmt.setString(2, dto.getUser_password());
			pstmt.setString(3, dto.getUser_name());
			pstmt.setString(4, dto.getUser_date());
			pstmt.setString(5, dto.getUser_postCode());
			pstmt.setString(6, dto.getUser_roadAddr());
			pstmt.setString(7, dto.getUser_detailAddr());
			pstmt.setString(8, dto.getUser_phone());
			pstmt.setString(9, dto.getUser_email());

			int rs = pstmt.executeUpdate();
			return rs;
		}

	}

	public boolean checkId(String id) throws Exception {
		String sql = "select count(*) from tbl_member where user_id = ?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();

			int result = 0;
			if (rs.next()) {
				result = rs.getInt(1);
			}
			if (result == 0) {
				return true;
			} else {
				return false;
			}
		}
	}

	public MemberDTO login(String id, String pw) throws Exception { // 로그인 메소드
		String sql = "select * from tbl_member where user_id = ? and user_password = ?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, id);
			pstmt.setString(2, pw);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				String user_name = rs.getString("user_name");
				String user_date = rs.getString("user_date");
				String user_postCode = rs.getString("user_postCode");
				String user_rodAddr = rs.getString("user_roadAddr");
				String user_detailAddr = rs.getString("user_detailAddr");
				String user_phone = rs.getString("user_phone");
				String user_email = rs.getString("user_email");
				String user_blacklist = rs.getString("user_blacklist");

				return new MemberDTO(id, null, user_name, user_date, user_postCode, user_rodAddr, user_detailAddr,
						user_phone, user_email, user_blacklist);
			} else {
				return null;
			}

		}
	}

	public ArrayList<MemberDTO> findId(String name, String phone) throws Exception { // 아이디 찾기 메소드
		String sql = "select user_id from tbl_member where user_name = ? and user_phone = ?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, name);
			pstmt.setString(2, phone);

			ResultSet rs = pstmt.executeQuery();
			ArrayList<MemberDTO> list = new ArrayList<>();

			while (rs.next()) {
				String user_id = rs.getString("user_id");
				list.add(new MemberDTO(user_id, null, null, null, null, null, null, null, null, null));
			}
			return list;

		}
	}

	public int findPw(String user_id, String user_name) throws Exception {
		String sql = "select count(*) from tbl_member where user_id = ? and user_name = ?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, user_id);
			pstmt.setString(2, user_name);

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				return 1;
			} else {
				return 0;
			}

		}

	}

	public ArrayList<CartDTO> selectAllCart(String id) throws Exception {
		String sql = "select * from tbl_cart where user_id = ?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			DecimalFormat decFormat = new DecimalFormat("###,###");

			ArrayList<CartDTO> list = new ArrayList<>();

			while (rs.next()) {
				int seq_cart = rs.getInt(1);
				int seq_product = rs.getInt(2);
				String user_id = rs.getString(3);
				String cart_name = rs.getString(4);
				int cart_quantity = rs.getInt(5);
				int cart_price = decFormat.format(rs.getInt(6));

				list.add(new CartDTO(seq_cart, seq_product, user_id, cart_name, cart_quantity, cart_price));
			}
			return list;

		}
	}

	public int deleteCart(int num) throws Exception {
		String sql = "delete from tbl_cart where seq_cart = ?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setInt(1, num);
			int rs = pstmt.executeUpdate();

			return rs;
		}
	}

	public int deleteCartAll(String id) throws Exception {
		String sql = "delete from tbl_cart where user_id = ?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, id);

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public int delCartBySelect(int[] seq_cart) throws Exception {
		String[] str = new String[seq_cart.length];

		for (int i = 0; i < seq_cart.length; i++) {
			str[i] = "?";
		}
		String allStr = String.join(",", str);
		String sql = "delete from tbl_cart where seq_cart in";
		sql += "(" + allStr + ")";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			for (int i = 0; i < seq_cart.length; i++) {
				pstmt.setInt(i + 1, seq_cart[i]);
			}

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public int updateQtyCart(int qty, int cart) throws Exception {
		String sql = "update tbl_cart set cart_quantity=? where seq_cart = ?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setInt(1, qty);
			pstmt.setInt(2, cart);

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public int modifyPw(String pw, String id) throws Exception {
		String sql = "update tbl_member set user_password = ? where user_id = ?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, pw);
			pstmt.setString(2, id);

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public List<Integer> myPageCnt(String id) throws Exception{
		String sql = "select  \r\n"
				+ "(select count(a.seq_order) from tbl_order a where a.order_status = '상품준비중' and user_id= ?) as totalCnt,\r\n"
				+ "(select count(b.seq_order) from tbl_order b where b.order_status = '배송중' and user_id= ?) as deliveryCnt,\r\n"
				+ "(select count(c.seq_order) from tbl_order c where c.order_status = '배송완료' and user_id= ?) as deliveryCompleteCnt, \r\n"
				+ "(select SUM(buy_price) from tbl_buy where user_id = ?) as totalPrice \r\n"
				+ "from dual";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, id);
			pstmt.setString(2, id);
			pstmt.setString(3, id);
			pstmt.setString(4, id);
			
			ResultSet rs = pstmt.executeQuery();
			List<Integer> list = new ArrayList<>();
			
			while(rs.next()) {
				int totalCnt = rs.getInt("totalCnt");
				int deliveryCnt = rs.getInt("deliveryCnt");
				int deliveryCompleteCnt = rs.getInt("deliveryCompleteCnt");
				int totalPrice = rs.getInt("totalPrice");
				
				list.add(totalCnt);
				list.add(deliveryCnt);
				list.add(deliveryCompleteCnt);
				list.add(totalPrice);
			}
			return list;
			
			
		}
		
	}
	
	
}

