package com.hype.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.hype.dao.MemberDAO;
import com.hype.dto.CartDTO;
import com.hype.dto.MemberDTO;
import com.hype.utills.EncryptionUtils;

@WebServlet("*.mem")
public class MemberController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doAction(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/jsp; charset=UTF-8");

		String uri = request.getRequestURI();
		System.out.println("요청 uri : " + uri);

		if (uri.equals("/toSignup.mem")) { // 회원가입창 이동
			response.sendRedirect("/member/signup.jsp");
		} else if (uri.equals("/checkId.mem")) { // 아이디 중복체크
			String user_id = request.getParameter("user_id");
			System.out.println("user_id : " + user_id);

			MemberDAO dao = new MemberDAO();
			try {
				boolean rs = dao.checkId(user_id);

				if (rs) {
					System.out.println("사용가능한 아이디");
					response.getWriter().append(user_id);
				} else {
					System.out.println("이미 사용중인 아이디");
					response.getWriter().append("false");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (uri.equals("/signupProc.mem")) { // 회원가입프로세스
			String user_id = request.getParameter("user_id");
			String user_password = request.getParameter("user_password");
			String user_name = request.getParameter("user_name");
			String user_date = request.getParameter("user_date");
			int user_postCode = Integer.parseInt(request.getParameter("user_postCode"));
			String user_roadAddr = request.getParameter("user_roadAddr");
			String user_detailAddr = request.getParameter("user_detailAddr");
			String user_phone = request.getParameter("user_phone");
			String user_email = request.getParameter("user_email");

			System.out.println(user_id + user_password + user_name + user_date + user_postCode + user_roadAddr
					+ user_detailAddr + " " + user_phone + user_email);

			MemberDAO dao = new MemberDAO();
			try {
				user_password = EncryptionUtils.getSHA512(user_password);
				System.out.println("암호화된 데이터 : " + user_password);

				int rs = dao.signup(new MemberDTO(user_id, user_password, user_name, user_date, user_postCode,
						user_roadAddr, user_detailAddr, user_phone, user_email, null));
				if (rs > 0) {
					response.sendRedirect("/Tohome");
				} else {
					System.out.println("회원가입실패");
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (uri.equals("/toLogin.mem")) { // 로그인 창
			response.sendRedirect("/member/popupLogin.jsp");

		} else if (uri.equals("/toLoginProc.mem")) { // 로그인 프로세스
			request.setCharacterEncoding("utf-8");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			System.out.println("접속 id : " + id);
			System.out.println("접속 pw : " + pw);

			MemberDAO dao = new MemberDAO();
			try {
				pw = EncryptionUtils.getSHA512(pw);// 암호화
				System.out.println("암호화" + pw); // 지워야함

				MemberDTO dto = dao.login(id, pw);
				if (dto != null) { // 로그인 성공
					System.out.println("로그인 성공");
					request.setAttribute("rs", "ok");
					HttpSession session = request.getSession();
					session.setAttribute("loginSession", dto);
				} else {// 로그인 실패
					System.out.println("로그인 실패");
					request.setAttribute("rs", "no");
				}
				request.getRequestDispatcher("/member/popupLogin.jsp").forward(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (uri.equals("/logoutProc.mem")) {// 로그아웃 요청
			HttpSession session = request.getSession();
			System.out.println(session.getAttribute("loginSession"));
			// 1. session 객체를 초기화
			session.invalidate();
			response.sendRedirect("/Tohome");

		} else if (uri.equals("/toMypage.mem")) { // 마이페이지로 로그인시에만 가능 안했다면 로그인 팝업
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();

			MemberDTO dto = (MemberDTO) session.getAttribute("loginSession");
			System.out.println(dto.toString());

			request.setAttribute("userInfo", dto);
			request.getRequestDispatcher("/member/myPage.jsp").forward(request, response);

		} else if (uri.equals("/toCs.mem")) { // 고객센터로
			response.sendRedirect("/member/customerService.jsp");

		} else if (uri.equals("/toWrite.mem")) { // 1:1 문의글로 로그인시에만 가능 로그인 안했다면 로그인 팝업
			response.sendRedirect("/member/qna.jsp");

		} else if (uri.equals("/findId.mem")) { // 아이디 찾기
			request.setCharacterEncoding("utf-8");
			String find_name = request.getParameter("find_name");
			String find_phone = request.getParameter("find_phone");
			System.out.println(find_name + " : " + find_phone);

			MemberDAO dao = new MemberDAO();

			try {
				ArrayList<MemberDTO> list = dao.findId(find_name, find_phone);
				System.out.println("user_id : " + list);

				if (list == null) {
					System.out.println("등록된 아이디가 없습니다.");
					response.getWriter().append("fail");
				} else {

					Gson gson = new Gson();
					String result = gson.toJson(list);
					response.getWriter().append(result);
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (uri.equals("/findPw.mem")) { // 비밀번호찾기
			String user_id = request.getParameter("user_id");
			String user_name = request.getParameter("user_name");

			MemberDAO dao = new MemberDAO();
			try {
				int rs = dao.findPw(user_id, user_name);

				if (rs != 0) { // 1이 가입된 아이디 있음
					System.out.println("아이디 존재");
					response.getWriter().append("exist");

				} else { // 0 가입된 아이디없음
					System.out.println("아이디 없음");
					response.getWriter().append("no");
				}

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (uri.equals("/toCart.mem")) {
			HttpSession session = request.getSession();

			MemberDTO dto = (MemberDTO) session.getAttribute("loginSession");
			MemberDAO dao = new MemberDAO();

			System.out.println("현재 아이디 : " + dto.getUser_id());

			try {
				ArrayList<CartDTO> list = dao.selectAllCart(dto.getUser_id());
				System.out.println(list);

				request.setAttribute("list", list);
				request.getRequestDispatcher("/member/cart.jsp").forward(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (uri.equals("/toDeleteCart.mem")) {
			int seq_cart = Integer.parseInt(request.getParameter("seq_cart"));

			MemberDAO dao = new MemberDAO();

			try {

				int rs = dao.deleteCart(seq_cart);

				if (rs > 0) {
					System.out.println("삭제 완료");
				} else {
					System.out.println("삭제 실패");
				}

				response.sendRedirect("/toCart.mem");
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (uri.equals("/toDelAllCart.mem")) {
			HttpSession session = request.getSession();

			MemberDTO dto = (MemberDTO) session.getAttribute("loginSession");
			MemberDAO dao = new MemberDAO();

			try {
				int rs = dao.deleteCartAll(dto.getUser_id());

				if (rs > 0) {
					System.out.println(dto.getUser_id() + "님의 모든 상품이 삭제되었습니다.");
				} else {
					System.out.println("삭제 실패");
				}

				response.sendRedirect("/toCart.mem");
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (uri.equals("/toDelBySeqCart.mem")) {
			int[] seq_cart = Arrays.stream(request.getParameterValues("seq_cart")).mapToInt(Integer::parseInt).toArray();
			
			MemberDAO dao = new MemberDAO();
			
			try {
				int rs = dao.delCartBySelect(seq_cart);
				
				if(rs > 0) {
					System.out.println("선택 한 상품 삭제 완료");
				}else {
					System.out.println("삭제 실패");
				}
				
				response.sendRedirect("/toCart.mem");
			} catch (Exception e) {
				e.printStackTrace();
			}

			
		} else if (uri.equals("/toChangeQty.mem")) {
			int seq_cart = Integer.parseInt(request.getParameter("seq_cart"));
			int cart_quantity = Integer.parseInt(request.getParameter("cart_quantity"));

			MemberDAO dao = new MemberDAO();
			try {
				int rs = dao.updateQtyCart(cart_quantity, seq_cart);

				if (rs > 0) {
					System.out.println("수량 수정 완료");
				} else {
					System.out.println("수량 수정 실패");
				}

				response.sendRedirect("/toCart.mem");
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (uri.equals("/toPay.mem")) {
			int[] seq_cart = Arrays.stream(request.getParameterValues("seq_cart")).mapToInt(Integer::parseInt).toArray();


		}

	}

}
