<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <!-- Favicon-->
            <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
            <!-- Bootstrap icons-->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"
                type="text/css" />
            <!-- Google fonts-->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;800&display=swap"
                rel="stylesheet">
            <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
                rel="stylesheet" type="text/css" />
            <!-- Core theme CSS (includes Bootstrap)-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
                crossorigin="anonymous"></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
                crossorigin="anonymous">
            <!-- fontAwessome-->
            <script src="https://kit.fontawesome.com/241134516c.js" crossorigin="anonymous"></script>
            <title>문의내역</title>
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
                    padding-top: 100px;
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

                .table th,
                td {
                    text-align: center;
                    vertical-align: middle;
                    font-size: 0.8rem;
                }

                #searchType {
                    font-size: 0.8rem;
                    width: 4rem;
                    height: 2rem;
                }

                #search {
                    height: 2rem;
                    width: 3rem;
                    font-size: 0.8rem;
                    background-color: white;
                    border: 1px solid lightgray;
                }

                .page_wrap {
                    text-align: center;
                    font-size: 0;
                }

                .page_nation {
                    display: inline-block;
                }

                .page_nation .none {
                    display: none;
                }

                .page_nation a {
                    display: block;
                    margin: 0 3px;
                    float: left;
                    border: 1px solid #e6e6e6;
                    width: 28px;
                    height: 28px;
                    line-height: 28px;
                    text-align: center;
                    background-color: #fff;
                    font-size: 13px;
                    color: #999999;
                    text-decoration: none;
                }

                .page_nation .arrow {
                    border: 1px solid #ccc;
                }

                .page_nation .pprev {
                    background: #f8f8f8 url('img/page_pprev.png') no-repeat center center;
                    margin-left: 0;
                }

                .page_nation .prev {
                    background: #f8f8f8 url('img/page_prev.png') no-repeat center center;
                    margin-right: 7px;
                }

                .page_nation .next {
                    background: #f8f8f8 url('img/page_next.png') no-repeat center center;
                    margin-left: 7px;
                }

                .page_nation .nnext {
                    background: #f8f8f8 url('img/page_nnext.png') no-repeat center center;
                    margin-right: 0;
                }

                .page_nation a.active {
                    background-color: #42454c;
                    color: #fff;
                    border: 1px solid #42454c;
                }
                .qna_title{
                    color: black;
                    text-decoration: none;
                }
                .qna_title:hover{
                    opacity: 0.8;
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
            <div class="container MainBox" id="header">
                <!-- 네비바 -->
                <nav class="navbar navbar-light bg-light fixed">
                    <div class="container navbar-head">
                        <a class="navbar-brand" href="#!" id="logo">로고</a>
                        <div class="col-md-1 navbar-anchor"><a href="/">COMPANY</a></div>

                        <div class="dropdown ">
                            <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown"
                                aria-expanded="false" style="font-weight: bold;">
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
                                    <button class="btn btn-link" style="border: 1px solid lightgrey;" id="btnSearch"
                                        type="button"><i id="searchIcon" class="fas fa-search"></i></button>
                                    <input class="form-control" type="text" aria-describedby="btnNavbarSearch" />
                                </div>
                            </form>
                            </button>
                        </div>
                        <div class="col-md-2 navbar-anchor" id="userIcon">
                            <a href=""><i class="fa-solid fa-cart-plus"></i></a>
                            <a href=""><i class="fa-solid fa-user"></i></a>
                        </div>
                    </div>
                </nav>
            </div>

            <div class="container">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col" class="col-1">번호</th>
                            <th scope="col" class="col-1">문의유형</th>
                            <th scope="col" class="col-4">제목</th>
                            <th scope="col" class="col-1">작성자</th>
                            <th scope="col" class="col-1">작성일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:choose>
                            <c:when test="${list.size() == 0}">
                                <tr>
                                    <td colspan=5>등록된 문의글이 없습니다.</td>
                                </tr>
                            </c:when>
                            <c:otherwise>
                                <c:forEach items="${list}" var="dto">
                                    <tr>
                                        <th scope="row">${dto.seq_qna}</th>
                                        <td>${dto.qna_type}</td>
                                        <td><a href="#" class="qna_title">${dto.qna_title}</a></td>
                                        <td>${dto.user_id}</td>
                                        <td>${dto.qna_date}</td>
                                    </tr>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </tbody>
                </table>

                <div class="row mt-5 mb-5" style="text-align: center;">
                    <div class="col">
                        <input type="text">
                        <select name="searchType" id="searchType">
                            <option value=''>제목</option>
                            <option value='10'>내용</option>
                        </select>
                        <button type="button" id="search">검색</button>
                    </div>
                </div>

                <div class="page_wrap mb-5">
                    <div class="page_nation">
                        <c:if test="${naviMap.needPrev eq true}">
                            <a class="arrow prev" href="/toQnaBoard.mem?curPage=${naviMap.startNavi-1}">
                                < </a>
                        </c:if>
                        <c:forEach var="pageNum" begin="${naviMap.startNavi}" end="${naviMap.endNavi}" step="1">
                            <a href="/toQnaBoard.mem?curPage=${pageNum}" value="${pageNum}" class="paging">${pageNum}</a>
                        </c:forEach>

                        <c:if test="${naviMap.needNext eq true}">
                            <a class="arrow next" href="/toQnaBoard.mem?curPage=${naviMap.endNavi+1}">></a>
                        </c:if>

                    </div>
                </div>

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
                            <p class="text-muted small mb-4 mb-lg-0">하잇프랜드(주) 대표 : 이호준 | 개인정보관리책임자 : 김영완 | 사업자등록번호 :
                                22-02-22</p>
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

        <script>
            const active = document.getElementsByClassName('paging');
            
            for(let i = 0; i<active.length; i++){
                if(active[i].innerText == '${curPage}'){
                    active[i].setAttribute("class", "active");
                }
            }

        </script>

        </html>