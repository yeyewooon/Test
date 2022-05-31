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
            <script src="https://code.jquery.com/jquery-3.6.0.js"
                integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
            <link rel="stylesheet" href="<%=request.getContextPath()%>/member/css/cart.css">
            <title>장바구니</title>

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

            <div class="container" style="border: 1px solid lightgray;">
                <div class="row">
                    <div class="col header-comment">
                        <h2>Order / Payment</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col mt-5 ms-2">
                        <h3>장바구니</h3>
                    </div>
                </div>

                <form action="/toPay.mem" id="signupForm" method="post">
                    <table class="table productInfo mt-5">
                        <thead>
                            <tr>
                                <th scope="col" style="width: 4.5rem;">전체 ${list.size()}개</th>
                                <th scope="col"><input type="checkbox" id="checkAll"></th>
                                <th scope="col" colspan="2">상품명(옵션)</th>
                                <th scope="col">판매가</th>
                                <th scope="col">수량</th>
                                <th scope="col">주문금액</th>
                                <th scope="col">주문관리</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:choose>
                                <c:when test="${list.size() == 0}">
                                    <tr>
                                        <td colspan="8">장바구니에 담긴 물건이 없습니다.</td>
                                    </tr>
                                </c:when>
                                <c:otherwise>
                                    <c:forEach items="${list}" var="dto" varStatus="status">
                                        <tr>
                                            <th scope="row">${status.count}</th>
                                            <td><input type="checkbox" name="seq_cart" class="check"
                                                    value="${dto.seq_cart}"></td>
                                            <td class="col-1"><a href=""><img class="productImg" src="" alt=""></a></td>
                                            <td class="detailItem">
                                                <div class="row">
                                                    <div class="col-12">
                                                        <p class="P-Name">${dto.cart_name}</p>
                                                    </div>
                                                    <div class="col">
                                                        <input type="text" class="P-Option disabled"
                                                            value="옵션 : SIZE / FREE">
                                                    </div>
                                                </div>
                                            </td>

                                            <td class="cart_price">&#8361;${dto.cart_price}</td>
                                            <td>
                                                <button class="minusBtn qty-update-btn" type="button"
                                                    data-type="minus">-</button>
                                                <input type="number" class="quantity" value="${dto.cart_quantity}">
                                                <button class="plusBtn qty-update-btn" type="button"
                                                    data-type="plus">+</button>
                                            </td>
                                            <td class="cart_total">&#8361;${dto.cart_total}</td>
                                            <td><button class="item-delete" type="button"
                                                    value="${dto.seq_cart}">삭제</button></td>
                                        </tr>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </tbody>
                    </table>
                </form>
                <div class="row">
                    <div class="col">
                        <button class="selectDelete me-1" type="button">전체삭제</button>
                        <button class="selectDelete" type="button">선택삭제</button>
                    </div>
                </div>
                <div class="row mt-5">
                    <div class="col">
                        <ul class="guideline">
                            <li>하이프랜드는 전 상품 무료 배송입니다.</li>
                            <li>장바구니 상품은 최대 1년 보관(비회원 2일)되며 담은 시점과 현재의 판매 가격이 달라질 수 있습니다.</li>
                            <li>장바구니에는 최대 100개의 상품을 보관할 수 있으며, 주문당 한번에 주문 가능한 상품수는 100개로 제한됩니다.</li>
                            <li>하이프랜드에 모든 주문건은 무통장 입금이 불가능합니다.</li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col mt-5 mb-5" style="text-align: center;">
                        <button type="button" class="btn btn-danger btnOrder">주문하기</button>
                    </div>
                </div>
            </div>
            </div>

            <!-- Footer-->
            <footer class="footer bg-light mt-5">
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

        <script src="<%=request.getContextPath()%>/member/script/cart.js"></script>

        </html>