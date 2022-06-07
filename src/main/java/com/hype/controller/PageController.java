package com.hype.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hype.dao.ProductDAO;
import com.hype.dao.ReviewDAO;
import com.hype.dto.CartDTO;
import com.hype.dto.ImageDTO;
import com.hype.dto.ProductDTO;
import com.hype.dto.RankingDTO;
import com.hype.dto.ReviewDTO;

@WebServlet("*.page")
public class PageController extends HttpServlet {
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
		System.out.println("요청 uri : " + uri);
		request.setCharacterEncoding("utf-8");

		// 옷 나열 페이지로 이동 김예원
		if (uri.equals("/ToPage.page")) {
			String category = request.getParameter("category");
			request.setAttribute("category", category);
			ProductDAO dao = new ProductDAO();

			try {
				request.setAttribute("category", category);
				/* 캐러셀 */
				ArrayList<RankingDTO> rankList = dao.ranking();

				String product_name = null;
				ArrayList<ImageDTO> rimgList = new ArrayList<>();
				ArrayList<ProductDTO> pList = new ArrayList<>();

				for (RankingDTO dto : rankList) {
					product_name = dto.getProduct_name();
					rimgList.addAll(dao.getTblImgbyProName(product_name));
					pList.addAll(dao.selectAllbyName(product_name));
				}
				request.setAttribute("rimgList", rimgList);
				request.setAttribute("pList", pList);

				/* 3열 사진 */
				int cnt = dao.countPro(category);
				// request cnt
				request.setAttribute("cnt", cnt);

				// category로 tbl_image 얻어오기
				ArrayList<ImageDTO> imgList = dao.getTblImgbyCtg(category);
				System.out.println(imgList.toString());

				// category로 tbl_product 받아오기
				ArrayList<ProductDTO> proList = dao.selectTblProbyCtg(category);
				System.out.println(proList.toString());

				// request proList
				request.setAttribute("proList", proList);
				// request imgList
				request.setAttribute("imgList", imgList);
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.getRequestDispatcher("user/product/page.jsp").forward(request, response);
		}

		// 김형석
		else if (uri.equals("/toReview.page")) { // 리뷰팝업 띄우기
			int seq_product = Integer.parseInt(request.getParameter("seq_product"));
			request.setAttribute("seq_product", seq_product);
			response.sendRedirect("user/board/review.jsp");

		} else if (uri.equals("/reviewWrite.page")) { // 리뷰 등록하기
			String user_id = "abc123";
			int seq_product = Integer.parseInt(request.getParameter("seq_product"));
			String review_content = request.getParameter("review_content");
			int review_rate = Integer.parseInt(request.getParameter("review_rate"));
//	         System.out.println(review_rate);
			ReviewDAO ReviewDao = new ReviewDAO();
			try {
				int rs = ReviewDao
						.insertReview(new ReviewDTO(0, seq_product, user_id, review_content, null, review_rate));
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (uri.equals("/detailPage.page")) { // 상세페이지 정보 및 사진 불러오기
			int seq_product = Integer.parseInt(request.getParameter("seq_product"));
			/* int curPage = Integer.parseInt(request.getParameter("curPage")); */
			try {
				// 상품 정보 불러오기
				ProductDAO productDAO = new ProductDAO();
				ArrayList<ProductDTO> productDTO = productDAO.selectAll(seq_product);
				request.setAttribute("productDTO", productDTO.get(0));
				// 상품 사진 불러오기
				ArrayList<ImageDTO> imageList = productDAO.selectAllImgBySeq(seq_product);
				request.setAttribute("imageList", imageList);
				// 리뷰 정보 불러오기
				ReviewDAO ReviewDAO = new ReviewDAO();
				request.setAttribute("reviewCount", ReviewDAO.countReview(seq_product)); // 리뷰개수
				request.setAttribute("sumReview", ReviewDAO.sumReview(seq_product)); // 별점 더하기

				ArrayList<ReviewDTO> ReviewContent = ReviewDAO.selectBySeq(seq_product); // 리뷰 정보 가져오기
				if (ReviewContent.size() == 0) {
					request.setAttribute("reviewSize", 0);
				} else {
					request.setAttribute("ReviewContent", ReviewContent);
				}

				request.setAttribute("seq_product", seq_product);
			} catch (Exception e) {
				e.printStackTrace();
			}

			request.getRequestDispatcher("user/product/detailPage.jsp").forward(request, response);
		} else if (uri.equals("/addToCart.page")) {
			// 장바구니 담기
			String user_id = "aaa";
			int seq_product = Integer.parseInt(request.getParameter("seq_product"));
			int cart_quantity = Integer.parseInt(request.getParameter("cart_quantity"));
			ProductDAO productDAO = new ProductDAO();
			try {
				ProductDTO product = productDAO.selectAll(seq_product).get(0);
				int rs = productDAO.insertCart(new CartDTO(0, seq_product, user_id, product.getProduct_name(),
						cart_quantity, product.getProduct_price()));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
