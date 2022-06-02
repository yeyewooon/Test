package com.hype.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hype.dao.MemberDAO;
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
		
		if(uri.equals("/toSignup.mem")) {
			response.sendRedirect("/member/signup.jsp");
		}else if(uri.equals("/checkId.mem")) {
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
			
		}else if(uri.equals("/signupProc.mem")) {
			String user_id = request.getParameter("user_id");
			String user_password = request.getParameter("user_password");
			String user_name = request.getParameter("user_name");
			String user_date = request.getParameter("user_date");
			int user_postCode = Integer.parseInt(request.getParameter("user_postCode"));
			String user_roadAddr = request.getParameter("user_roadAddr");
			String user_detailAddr = request.getParameter("user_detailAddr");
			int user_phone = Integer.parseInt(request.getParameter("user_phone"));
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
		}
	}

}
