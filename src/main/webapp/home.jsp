<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����</title>
</head>
<body>
<<<<<<< HEAD

</body>
</html>
=======
<div class="container MainBox">
     <!-- 네비바 -->
     <nav class="navbar navbar-light bg-light fixed">
         <div class="container">
             <a class="navbar-brand" href="/Tohome" id="logo">로고</a>
             <div class="col-md-1  navbar-anchor"><a href="/">COMPANY</a></div>
             <div class="dropdown ">
                 <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: bold;">
                   CLOTHES
                 </button>
                 <ul class="dropdown-menu nav-category" aria-labelledby="dropdownMenuButton1">
                   <li><a class="dropdown-item" href="#">Top</a></li>
                   <li><a class="dropdown-item" href="#">Bottom</a></li>
                   <li><a class="dropdown-item" href="#">Accessory</a></li>
                 </ul>
               </div>
             <div class="col-md-1 navbar-anchor"><a href="/">매장찾기</a></div>
             <div class="col-md-1 navbar-anchor"><a href="/toCs.mem">고객센터</a></div>
         <!-- 네비바 검색창 -->
             <div class="col-md-4 navbar-anchor" id="navbar-search">
                 <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                     <div class="input-group">
                         <button class="btn btn-link" style="border: 1px solid lightgrey;" id="btnSearch" type="button"><i id="searchIcon" class="fas fa-search"></i></button>
                         <input class="form-control" type="text" aria-describedby="btnNavbarSearch" />
                     </div>
                 </form>
             </button></div>
             <div class="col-md-2 navbar-anchor" id="userIcon">
         <c:choose>
			<c:when test="${not empty loginSession}"><!-- 로그인했으면 -->
				<a href="/toCart.mem"><i class="fa-solid fa-cart-plus"></i></a>
					<div class="dropdown" style="display: inline;">
						<i class="fa-solid fa-user" data-bs-toggle="dropdown" aria-expanded="false" ></i>
		                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
		                      <li><a class="dropdown-item" href="/toMypage.mem">마이페이지</a></li>
		                      <li><a class="dropdown-item" href="/logoutProc.mem">로그아웃</a></li>	                     
		                    </ul>
		             </div>
               			<span style="font-size: 10px;">${loginSession.user_id}님</span>
			</c:when>
			
			<c:otherwise><!-- 로그인 안하면 -->
				<i id="loginIcon" class="fa-solid fa-cart-plus"></i></a>
				<i id="loginIcon2" class="fa-solid fa-user"></i>
				<script>
				document.getElementById("loginIcon2").onclick = function(){
					let url = "/toLogin.mem";
					let name = "로그인";
					let option = "width=600, height=700, left=700, top=300";
					window.open(url, name, option);
					}
				document.getElementById("loginIcon").onclick = function(){
					let url = "/toLogin.mem";
					let name = "로그인";
					let option = "width=600, height=700, left=700, top=300";
					window.open(url, name, option);
					}
				</script>
			</c:otherwise>
		</c:choose>
             </div>
         </div>
     </nav>
 </div>

<input id="url" name="url" type="hidden" value="/Tohome" />
 <!-- 캐러셀-->
        <header class="masthead w-100" style="margin-top: 60px; "  >
            <!-- 캐러셀 영역1-->
            <div id="carousel_1" class="carousel slide d-flex" data-bs-ride="false">
                <div class="wrap">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carousel_1" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carousel_1" data-bs-slide-to="1" aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carousel_1" data-bs-slide-to="2" aria-label="Slide 3"></button>
                      </div>
                </div>
                
                <!--1번 캐러셀-->
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="textBox">
                        <p class="textTitle">
                            <strong>UNIQLO and MARNI</strong>
                        </p>
                        <p><strong>2022 Spring / Summer Collection<br>
                            [5/20(금) 판매 개시]
                        </strong></p>
                        <button class="viewMore" type="button" onclick="location.href='/'" >VIEW MORE</button>
                    </div>
                    <img class="carouselFimg" src="resources/images/main1-1.jpg" class="d-block w-100" alt="...">
                  </div>
                  <!--2번 캐러셀-->
                  <div class="carousel-item">
                    <img class="carouselFimg"  src="resources/images/main1-2.jpg" class="d-block w-100" alt="...">
                    <div class="textBox">
                        <p class="textTitle">
                            <strong>UNIQLO and MARNI</strong>
                        </p>
                        <p><strong>2022 Spring / Summer Collection<br>
                            ~ ITEM LINEUP
                        </strong></p>
                        <button class="viewMore" type="button" onclick="location.href='/'" >VIEW MORE</button>
                    </div>
                  </div>
                  <!--3번 캐러셀-->
                  <div class="carousel-item">
                    <img class="carouselFimg"  src="resources/images/main1-3.jpg" class="d-block w-100" alt="...">
                    <div class="textBox">
                        <p class="textTitle">
                            <strong>UNIQLO and MARNI</strong>
                        </p>
                        <p><strong>2022 Spring / Summer Collection<br>
                            ~ ITEM LINEUP
                        </strong></p>
                        <button class="viewMore" type="button" onclick="location.href='/'" >VIEW MORE</button>
                    </div>
                  </div>
                </div>
                <button class="carousel-c-prev" type="button" data-bs-target="#carousel_1" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" ></span>
                  <span class="visually">Prev</span>
                </button>
                <button class="carousel-c-next" type="button" data-bs-target="#carousel_1" data-bs-slide="next">
                  Next
                  <span class="carousel-control-next-icon"></span>     
                </button>
              </div>

               <!-- 캐러셀 영역2-->
            <div id="carousel_2" class="carousel slide d-flex" data-bs-ride="false">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carousel_2" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carousel_2" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carousel_2" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  
                </div>
                <!--1번 캐러셀-->
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <div class="textBox">
                        <p class="textTitle">
                            <strong>UNIQLO and MARNI</strong>
                        </p>
                        <p><strong>2022 Spring / Summer Collection<br>
                            ~ ITEM LINEUP
                        </strong></p>
                        <button class="viewMore" type="button" onclick="location.href='/'" >VIEW MORE</button>
                    </div>
                    <img class="carouselImg" src="resources/images/main2-1.jpg" class="d-block w-100" alt="...">
                  </div>
                  <!--2번 캐러셀-->
                  <div class="carousel-item">
                    <img class="carouselImg" src="resources/images/main2-2.jpg" class="d-block w-100" alt="...">
                    <div class="textBox">
                        <p class="textTitle">
                            <strong>UNIQLO and MARNI</strong>
                        </p>
                        <p><strong>2022 Spring / Summer Collection<br>
                            ~ ITEM LINEUP
                        </strong></p>
                        <button class="viewMore" type="button" onclick="location.href='/'" >VIEW MORE</button>
                    </div>
                  </div>
                  <!--3번 캐러셀-->
                  <div class="carousel-item">
                    <img class="carouselImg" src="/resources/images/main2-3.jpg" class="d-block w-100" alt="...">
                    <div class="textBox">
                        <p class="textTitle">
                            <strong>UNIQLO and MARNI</strong>
                        </p>
                        <p><strong>2022 Spring / Summer Collection<br>
                            ~ ITEM LINEUP
                        </strong></p>
                        <button class="viewMore" type="button" onclick="location.href='/'" >VIEW MORE</button>
                    </div>
                  </div>
                </div>
                <button class="carousel-c-prev" type="button" data-bs-target="#carousel_2" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" ></span>
                  <span class="visually">Prev</span>
                </button>
                <button class="carousel-c-next" type="button" data-bs-target="#carousel_2" data-bs-slide="next">
                  <span class="visually">Next</span>
                  <span class="carousel-control-next-icon" ></span>     
                </button>
              </div>

              <!--캐러셀 영역3-->
              <div id="carousel_3" class="carousel slide d-flex" data-bs-ride="false">
                <div class="carousel-indicators">
                  <button type="button" data-bs-target="#carousel_3" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                  <button type="button" data-bs-target="#carousel_3" data-bs-slide-to="1" aria-label="Slide 2"></button>
                  <button type="button" data-bs-target="#carousel_3" data-bs-slide-to="2" aria-label="Slide 3"></button>
                  
                </div>
                <!--1번 캐러셀-->
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img class="carouselImg"  src="/resources/images/main3-1.jpg" class="d-block w-100" alt="...">
                    <div class="textBox">
                        <p class="textTitle">
                            <strong>HELLO, SUMMER</strong>
                        </p>
                        <p><strong>다채로운 컬러와 소재의 쇼트팬츠로<br>
                            뜨거운 여름을 준비해보세요
                        </strong></p>
                        <button class="viewMore" type="button" onclick="location.href='/'" >VIEW MORE</button>
                    </div>
                  </div>
                  <!--2번 캐러셀-->
                  <div class="carousel-item">
                    <img class="carouselImg" src="/resources/images/main3-2.jpg" class="d-block w-100" alt="...">
                    <div class="textBox">
                        <p class="textTitle">
                            <strong>HELLO, SUMMER</strong>
                        </p>
                        <p><strong>다채로운 컬러와 소재의 쇼트팬츠로<br>
                            뜨거운 여름을 준비해보세요
                        </strong></p>
                        <button class="viewMore" type="button" onclick="location.href='/'" >VIEW MORE</button>
                    </div>
                  </div>
                  <!--3번 캐러셀-->
                  <div class="carousel-item">
                    <img class="carouselImg"  src="/resources/images/main3-3.jpg" class="d-block w-100" alt="...">
                    <div class="textBox">
                        <p class="textTitle">
                            <strong>HELLO, SUMMER</strong>
                        </p>
                        <p><strong>다채로운 컬러와 소재의 쇼트팬츠로<br>
                            뜨거운 여름을 준비해보세요
                        </strong></p>
                        <button class="viewMore" type="button" onclick="location.href='/'" >VIEW MORE</button>
                    </div>
                  </div>
                </div>
                <button class="carousel-c-prev" type="button" data-bs-target="#carousel_3" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually">Prev</span>
                </button>
                <button class="carousel-c-next" type="button" data-bs-target="#carousel_3" data-bs-slide="next">
                  <span class="visually">Next</span>
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>     
                </button>
              </div>
        </header>
        
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
                                <a href="/toPay.mem"><i class="bi-facebook fs-3"></i></a>
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
<script src="<%=request.getContextPath()%>home.js"></script>
>>>>>>> fe51257fdc0604c71609bd8e6ee5539767e88b0f
