package com.hype.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.hype.dao.ShipmentDAO;
import com.hype.dto.OrderDTO;


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
		
	
		if(uri.equals("/shipManage.sh")) {
			System.out.println("shipManage.sh 성공");
			ShipmentDAO dao = new ShipmentDAO();

			int curPage = Integer.parseInt(request.getParameter("curPage"));
			System.out.println(curPage);
			
			try {
				HashMap map = dao.getPageNavi(curPage);
				System.out.println("현재 페이지 : " + curPage);
				System.out.println("startNavi : " + map.get("startNavi"));
				System.out.println("endNavi : " + map.get("endNavi"));
				System.out.println("needPrev 요? " + map.get("needPrev"));
				System.out.println("needNext 필요? " + map.get("needNext"));
				
				ArrayList<OrderDTO> list = dao.selectAll(curPage*10-9, curPage*10);
				request.setAttribute("list", list);
				request.setAttribute("naviMap", map);
				request.getRequestDispatcher("/admin/delivery/shipmentManage.jsp").forward(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}else if(uri.equals("/shipModify.sh")) {
			
			int seq_order = Integer.parseInt(request.getParameter("seq_order"));
			ShipmentDAO dao = new ShipmentDAO();
			try {
				ArrayList<OrderDTO> list = dao.selectAllBySeq(seq_order);
				request.setAttribute("list", list);
				request.getRequestDispatcher("/admin/delivery/shipmentModify.jsp").forward(request, response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}else if(uri.equals("/shipmentModifyProc.sh")) {
			int seq_order = Integer.parseInt(request.getParameter("seq_order"));
			String order_name = request.getParameter("order_name");
			String phone1= request.getParameter("phone1");
			String phone2= request.getParameter("phone2");
			String phone3= request.getParameter("phone3");
			String order_phone = phone1+phone2+phone3;
			String order_postCode = request.getParameter("postCode");
			String roadAddr = request.getParameter("roadAddr");
			String jibunAddr = request.getParameter("jibunAddr");
			String detailAddr = request.getParameter("detailAddr");
			String order_address = roadAddr + " " + jibunAddr + " " + detailAddr;
			String order_status = request.getParameter("order_status");

			ShipmentDAO dao = new ShipmentDAO();
			try {
				int rs = dao.modify(new OrderDTO(seq_order, null, order_name,order_phone,order_postCode,order_address,null,order_status));
				if(rs > 0) {
					response.sendRedirect("/shipManage.sh"); // 배송 정보 페이지로 이동
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}else if(uri.equals("/searchProc.sh")) {
			String searchKeyword = request.getParameter("searchKeyword");
			System.out.println("keyword : " + searchKeyword);
			
			ShipmentDAO dao = new ShipmentDAO();
			try {
				ArrayList<OrderDTO> list = dao.searchByTitle(searchKeyword);
				Gson gson = new Gson();
				String rs = gson.toJson(list);
				System.out.println(rs);
				response.setCharacterEncoding("utf-8");
				response.getWriter().append(rs);	
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}
	
	
	
}
