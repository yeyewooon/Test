package com.hype.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hype.dao.ImageDAO;
import com.hype.dao.ProductDAO;
import com.hype.dao.ReviewDAO;
import com.hype.dto.ImageDTO;
import com.hype.dto.MemberDTO;
import com.hype.dto.ProductDTO;
import com.hype.dto.ReviewDTO;

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
		}else if(uri.equals("/reviewWrite.page")) { // 리뷰 등록하기
			int seq_product = 110;
			String user_id = "abc123";
			String review_content = request.getParameter("review_content");
			int review_rate = Integer.parseInt(request.getParameter("review_rate"));
//			System.out.println(review_rate);
			ReviewDAO ReviewDao = new ReviewDAO();
			try {
				// MemberDTO dto = (MemberDTO)request.getSession().getAttribute("loginSession");
				
				int rs = ReviewDao.insertReview(new ReviewDTO(0, seq_product, user_id, review_content, null, review_rate));
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}else if(uri.equals("/detailPage.page")) { // 상세페이지 정보 및 사진 불러오기
			int id = Integer.parseInt(request.getParameter("id"));
			try {
				// 상품 정보 불러오기
				ProductDAO productDAO = new ProductDAO();
				ArrayList<ProductDTO> productDTO = productDAO.selectAll(id);
				request.setAttribute("productDTO", productDTO.get(0)); 
				// 상품 사진 불러오기
				ImageDAO imageDAO = new ImageDAO();
				ArrayList<ImageDTO> imageList = productDAO.selectAllImgBySeq(id);
				request.setAttribute("imageList", imageList);
				// 리뷰 정보 불러오기
				ReviewDAO ReviewDAO = new ReviewDAO();
				request.setAttribute("reviewCount", ReviewDAO.countReview(id)); // 리뷰개수
				request.setAttribute("sumReview", ReviewDAO.sumReview(id)); // 별점 더하기
				
				ArrayList<ReviewDTO> ReviewContent = ReviewDAO.selectBySeq(id); // 리뷰 정보 가져오기
				if(ReviewContent.size() == 0) {
					request.setAttribute("reviewSize", 0); 	
				} else {
					request.setAttribute("ReviewContent", ReviewContent);					
				}
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			//response.sendRedirect("user/product/detailPage.jsp");
			request.getRequestDispatcher("user/product/detailPage.jsp").forward(request, response);
		}

		}

	}

