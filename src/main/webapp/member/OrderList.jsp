<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/member/css/orderList.css">
<title>구매내역</title>
<style>

</style>
</head>
<body>
	<div class="container MainBox" id="header">
		<!-- 네비바 -->
		<nav class="navbar navbar-light bg-light fixed">
			<div class="container">
				<a class="navbar-brand" href="/Tohome" id="logo">로고</a>
				<div class="col-md-1  navbar-anchor">
					<a href="/">COMPANY</a>
				</div>
				<div class="dropdown ">
					<button class="btn dropdown-toggle" type="button"
						data-bs-toggle="dropdown" aria-expanded="false"
						style="font-weight: bold;">CLOTHES</button>
					<ul class="dropdown-menu nav-category"
						aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="#">Top</a></li>
						<li><a class="dropdown-item" href="#">Bottom</a></li>
						<li><a class="dropdown-item" href="#">Accessory</a></li>
					</ul>
				</div>
				<div class="col-md-1 navbar-anchor">
					<a href="/">매장찾기</a>
				</div>
				<div class="col-md-1 navbar-anchor">
					<a href="/toCs.mem">고객센터</a>
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
				</div>
				<div class="col-md-2 navbar-anchor" id="userIcon">
					<a href=""><i class="fa-solid fa-cart-plus"></i></a> <a href=""><i
						class="fa-solid fa-user"></i></a>
				</div>
			</div>
		</nav>
	</div>
	
	<div class="container" style="border: 1px solid lightgray;">
		<div class="row">
			<div class="col header-comment">
				<h2>OrderList</h2>
			</div>
		</div>
		<div class="row">
			<div class="col mt-5 ms-2">
				<h3>나의 주문내역</h3>
			</div>
		</div>
		<table class="table productInfo mt-5">
			<thead>
				<tr>
					<th scope="col" colspan="2">주문번호</th>
					<th scope="col" colspan="2">상품명</th>
					<th scope="col">수량</th>
					<th scope="col" colspan=2>주문금액</th>
					<th scope="col" colspan="2">결제일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${buyList.size() == 0 }">
						<tr>
							<td colspan="9">주문 내역이 없습니다.</td>
						</tr>
					</c:when>
					<c:otherwise>
						
						
						<tr>
							<c:forEach items="${buyList }" var="buyList" varStatus="status">
								<tr>
									<td colspan="2" >${buyList.seq_order}</td>
									<td colspan="2">${buyList.buy_name }</td>
									<td>${buyList.buy_qty }</td>
									<td colspan="2">${buyList.buy_price*buyList.buy_qty}</td>
									<td colspan="2">${buyList.buy_create }</td>
								</tr>
								
							</c:forEach>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
		<div class="row">
			<div class="col-12 d-flex justify-content-center m-4">
				<button type="button" class="btn btn-secondary w-50" id="btnBack">뒤로가기</button>
			</div>
		</div>
		<script>
			document.getElementById("btnBack").onclick=function(){
				location.href="/";
			}
		</script>
	
	
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
                    <li class="list-inline-item"><a href="/toCs.mem">고객센터</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="#!" style="color: red; font-weight: bold;">개인정보처리방침</a></li>
                    
                </ul>
                <p class="text-muted small mb-4 mb-lg-0">하잇프랜드(주) 대표 : 이호준 | 개인정보관리책임자 : 김영완 | 사업자등록번호 : 22-02-22</p>
                <p class="text-muted small mb-4 mb-lg-0">주소 : 서울특별시 영등포구 선유동2로 57 이레빌딩</p>
                <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2022. All Rights Reserved.</p>
            </div>
            <div class="col-lg-6 h-100 text-center text-lg-end my-auto">
                <ul class="list-inline mb-0">
                    <li class="list-inline-item me-4">
                        <a href="#!"><i class="bi-facebook fs-3"></i></a>
                    </li>
                    <li class="list-inline-item me-4">
                        <a href="#!"><i class="bi-twitter fs-3"></i></a>
                    </li>
                    <li class="list-inline-item">
                        <a href="#!"><i class="bi-instagram fs-3"></i></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</footer>
</body>
</html>