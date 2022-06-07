package com.hype.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hype.dao.ShipmentDAO;
import com.hype.dto.BuyDTO;
import com.hype.dto.ImageDTO;
import com.hype.dto.ProductDTO;
import com.hype.dto.RankingDTO;


@WebServlet("*.sh")
public class ShipmentController extends HttpServlet {
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html ; charset=utf-8");
		
		String uri = request.getRequestURI();
		System.out.println("요청 url : " + uri);
		
	
		if(uri.equals("shipmentManage.sh")) {
			
		}else if(uri.equals("/toOrderList.sh")) {
			/*HttpSession session = request.getSession();
			System.out.println(session.getAttribute("loginSession"));
			String user_id = ((MemberDTO)session.getAttribute("loginSession")).getUser_id();*/
			String user_id = request.getParameter("user_id");
			System.out.println(user_id);
			ShipmentDAO dao = new ShipmentDAO();
		
			try {
				ArrayList<BuyDTO> buyList = dao.selectTblbuyid(user_id);
				
				request.setAttribute("buyList", buyList);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		
			request.getRequestDispatcher("member/OrderList.jsp").forward(request, response);
		}
	}
	
	
	
}
