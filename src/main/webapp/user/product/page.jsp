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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
    <!-- Google fonts-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;800&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
     integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <!-- fontAwessome-->
    <script src="https://kit.fontawesome.com/241134516c.js" crossorigin="anonymous"></script>
    <link href="<%=request.getContextPath()%>css/page.css" rel="stylesheet"/>
    <title>Document</title>

</head>
<body>
    <div class="container-fluid">
        <nav class="navbar navbar-light bg-light fixed">
            <div class="container navbar-head">
                <a class="navbar-brand" href="#!" id="logo">로고</a>
                <div class="col-md-1 navbar-anchor"><a href="/">COMPANY</a></div>
                
                <div class="dropdown ">
                    <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: bold;">
                      CLOTHES
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                      <li><a class="dropdown-item" href="#">Top</a></li>
                      <li><a class="dropdown-item" href="#">Bottom</a></li>
                      <li><a class="dropdown-item" href="#">Accessory</a></li>
                    </ul>
                </div>

                <div class="col-md-1 navbar-anchor"><a href="/">매장찾기</a></div>
                <div class="col-md-1 navbar-anchor"><a href="/">고객센터</a></div>
                <!-- 네비바 검색창 -->
                <div class="col-md-4 navbar-anchor" id="navbar-search">
                    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                        <div class="input-group">
                            <button class="btn btn-link" style="border: 1px solid lightgrey;" id="btnSearch" type="button"><i id="searchIcon" class="fas fa-search"></i></button>
                            <input class="form-control" type="text" aria-describedby="btnNavbarSearch" />
                         </div>
                    </form>
                </div>
                <div class="col-md-2 navbar-anchor" id="userIcon">
                    <a href=""><i class="fa-solid fa-cart-plus"></i></a>
                    <a href=""><i class="fa-solid fa-user"></i></a>
                </div>
            </div>
        </nav>
    </div>

    <!-- 헤더 사진 -->
    <div class="header_img" id = "header">
        <div class="row m-5">
            <div class="col-12 d-flex w-100">
                header-image
            </div>
        </div>
    </div>

    <!-- 상품 캐러셀 -->
    <div class="content1">
        <div class="row">
            <div class="col productName">
                <p>랭킹</p>
            </div>
        </div>
    
    <div class="row">
        <div class="col-12 imageBox  d-flex justify-content-center">
            <div id="carouselTop" class="carousel carousel-dark slide data-bs-pause" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="row">
                        <div class="col-lg-3">
                            <a href="">
                                <div class="card"><!--카드1-->
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="images/바지1-5.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="">
                                <div class="card"><!--카드2-->
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="resources/mztiger1.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="">
                                <div class="card"><!--카드3-->
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="images/mztiger1.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3 ">
                            <a href="">
                                <div class="card"><!--카드4-->
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="images/mztiger1.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="row">
                        <div class="col-lg-3">
                            <a href="">
                                <div class="card">
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="images/바지1-5.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="">
                                <div class="card">
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="images/mztiger1.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="">
                                <div class="card">
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="images/mztiger1.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="">
                                <div class="card">
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="images/mztiger1.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                  </div>
                  <div class="carousel-item">
                    <div class="row">
                        <div class="col-lg-3">
                            <a href="">
                                <div class="card">
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="images/바지1-5.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text d-flex justify-content-center">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="">
                                <div class="card">
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="images/mztiger1.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="">
                                <div class="card">
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="images/mztiger1.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-lg-3">
                            <a href="">
                                <div class="card">
                                    <div class="row">
                                        <div class="col">
                                            <div class="cardimg">
                                                <img src="images/mztiger1.PNG" class="cardimg">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row card-text">
                                        <div class="col-12 productName">
                                            <span>tiger t-shirt(white)</span><br>
                                            <span>30000</span>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                  </div>
                </div>
                <button class="carousel-c-prev btnImg" type="button" data-bs-target="#carouselTop" data-bs-slide="prev">
                    <img src="resources/caret-left.png">
                </button>
                <button class="carousel-c-next btnImg" type="button" data-bs-target="#carouselTop" data-bs-slide="next">
                    <img src="resources/caret-right.png">   
                </button>
            </div>
        </div>
    </div>

    <!--3열 옷사진-->
    <div class = "row clothes">
        <div class="col">
            <div class="content2">
                <div class="row title">
                    <div class="col p-4 d-flex justify-content-center">
                        <p>하의</p>
                    </div>
                </div>
                <div class="imgContainer">
                    <div class="row">
                        <div class="col-md-4 d-block justify-content-center p-4">
                            <a href="">
                                <div class="imgBox">
                                    <img src="images/바지3-3.jpg" id="Cimg">
                                    <div class="imgText">
                                        <strong>청바지</strong><br>
                                        50000원
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-4 d-block justify-content-center p-4">
                            <a href="">
                                <div class="imgBox">
                                    <img src="images/바지3-3.jpg" id="Cimg">
                                    <div class="imgText">
                                        <strong>청바지</strong><br>
                                        50000원
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-4 d-block justify-content-center p-4">
                            <a href="">
                                <div class="imgBox">
                                    <img src="images/바지3-3.jpg" id="Cimg">
                                    <div class="imgText">
                                        <strong>청바지</strong><br>
                                        50000원
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="imgContainer">
                <div class="row">
                    <div class="col-md-4 d-block justify-content-center p-4">
                        <a href="">
                            <div class="imgBox">
                                <img src="images/바지3-3.jpg" id="Cimg">
                                <div class="imgText">
                                    <strong>청바지</strong><br>
                                    50000원
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 d-block justify-content-center p-4">
                        <a href="">
                            <div class="imgBox">
                                <img src="images/바지3-3.jpg" id="Cimg">
                                <div class="imgText">
                                    <strong>청바지</strong><br>
                                    50000원
                                </div>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-4 d-block justify-content-center p-4">
                        <a href="">
                            <div class="imgBox">
                                <img src="images/바지3-3.jpg" id="Cimg">
                                <div class="imgText">
                                    <strong>청바지</strong><br>
                                    50000원
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>

       <!-- 맨위로 올라가기 -->
        <div class = "top" style="position: fixed; bottom: 30px; right: 40px;">
            <a href = "#header"><img src = "" title="위로 가기"></a>
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
    </div>
</div>
</body>
</html>