<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>상품 수정 및 삭제</title>
<script
      src="https://kit.fontawesome.com/f9358a6ceb.js"
      crossorigin="anonymous"
    ></script>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://code.jquery.com/jquery-3.6.0.js"
      integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
      crossorigin="anonymous"
    ></script>
<link href="<%=request.getContextPath()%>css/productModify.css" rel="stylesheet"/>
</head>
<body>
	<div class="adminContainer">
		<div class="row adminNavbar d-flex align-items-center">
			<div
				class="col-md-2 adminNavbar-left d-flex justify-content-center align-items-lg-center">
				<i class="fa-brands fa-yahoo"></i> <span adminNavbar-left-text>LAND</span>
			</div>
			<div class="col-md-10 adminNavbar-right d-flex justify-content-end">
				<div class="adminIcon">
					<span class="adminIconSpan">Admin</span> <i
						class="fa-solid fa-user-check"></i> <span class="adminIconLogout">로그아웃</span>
				</div>
			</div>
		</div>
		<div class="row adminSidebar adminContent d-flex">
			<div class="col-md-2 adminSidebarContainer">
				<div class="nav-linksContainer nav-linksContainer1">
					<div class="icon-link row d-flex align-items-center">
						<div class="icon-link-left col-md-3 d-flex justify-content-end">
							<i class="fa-solid fa-cart-shopping cart"></i>
						</div>
						<div class="icon-link-center col-md-6">
							<span class="link_name cartManagement">상품 관리</span>
						</div>
						<div class="icon-link-right col-md-3">
							<i class="fa-solid fa-caret-down arrow arrow1"></i>
						</div>
					</div>
					<ul class="sub-menu sub-menu-first">
						<li><a href="https://www.naver.com">상품 등록</a></li>
						<li><a href="#">상품 수정</a></li>
					</ul>
				</div>
				<div class="nav-linksContainer nav-linksContainer2">
					<div class="icon-link row d-flex align-items-center">
						<div class="icon-link-left col-md-3 d-flex justify-content-end">
							<i class="fa-solid fa-user-group"></i>
						</div>
						<div class="icon-link-center col-md-6">
							<span class="link_name cartManagement">회원 관리</span>
						</div>
						<div class="icon-link-right col-md-3">
							<i class="fa-solid fa-caret-down arrow arrow2"></i>
						</div>
					</div>
					<ul class="sub-menu sub-menu-second">
						<li><a href="https://www.naver.com">회원 수정 및 삭제</a></li>
					</ul>
				</div>
				<div class="nav-linksContainer nav-linksContainer3">
					<div class="icon-link row d-flex align-items-center">
						<div class="icon-link-left col-md-3 d-flex justify-content-end">
							<i class="fa-solid fa-truck"></i>
						</div>
						<div class="icon-link-center col-md-6">
							<span class="link_name cartManagement">배송 관리</span>
						</div>
						<div class="icon-link-right col-md-3">
							<i class="fa-solid fa-caret-down arrow arrow3"></i>
						</div>
					</div>
					<ul class="sub-menu sub-menu-third">
						<li><a href="https://www.naver.com">배송 정보 변경</a></li>
					</ul>
				</div>
				<div class="nav-linksContainer nav-linksContainer4">
					<div class="icon-link row d-flex align-items-center">
						<div class="icon-link-left col-md-3 d-flex justify-content-end">
							<i class="fa-solid fa-clipboard-list"></i>
						</div>
						<div class="icon-link-center col-md-6">
							<span class="link_name cartManagement">게시판 관리</span>
						</div>
						<div class="icon-link-right col-md-3">
							<i class="fa-solid fa-caret-down arrow arrow4"></i>
						</div>
					</div>
					<ul class="sub-menu sub-menu-fourth">
						<li><a href="#">문의 관리</a></li>
						<li><a href="#">리뷰 관리</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 adminMainContainer">
				<div class="table firstTable">
					<h3 class="text-center mt-3 firstTableTitle">상품 수정 및 삭제</h3>
					<div class="input-group rounded w-25 searchMemberInput mt-2 mb-3">
						<input type="search" class="form-control rounded"
							placeholder="Search" aria-label="Search"
							aria-describedby="search-addon" /> <span
							class="input-group-text border-0" id="search-addon"> <i
							class="fas fa-search"></i>
						</span>
					</div>
					<div class="selectAll ms-4" style="border-top-width: 0px">
						<i class="fa-solid fa-folder-open"></i> <span class="ms-2">전체조회</span>
					</div>
					<div class="MemberContainer" style="border-top-width: 0px">
						<table class="table table-striped memberTable text-center mt-3"
							id="tableBox">
							<thead>
								<tr>
									<th scope="col">상품 카테고리</th>
									<th scope="col">상품 코드</th>
									<th scope="col">상품 이름</th>
									<th scope="col">상품 가격</th>
									<th scope="col">삭제</th>
									<th scope="col">수정</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td id="category">후드티</td>
									<td>B0209128FF12</td>
									<td>베이직 빅로고 후드티 뉴욕양키스</td>
									<td>9,900</td>
									<td id="icon"><span class="text-center memberDelete"><i
											class="fa-solid fa-trash"></i></span></td>
									<td id="icon"><span class="memberModify"><i
											class="fa-solid fa-pencil"></i></span></td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="modal">
						<div class="modal_content">
							<div class="row">
								<div class="col d-flex justify-content-center">
									<h4>상품수정</h4>
								</div>
							</div>
							<div class="row">
								<div class="col-4 d-flex justify-content-start">
									<h5>상품 카테고리</h5>
								</div>
								<div class="col-8 d-flex justify-content-start">
									<select class="form-select" aria-label="Default select example">
										<option selected>카테고리 설정</option>
										<option value="1">맨투맨</option>
										<option value="2">후드티</option>
										<option value="3">셔츠</option>
									</select>
								</div>
							</div>
							<div class="row content-body">
								<div class="col-md-4 d-flex justify-content-start">
									<h5>상품 이름</h5>
								</div>
								<div class="col-md-8 d-flex justify-content-start">
									<input type="text" id="product_name" name=""
										class="form-control" />
								</div>
							</div>
							<div class="row content-body">
								<div class="col-md-4 d-flex justify-content-start">
									<h5>상품 가격</h5>
								</div>
								<div class="col-md-7 d-flex justify-content-start">
									<input type="text" id="product_price" name=""
										onkeyup="inputNumberFormat(this) " class="form-control" />
								</div>
								<div class="col-md-1 d-flex justify-content-end price_text">
									<h4>원</h4>
								</div>
							</div>
							<div class="row content-body">
								<div class="col-md-4 d-flex justify-content-start">
									<h5>상품 코드</h5>
								</div>
								<div class="col-md-8 d-flex justify-content-start">
									<input type="text" id="product_code" name=""
										class="form-control" />
								</div>
							</div>
							<div class="row content-body">
								<div class="col-md-4 d-flex justify-content-start">
									<h5>상품 사이즈</h5>
								</div>
								<div class="col-md-8 d-flex justify-content-start">
									<input type="text" id="product_size" name=""
										class="form-control" value="FREE" readonly />
								</div>
							</div>
							<div class="row content-body">
								<div class="col-md-4 d-flex justify-content-start">
									<h5>상품 설명</h5>
								</div>
								<div class="col-md-8 d-flex justify-content-start">
									<textarea type="text" id="product_explain" name=""
										class="form-control"></textarea>
								</div>
							</div>
							<div class="row content-body">
								<div class="col-md-4 d-flex justify-content-start mb-5 mt-4">
									<h5>이미지</h5>
								</div>
								<div class="col-md-8 d-flex justify-content-start">
									<input class="form-control" type="file" name="" id="" multiple />
								</div>
							</div>
							<div class="row content-body">
								<div class="col-md-12 d-flex justify-content-center">
									<button type="button" id="cancelBtn"
										class="btn btn-secondary btn-lg m-2">
										취소</button>
									<button type="button" id="submitBtn"
										class="btn btn-primary btn-lg m-2">
										등록</button>
								</div>
							</div>
						</div>
					</div>
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>script/productModify.js"></script>
</body>
</html>