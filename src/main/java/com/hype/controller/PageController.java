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
			//System.out.println(category);
			ProductDAO dao = new ProductDAO();
			
			try {
				//카테고리로 seq_product받아오기
				ArrayList<Integer> seqPList = dao.selectSeqProByCtg(category);
				//이미지 받아올 ArrayList
				ArrayList<ImageDTO> imgList = new ArrayList<>();
				//seq_product로 메인 이미지 받아오기
				for(int i : seqPList) {
					imgList = dao.selectMainImgBySeqPro(seqPList.get(i));
					System.out.println(imgList);
				}
				//request imgList
				request.setAttribute("imgList", imgList);
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			response.sendRedirect("page.jsp");
		}/*else if(uri.equals("")){
			
		}*/
	}
}
