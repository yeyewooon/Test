package com.hype.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;

import org.apache.tomcat.dbcp.dbcp2.BasicDataSource;

import com.hype.dto.CartDTO;
import com.hype.dto.MemberDTO;
import com.hype.dto.QnaDTO;
import com.hype.dto.ReplyDTO;

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
			pstmt.setString(5, dto.getUser_postCode());
			pstmt.setString(6, dto.getUser_roadAddr());
			pstmt.setString(7, dto.getUser_detailAddr());
			pstmt.setString(8, dto.getUser_phone());
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

	public MemberDTO kakao(String email) {
		return new MemberDTO(email, null, null, null, null, null, null, null, null, null);
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
				String cart_price = decFormat.format(rs.getInt(6));
				String cart_total = decFormat.format(rs.getInt(6) * cart_quantity);

				list.add(new CartDTO(seq_cart, seq_product, user_id, cart_name, cart_quantity, cart_price, cart_total));
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
	
	public int modifyPw(String pw, String id) throws Exception{
		String sql = "update tbl_member set user_password = ? where user_id = ?";
		
		try(Connection con = bds.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, pw);
			pstmt.setString(2, id);
			
			int rs = pstmt.executeUpdate();
			return rs;
		}
	}
	

	public MemberDTO selectById(String id) throws Exception {
		String sql = "select * from tbl_member where user_id = ?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				String user_id = rs.getString(1);
				String user_password = rs.getString(2);
				String user_name = rs.getString(3);
				String user_date = getStringBirth(rs.getDate(4));
				String user_postCode = rs.getString(5);
				String user_roadAddr = rs.getString(6);
				String user_detailAddr = rs.getString(7);
				String user_phone = rs.getString(8);
				String user_email = rs.getString(9);
				String user_blacklist = rs.getString(10);

				return new MemberDTO(user_id, user_password, user_name, user_date, user_postCode, user_roadAddr,
						user_detailAddr, user_phone, user_email, user_blacklist);
			}
			return null;
		}
	}

	public String getStringBirth(Date date) {
		// 990101
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMdd");
		return sdf.format(date);
	}
	
	public String getStringDate(Date date) {
		// 2022.01.01
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		return sdf.format(date);
	}

	public int modifyMember(MemberDTO dto) throws Exception {
		String sql = "update tbl_member set user_postCode=?, user_roadAddr=?, user_detailAddr=?, user_phone=? , user_email=? where user_id =?";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, dto.getUser_postCode());
			pstmt.setString(2, dto.getUser_roadAddr());
			pstmt.setString(3, dto.getUser_detailAddr());
			pstmt.setString(4, dto.getUser_phone());
			pstmt.setString(5, dto.getUser_email());
			pstmt.setString(6, dto.getUser_id());

			int rs = pstmt.executeUpdate();
			return rs;
		}
	}

	public List<Integer> myPageCnt(String id) throws Exception {
		String sql = "select  \r\n"
				+ "(select count(a.seq_order) from tbl_order a where a.order_status = '상품준비중' and user_id= ?) as totalCnt,\r\n"
				+ "(select count(b.seq_order) from tbl_order b where b.order_status = '배송중' and user_id= ?) as deliveryCnt,\r\n"
				+ "(select count(c.seq_order) from tbl_order c where c.order_status = '배송완료' and user_id= ?) as deliveryCompleteCnt, \r\n"
				+ "(select SUM(buy_price) from tbl_buy where user_id = ?) as totalPrice \r\n" + "from dual";

		try (Connection con = bds.getConnection(); PreparedStatement pstmt = con.prepareStatement(sql)) {

			pstmt.setString(1, id);
			pstmt.setString(2, id);
			pstmt.setString(3, id);
			pstmt.setString(4, id);

			ResultSet rs = pstmt.executeQuery();
			List<Integer> list = new ArrayList<>();

			while (rs.next()) {
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
	
	public ArrayList<QnaDTO> qnaById(String id,int start, int end) throws Exception{
		String sql = "select * from (select tbl_qna.*, row_number() over(order by seq_qna desc) as num from tbl_qna) where user_id=? and num between ? and ?";

		try (Connection con = bds.getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, id);
			pstmt.setInt(2, start);			
			pstmt.setInt(3, end);			
			ArrayList<QnaDTO> list = new ArrayList<>();
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int seq_qna = rs.getInt(1);
				int seq_order = rs.getInt(2);
				String user_id = rs.getString(3);
				String qna_type = rs.getString(4);
				String qna_title = rs.getString(5);
				String qna_content = rs.getString(6);
				String qna_status = rs.getString(7);
				String qna_date = getStringDate(rs.getDate(8));
				
				list.add(new QnaDTO(seq_qna, seq_order, user_id, qna_type, qna_title, qna_content, qna_status ,qna_date));
			}
			return list;
		}
	}
	
	public HashMap<String, Object> getPageNavi(int curPage, String id) throws Exception{
		String sql = "select count(*) as totalCnt from tbl_qna where user_id=?";
		
		try( Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			
			int totalCnt = rs.getInt("totalCnt"); // 전체 게시글의 개수
			int recordCntPerPage = 5; // 한 페이지에 몇개의 데이터(게시글)을 띄워줄지
			int naviCntPerPage = 5; // 네비바에 몇개 단위로 페이징을 구성할지
			int pageTotalCnt = 0; // 총 몇 페이지가 나올지
			
			if(totalCnt % recordCntPerPage > 0) { // 나머지가 생김(10의 배수가 아님x)
				pageTotalCnt = totalCnt / recordCntPerPage + 1;
			}else {
				pageTotalCnt = totalCnt / recordCntPerPage;
			}
			
			if(curPage < 1) { // 현재 페이지가 0이거나 혹은 음수일때
				curPage = 1; // 무조건 첫페이지로 맞춰주기
			}else if(curPage > pageTotalCnt) { // 현재 페이지가 총 페이지 수 보다 크다면
				 curPage = pageTotalCnt;
			}
			
			int startNavi = ((curPage) / naviCntPerPage) + 1;
			int endNavi = startNavi + naviCntPerPage -1;
			
			// endNavi 가 전체페이지를 넘어갈 수 없음
			if(pageTotalCnt < endNavi) { // endNavi가 전체 페이지수보다 크다면
				endNavi = pageTotalCnt; // end
			}
			
			// <  > 모양을 넣어줄지 여부에 대한 검사
			boolean needPrev = true; // starNavi가 1일 때 needPrev가 false
			boolean needNext = true; // endNavi가 마지막 페이지(전체 페이지)와 같을 때 needNext가 false
			
			if(startNavi == 1) {
				needPrev = false;
			}
			if(endNavi == pageTotalCnt) {
				needNext = false;
			}
			
			// map -> key, value
			// 제네릭 <키에 대한 자료형, 값에 대한 자료형>
			HashMap<String, Object> map = new HashMap<>();
			map.put("startNavi", startNavi);
			map.put("endNavi", endNavi);
			map.put("needPrev", needPrev);
			map.put("needNext", needNext);
			map.put("curPage", curPage);
			
			return map;
		}
	}
	
	public ArrayList<ReplyDTO> replyById(String id, int[] num) throws Exception{
		String[] str = new String[num.length];

		for (int i = 0; i < num.length; i++) {
			str[i] = "?";
		}
		String allStr = String.join(",", str);
		String sql = "select * from tbl_reply where user_id = ? and seq_qna in ";
		sql += "(" + allStr + ")";
		
		try (Connection con = bds.getConnection(); 
				PreparedStatement pstmt = con.prepareStatement(sql)) {
			
			pstmt.setString(1, id);
			
			for (int i = 0; i < num.length; i++) {
				pstmt.setInt(i + 2, num[i]);
			}
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<ReplyDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				int seq_reply = rs.getInt(1);
				String user_id = rs.getString(2);
				int seq_qna = rs.getInt(3);
				String qna_reply = rs.getString(4);
				String reply_date = getStringDate(rs.getDate(5));
				
				list.add(new ReplyDTO(seq_reply, user_id, seq_qna, qna_reply, reply_date));
			}
			return list;
		}
	}
	
	public ArrayList<QnaDTO> searchByQna(String id,String type,String searchKeyword, int start, int end) throws Exception{
		String sql = "select * from (select tbl_qna.*, row_number() over(order by seq_qna desc) as num from tbl_qna) where user_id = ? and "+type+  " like '%'||?||'%' and num between ? and ?";
		
		try( Connection con = bds.getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, id);
			pstmt.setString(2, searchKeyword);
			pstmt.setInt(3, start);			
			pstmt.setInt(4, end);
			
			ResultSet rs = pstmt.executeQuery();
			ArrayList<QnaDTO> list = new ArrayList<>();
			
			while(rs.next()) {
				int seq_qna = rs.getInt("seq_qna");
				int seq_order = rs.getInt("seq_order");
				String user_id = rs.getString("user_id");
				String qna_type = rs.getString("qna_type");
				String qna_title = rs.getString("qna_title");
				String qna_content = rs.getString("qna_content");
				String qna_status = rs.getString("qna_status");
				String qna_date = getStringDate(rs.getDate("qna_date"));
				
				list.add(new QnaDTO(seq_qna, seq_order, user_id, qna_type, qna_title, qna_content, qna_status ,qna_date));
			}
			return list;
		}
	}

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
