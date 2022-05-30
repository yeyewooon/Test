package com.hype.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hype.dao.ProductDAO;
import com.hype.dto.ProductDTO;

@WebServlet("*.pc")
public class ProductController extends HttpServlet {

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

		String uri = request.getRequestURI();
		System.out.println(uri);
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		
		if(uri.equals("/insert.pc")) { // 상품등록
			String category = request.getParameter("category");
			String product_name = request.getParameter("product_name");
			int product_price = Integer.parseInt(request.getParameter("product_price"));
			String product_code = request.getParameter("product_code");
			String product_content = request.getParameter("product_content");
			
			System.out.println( category + " : "+ product_name + " : " + product_code + " : " + product_content);
			
			ProductDAO dao = new ProductDAO();
			try {
				int rs = dao.productInsert(new ProductDTO(0,category,product_name, product_price,product_code,product_content));
				if(rs >0) {
					System.out.println("저장성공");
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			
			
			
			
		}
	}

}
