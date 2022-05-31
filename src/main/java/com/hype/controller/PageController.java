package com.hype.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hype.dao.ImageDAO;
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
		System.out.println("=============");
		System.out.println("요청 uri : " + uri);
		System.out.println("=============");
		request.setCharacterEncoding("utf-8");
		
		//옷 나열 페이지로 이동
		if(uri.equals("/ToPage.page")){ 
			response.sendRedirect("page.jsp");
		}else if(uri.equals("/toReview.page")) { // 리뷰팝업 띄우기
			response.sendRedirect("user/board/review.jsp");
		}else if(uri.equals("/detailPage.page")) {
			int id = Integer.parseInt(request.getParameter("id"));
			try {
				ProductDAO productDAO = new ProductDAO();
				ImageDAO imageDAO = new ImageDAO();
				ArrayList<ProductDTO> productDTO = productDAO.selectAll(id);
				ArrayList<ImageDTO> imageList = productDAO.selectAllImgBySeq(id);
				
				request.setAttribute("productDTO", productDTO.get(0));
				request.setAttribute("imageList", imageList);
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			//response.sendRedirect("user/product/detailPage.jsp");
			request.getRequestDispatcher("user/product/detailPage.jsp").forward(request, response);
		}
	}
}
