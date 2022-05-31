<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<!-- fontAwessome-->
<script src="https://kit.fontawesome.com/241134516c.js"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="user/product/css/detailPage.css"
	rel="stylesheet" />
<title>상세페이지</title>
</head>
<body>
	<div class="container MainBox" id="header">
		<!-- 네비바 -->
		<nav class="navbar navbar-light bg-light fixed">
			<div class="container navbar-head">
				<a class="navbar-brand" href="#!" id="logo">로고</a>
				<div class="col-md-1 navbar-anchor">
					<a href="/">COMPANY</a>
				</div>

				<div class="dropdown ">
					<button class="btn dropdown-toggle" type="button"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="font-weight: bold;">CLOTHES</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="#">Top</a></li>
						<li><a class="dropdown-item" href="#">Bottom</a></li>
						<li><a class="dropdown-item" href="#">Accessory</a></li>
					</ul>
				</div>

				<div class="col-md-1 navbar-anchor">
					<a href="/">매장찾기</a>
				</div>
				<div class="col-md-1 navbar-anchor">
					<a href="/">고객센터</a>
				</div>
				<!-- 네비바 검색창 -->
				<div class="col-md-4 navbar-anchor" id="navbar-search">
					<form
						class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
						<div class="input-group">
							<button class="btn btn-link" style="border: 1px solid lightgrey;"
								id="btnSearch" type="button">
								<i id="searchIcon" class="fas fa-search"></i>
							</button>
							<input class="form-control" type="text"
								aria-describedby="btnNavbarSearch" />
						</div>
					</form>
					</button>
				</div>
				<div class="col-md-2 navbar-anchor" id="userIcon">
					<a href=""><i class="fa-solid fa-cart-plus"></i></a> <a href=""><i
						class="fa-solid fa-user"></i></a>
				</div>
			</div>
		</nav>
	</div>
	<!-- 옷 사진 및 설명 -->
	<div class="body">
		<div class="row clothesMain m-5 d-flex justify-content-center">
			<div class="col-md-8 imgBox">
				<div id="carouselExampleIndicators" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-indicators">
						
						<%-- <c:forEach items="${imageList}" var="image" varStatus="status">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="${status.index}" class="<c:if test='${ }'>" aria-current="true"
							>
						</button>
						</c:forEach> --%>
			
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1">
						</button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="1" aria-label="Slide 2"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="2" aria-label="Slide 3"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="3" aria-label="Slide 4"></button>
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="4" aria-label="Slide 5"></button> 
					</div>

					<div class="carousel-inner">
					<c:forEach items="${imageList}" var="image">
						<div class="carousel-item active">
							<img src="${image.getImage_path()}/${image.getImage_name()}" class="d-block w-100" alt="...">
						</div>
					</c:forEach>
 						<%--<div class="carousel-item">
							<img src="images/반바지2-2.png" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="images/반바지2-3.png" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="images/반바지2-4.png" class="d-block w-100" alt="...">
						</div>
						<div class="carousel-item">
							<img src="images/반바지2-5.png" class="d-block w-100" alt="...">
						</div> --%>
					</div>

					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
			<div class="col-md-4 clothesContent">
			 
				<div class="row clothesName p-3 m-2">
					<h2>${productDTO.getProductName()}</h2>
				</div>
				<div class="row clothesPrice p-3 m-2">
					<div class="col-md-4 d-flex justify-content-start">
						<h6>판매가 :</h6>
					</div>
					<div class="col-md-8 d-flex justify-content-start">
						<h6>${productDTO.getProductPrice()}원</h6>
					</div>
				</div>
			  
				<div class="row clothesDelivery p-3 m-2">
					<div class="col-md-4 d-flex justify-content-start">
						<h6>배송비 :</h6>
					</div>
					<div class="col-md-8 d-flex justify-content-start">
						<h6>무료배송</h6>
					</div>
					<div class="col-md-4 d-flex justify-content-start">
						<h6>배송유형 :</h6>
					</div>
					<div class="col-md-8 d-flex justify-content-start">
						<h6>국내배송상품</h6>
					</div>
				</div>

				<div class="row countBox p-3 m-3">
					<div class="col-md-4 d-flex justify-content-center">
						<h6>수량</h6>
					</div>
					<div class="col-md-8 d-flex">
						<button type="button" style="width: 40px;"
							class="btn btn-secondary btnCount" onclick="minus()" value="-">-</button>
						<input type="text" class="inputCount" id="inputCount" value="1">
						<button type="button" style="width: 40px;"
							class="btn btn-secondary btnCount" onclick="plus()" value="+">+</button>
					</div>
				</div>

				<div class="row orderBox p-3 m-3">
					<div class="col-md-6 d-flex justify-content-end">
						<button type="button" class="btn btn-secondary btnOrder">주문하기</button>
					</div>
					<div class="col-md-6 d-flex justify-content-start">
						<button type="button" class="btn btn-secondary btnCart">장바구니
							담기</button>
					</div>
				</div>
			</div>
		</div>

		<!-- 상품 메뉴바 -->
		<div class="row detailNav">
			<div class="col-12 d-flex justify-content-center">
				<ul class="link">
					<span class="select"> <a href="#clothesDetail">Detail
							View</a>
					</span>
					<span>&nbsp;&nbsp;/&nbsp;&nbsp;</span>
					<span class="seller_detail"> <a href="#brand">Brand info</a>
					</span>
					<span>&nbsp;&nbsp;/&nbsp;&nbsp;</span>
					<span class="clothes_review"> <a href="#review">Review</a>
					</span>
				</ul>
			</div>
		</div>

		<!-- 상품사진 -->
		<div class="row clothesDetail" id="clothesDetail">
		<c:forEach items="${imageList}" var="image">
			<div class="col-12 p-2">
				<img src="${image.getImage_path()}/${image.getImage_name()}">
			</div>
		</c:forEach>
<%--		<div class="col-12 p-2">
				<img src="images/반바지2-2.png">
			</div>
			<div class="col-12 p-2">
				<img src="images/반바지2-3.png">
			</div>
			<div class="col-12 p-2">
				<img src="images/반바지2-4.png">
			</div>
			<div class="col-12 p-2">
				<img src="images/반바지2-5.png">
			</div> --%> 
		</div>
	</div>

	<!-- 상품 정보 -->
	<div class="brand" id="brand">
		<div class="row brand_title">
			<div class="col-12">
				<p>
					<b>상품 추가정보</b>
				</p>
			</div>
		</div>
		<div class="row brand_detail">
			<div class="col-1 brand_info">
				<p>색상</p>
			</div>
			<div class="col-5 info_detail">
				<p>사진참조</p>
			</div>
			<div class="col-1 brand_info">
				<p>제조사</p>
			</div>
			<div class="col-5 info_detail">
				<p>한국</p>
			</div>
		</div>
		<div class="row brand_detail">
			<div class="col-1 brand_info">
				<p>제조국</p>
			</div>
			<div class="col-5 info_detail">
				<p>한국</p>
			</div>
			<div class="col-1 brand_info">
				<p>세탁방법</p>
			</div>
			<div class="col-5 info_detail">
				<p>드라이클리닝 추천</p>
			</div>
		</div>
		<div class="row brand_detail">
			<div class="col-1 brand_info">
				<p>수입여부</p>
			</div>
			<div class="col-5 info_detail">
				<p>N</p>
			</div>
			<div class="col-1 brand_info">
				<p>제조년월</p>
			</div>
			<div class="col-5 info_detail">
				<p>2022년 5월 이후</p>
			</div>
		</div>
	</div>

	<!-- 브랜드 설명 -->
	<div class="detail" id="detail">
		<div class="row seller">
			<div class="col">
				<p style="font-size: 30px;">판매자정보</p>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<p>
					<b>상호 / 대표자</b>
				</p>
			</div>
			<div class="col-8 seller-detail">
				<p>주식회사 HYPE / 이호준</p>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<p>
					<b>브랜드</b>
				</p>
			</div>
			<div class="col-8 seller-detail">
				<p>HYPE</p>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<p>
					<b>사업자번호</b>
				</p>
			</div>
			<div class="col-8 seller-detail">
				<p>1111111111</p>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<p>
					<b>통신판매업신고</b>
				</p>
			</div>
			<div class="col-8 seller-detail">
				<p>제2022-서울당산</p>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<p>
					<b>연락처</b>
				</p>
			</div>
			<div class="col-8 seller-detail">
				<p>02-777-7777</p>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<p>
					<b>E-mail</b>
				</p>
			</div>
			<div class="col-8 seller-detail">
				<p>HYPE@hype.co.kr</p>
			</div>
		</div>
		<div class="row">
			<div class="col-4">
				<p>
					<b>영업소재지</b>
				</p>
			</div>
			<div class="col-8 seller-detail">
				<p>서울 영등포구 선유동2로 57 이레빌딩딩</p>
			</div>
		</div>
		<div class="row">
			<div class="col-12">
				<p class="info_detail" style="font-size: 11px;">본 상품 정보의 내용은
					공정거래위원회 ‘상품정보제공고시’ 에 따라 판매자가 직접 등록한 것으로 해당 정보에 대한 책임은 판매자에게 있습니다.</p>
			</div>
		</div>
	</div>

	<!-- 리뷰 영역 -->
	<div class="review" id="review">
		<div class="row m-2">
			<div class="reviewHead col-6">
				<h5>리뷰 ?건</h5>
			</div>
			<div class="reviewHead col-6  d-flex justify-content-end">
				<h5>고객 평점</h5>
			</div>
		</div>
		<div class="row m-2">
			<div class="reviewHead col-12 d-flex justify-content-end">
				<h5>0.0/5.0</h5>
			</div>
		</div>
		<div class="row m-2">
			<div class="reviewContent col-12 d-flex justify-content-center">
				리뷰내용~~~</div>
		</div>
		<div class="row m-2">
			<div class="btnReview col-12 d-flex justify-content-end">
				<button type="button" class="btn btn-success" id="write">작성하기</button>
			</div>
		</div>
	</div>

	<!-- 맨위로 올라가기 -->
	<div class="top" style="position: fixed; bottom: 30px; right: 40px;">
		<a href="#header"><img src="" title="위로 가기"></a>
	</div>

	<!-- Footer-->
	<footer class="footer bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 h-100 text-center text-lg-start my-auto">
					<ul class="list-inline mb-2">
						<li class="list-inline-item"><a href="#!">COMPANY</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="#!">매장찾기</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="#!">고객센터</a></li>
						<li class="list-inline-item">⋅</li>
						<li class="list-inline-item"><a href="#!"
							style="color: red; font-weight: bold;">개인정보처리방침</a></li>

					</ul>
					<p class="text-muted small mb-4 mb-lg-0">하잇프랜드(주) 대표 : 이호준 |
						개인정보관리책임자 : 김영완 | 사업자등록번호 : 22-02-22</p>
					<p class="text-muted small mb-4 mb-lg-0">주소 : 서울특별시 영등포구 선유동2로
						57 이레빌딩</p>
					<p class="text-muted small mb-4 mb-lg-0">&copy; Your Website
						2022. All Rights Reserved.</p>
				</div>
				<div class="col-lg-6 h-100 text-center text-lg-end my-auto">
					<ul class="list-inline mb-0">
						<li class="list-inline-item me-4"><a href="#!"><i
								class="bi-facebook fs-3"></i></a></li>
						<li class="list-inline-item me-4"><a href="#!"><i
								class="bi-twitter fs-3"></i></a></li>
						<li class="list-inline-item"><a href="#!"><i
								class="bi-instagram fs-3"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>
	<script>
		document.getElementById("write").onclick = function() {
			let url = "/toReview.page";
			let name = "리뷰 작성페이지";
			let option = "width=1000px, height= 700px, margin=auto, left=500px,top=50px ";
			window.open(url, name, option);
		}
		
		function plus(){
			var plus = document.getElementById("inputCount").value;
			plus++;
			document.getElementById("inputCount").value=plus;
		}
		
		function minus(){
		    var minus = document.getElementById("inputCount").value;
		    if(minus > 1) {
		        document.getElementById("inputCount").value = --minus;
		    }
		}
	</script>
</body>
</html>