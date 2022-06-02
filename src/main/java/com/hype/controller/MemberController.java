package com.hype.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.hype.dao.MemberDAO;
import com.hype.dao.QnaDAO;
import com.hype.dto.BuyDTO;
import com.hype.dto.MemberDTO;
import com.hype.utills.EncryptionUtils;

@WebServlet("*.mem")
public class MemberController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/jsp; charset=UTF-8");

		String uri = request.getRequestURI();
		System.out.println("요청 uri : " + uri);
		
		if(uri.equals("/toSignup.mem")) { //회원가입창 이동
			response.sendRedirect("/member/signup.jsp");
		}else if(uri.equals("/checkId.mem")) { // 아이디 중복체크
			String user_id = request.getParameter("user_id");
			System.out.println("user_id : " + user_id);
			
			MemberDAO dao = new MemberDAO();
			try {
				boolean rs = dao.checkId(user_id);
				
				if(rs) {
					System.out.println("사용가능한 아이디");
					response.getWriter().append(user_id);
				}else {
					System.out.println("이미 사용중인 아이디");
					response.getWriter().append("false");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if(uri.equals("/signupProc.mem")) { //회원가입프로세스
			String user_id = request.getParameter("user_id");
			String user_password = request.getParameter("user_password");
			String user_name = request.getParameter("user_name");
			String user_date = request.getParameter("user_date");
			int user_postCode = Integer.parseInt(request.getParameter("user_postCode"));
			String user_roadAddr = request.getParameter("user_roadAddr");
			String user_detailAddr = request.getParameter("user_detailAddr");
			String user_phone = request.getParameter("user_phone");
			String user_email = request.getParameter("user_email");
			
			System.out.println(user_id + user_password + user_name + user_date
						+ user_postCode + user_roadAddr + user_detailAddr + " " +  user_phone
						+ user_email);
		
			MemberDAO dao = new MemberDAO();
			try {
				user_password = EncryptionUtils.getSHA512(user_password);
				System.out.println("암호화된 데이터 : " + user_password);
				
				int rs = dao.signup(new MemberDTO(user_id, user_password, user_name, user_date, user_postCode, user_roadAddr, user_detailAddr, user_phone, user_email, null));
				if(rs > 0) {
					response.sendRedirect("/Tohome");
				}else {
					System.out.println("회원가입실패");
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(uri.equals("/toLogin.mem")) { // 로그인 창
			response.sendRedirect("/member/popupLogin.jsp");
			
		}else if(uri.equals("/toLoginProc.mem")) { //로그인 프로세스
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			String url = request.getParameter("url");
			System.out.println("접속 id : " + id);
			System.out.println("접속 pw : " + pw);
			
			
			System.out.println("접속하기 전url" + url);
			
			MemberDAO dao = new MemberDAO();
			try {
				pw = EncryptionUtils.getSHA512(pw);//암호화
				System.out.println("암호화" + pw); // 지워야함
				
				MemberDTO dto = dao.login(id, pw);
				
				if(dto != null) { //로그인 성공
					System.out.println("로그인 성공");
					response.setCharacterEncoding("utf-8");
					HttpSession session = request.getSession();
					session.setAttribute("loginSession", dto);	
					
					response.getWriter().append("loginSuccess");
				}else {// 로그인 실패
					System.out.println("로그인 실패");
					response.getWriter().append("loginFail");
				}
				//request.getRequestDispatcher("/member/popupLogin.jsp").forward(request, response);
			
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(uri.equals("/logoutProc.mem")) {// 로그아웃 요청
			HttpSession session = request.getSession();	
			System.out.println(session.getAttribute("loginSession"));
			// 1. session 객체를 초기화	
			session.invalidate();
			response.sendRedirect("/Tohome");
			
		}else if(uri.equals("/toMypage.mem")) { //마이페이지로 로그인시에만 가능 안했다면 로그인 팝업
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			
			String user_id = ((MemberDTO)session.getAttribute("loginSession")).getUser_id();
			
			MemberDAO dao = new MemberDAO();
			
			try {
				List<Integer> list = dao.myPageCnt(user_id);
				int totalCnt = list.get(0);
				int deliveryCnt = list.get(1);
				int deliveryCompletCnt = list.get(2);
				int totalPrice = list.get(3);
				
				request.setAttribute("user_id", user_id);
				request.setAttribute("totalCnt", totalCnt);
				request.setAttribute("deliveryCnt", deliveryCnt);
				request.setAttribute("deliveryCompletCnt", deliveryCompletCnt);
				request.setAttribute("totalPrice", totalPrice);
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			request.getRequestDispatcher("/member/myPage.jsp").forward(request, response);
			
		}else if(uri.equals("/toCs.mem")) { //고객센터로
			response.sendRedirect("/member/customerService.jsp");
			
		}else if(uri.equals("/toWrite.mem")) {	// 1:1 문의글로 로그인시에만 가능 로그인 안했다면 로그인 팝업
			response.sendRedirect("/member/qna.jsp");
			
		}else if(uri.equals("/findId.mem")) { // 아이디 찾기
			request.setCharacterEncoding("utf-8");
			String find_name = request.getParameter("find_name");
			String find_phone = request.getParameter("find_phone");
			
			MemberDAO dao = new MemberDAO();
				
			try {
				ArrayList<MemberDTO> list = dao.findId(find_name, find_phone);
				System.out.println("user_id : " + list);
				
				if(list == null) {
					System.out.println("등록된 아이디가 없습니다.");
					response.getWriter().append("fail");
				}else {
					
					Gson gson = new Gson();
					String result = gson.toJson(list);
					response.getWriter().append(result);
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}else if(uri.equals("/findPw.mem")) { // 비밀번호찾기
			String user_id = request.getParameter("findPw_id");
			String user_name = request.getParameter("findPw_name");
			MemberDAO dao = new MemberDAO();
			try {
				int rs = dao.findPw(user_id, user_name);
				
				if(rs == 1) { // 1이 가입된 아이디 있음
					System.out.println("아이디 존재");
					response.getWriter().append("exist");
					
				}else if(rs == 0){ // 0 가입된 아이디없음
					System.out.println("아이디 없음");
					response.getWriter().append("no");
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(uri.equals("/toModifyPw.mem")) {  // 비밀번호 수정
			String pw = request.getParameter("modifyPw");
			String user_id = request.getParameter("modifyPw_id");
			MemberDAO dao = new MemberDAO();
			
			try {
				pw = EncryptionUtils.getSHA512(pw);
				
				int rs = dao.modifyPw(pw, user_id);
				
				if(rs != 0) {
					System.out.println("비밀번호 변경완료");
					response.getWriter().append("success");
				}else {
					System.out.println("비밀번호 변경실패");
					response.getWriter().append("fail");
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}else if(uri.equals("/toSearchSeq.mem")) { // 세션 아이디 값으로 주문번호 조회하기
			HttpSession session = request.getSession();
			String user_id = ((MemberDTO)session.getAttribute("loginSession")).getUser_id();
			
			QnaDAO dao = new QnaDAO();
	
			try {
				ArrayList<BuyDTO> list = dao.seq_orderSelectById(user_id); 
				
				if(list != null) {
					System.out.println("주문정보조회 성공");
					request.setAttribute("list", list);
				}else {
					System.out.println("주문정보 없음");
				}
				
				request.getRequestDispatcher("/member/popupOrderseq.jsp").forward(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(uri.equals("/toQnaProc.mem")) { 
			int seq_order = Integer.parseInt(request.getParameter("seq_order"));
			String user_id = request.getParameter("user_id");
			String qna_type = request.getParameter("qna_type");
			String qna_title = request.getParameter("qna_title");
			String qna_content = request.getParameter("qna_content");
			QnaDAO dao = new QnaDAO();
			
			try {
				int rs = dao.qnaInsert(seq_order, user_id, qna_type, qna_title, qna_content);
				
				if(rs >0) {
					System.out.println("등록 성공");
					response.getWriter().append("1");
				}else {
					System.out.println("등록 실패");
					response.getWriter().append("0");
				}
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}else if(uri.equals("/toPay.mem")) { 
			response.sendRedirect("/member/pay.jsp");
		}

		
	}
}
