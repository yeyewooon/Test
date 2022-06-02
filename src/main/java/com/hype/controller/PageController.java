package com.hype.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hype.dao.ProductDAO;
import com.hype.dto.ImageDTO;
import com.hype.dto.ProductDTO;

@WebServlet("*.page")
public class PageController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri = request.getRequestURI();
		System.out.println("요청 uri : " + uri);
		request.setCharacterEncoding("utf-8");
		
		//옷 나열 페이지로 이동
		if(uri.equals("/ToPage.page")){ 
			String category = request.getParameter("category");
			request.setAttribute("category", category);
			ProductDAO dao = new ProductDAO();
			
			try {
				int cnt = dao.countPro(category);
				//request cnt
				request.setAttribute("cnt",cnt);
				
				//category로 tbl_image 얻어오기
				ArrayList<ImageDTO> imgList = dao.getTblImgbyCtg(category);
				System.out.println(imgList.toString());
				
				//category로 tbl_product 받아오기
				ArrayList<ProductDTO> proList = dao.selectTblProbyCtg(category);
				System.out.println(proList.toString());
				
				//request proList
				request.setAttribute("proList", proList);
				//request imgList
				request.setAttribute("imgList", imgList);
			}catch(Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("user/product/page.jsp").forward(request, response);
		}/*else if(uri.equals("")){
			
		}*/
	}
}
