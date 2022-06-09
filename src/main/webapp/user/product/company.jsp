<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
<title>회사 소개</title>
<style>
i {
	margin: 5px;
}

.navbar-light {
	width: 100%;
	position: fixed;
	top: 0;
	z-index: 1;
	left: 0%;
}

body {
	margin-top: 100px;
}

/*네비바 속성*/
.navbar-anchor a {
	text-decoration: none;
	color: black;
	font-weight: bold;
}

#userIcon {
	text-align: right;
	font-size: 25px;
	padding: 5px;
}

#navbar-search {
	text-align: right;
}

#searchIcon {
	color: lightgrey;
}

/*로고*/
.container-body {
	width: 100%;
	height: 600px;
}

.comimg {
	width: 100%;
	height: 900px;
}

/*컨텐츠*/
.container-content {
	width: 100%;
	margin-bottom: 100px;
}

.menubar {
	font-weight: bold;
	font-size: 60px;
	color:white;
}

.detail {
	text-align: center;
	font-weight: bold;
	font-size: 20px;
	color:white;
}

/* 네비바 드롭다운 */
.dropdown-toggle:hover {
	color: #83bf7b;
	border-color: aliceblue;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
	font-weight: bold;
}

/*풋터 영역*/
.footerBox {
	height: 200px;
}

footer.footer {
	padding-top: 4rem;
	padding-bottom: 4rem;
}

.footer a {
	text-decoration: none;
	color: black;
	font-weight: 40px;
	font-weight: bold;
}

</style>
</head>
<body>
	<div class="header">
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
	<div class="body">
		<div class="container-body">
			<div class="row">
				<div class="col d-flex">
					<img src="/resources/images/company2.jpg" class="comimg">
				</div>
			</div>
		</div>
		<div class="container-content">
			<div class="row">
				<div class="col menubar d-flex justify-content-center">ABOUT
					HYPELAND</div>
			</div>
			<div class="row">
				<div class="col d-flex justify-content-center m-4 detail">
					Youth Culture 대표 아이콘<br> 전통적으로 견고함과 실용성을 강조했던 워크웨어와 데님으로부터 얻은<br>
					모티브를 바탕으로 트랜디한 스타일을 전개하는 라이프 스타일 캐주얼 브랜드입니다.<br> 다양한 시대의
					유스컬처(Youth Culture)를 대표하는 아이콘으로 사랑받았던<br> ‘HYPELAND’는 끊임없이
					혁신하는 브랜드로 기억되고자 합니다.
				</div>
			</div>
			<div class="row">
				<div class="col-6 p-2">
					<img src="/resources/images/company.jpg" class="smallimg w-100">
				</div>
				<div class="col-6 p-2">
					<img src="/resources/images/company4.jpg"
						class="smallimg w-100 h-100">
				</div>
			</div>
		</div>
	</div>

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
</body>
</html>