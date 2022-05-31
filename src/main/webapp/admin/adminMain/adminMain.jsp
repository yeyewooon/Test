<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    <link href="<%=request.getContextPath()%>css/adminMain.css" rel="stylesheet"/>
</head>
<body>
 <div class="adminContainer">
      <div class="row adminNavbar d-flex align-items-center">
        <div
          class="col-md-2 adminNavbar-left d-flex justify-content-center align-items-lg-center"
        >
          <i class="fa-brands fa-yahoo"></i>
          <span adminNavbar-left-text>LAND</span>
        </div>
        <div class="col-md-10 adminNavbar-right d-flex justify-content-end">
          <div class="adminIcon">
            <span class="adminIconSpan">Admin</span>
            <i class="fa-solid fa-user-check"></i>
            <span class="adminIconLogout">로그아웃</span>
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
              <li><a href="/shipManage.sh?curPage=1">배송 정보 변경</a></li>
            </ul>
          </div>
          <div class="nav-linksContainer nav-linksContainer4">
            <div class="icon-link row d-flex align-items-center">
              <div class="icon-link-left col-md-3 d-flex justify-content-end">
                <i class="fa-solid fa-cart-shopping cart"></i>
              </div>
              <div class="icon-link-center col-md-6">
                <span class="link_name cartManagement">게시판 관리</span>
              </div>
              <div class="icon-link-right col-md-3">
                <i class="fa-solid fa-caret-down arrow arrow4"></i>
              </div>
            </div>
            <ul class="sub-menu sub-menu-fourth">
              <li><a href="#">게시글 등록</a></li>
              <li><a href="#">게시글 수정 및 삭제</a></li>
              <li><a href="#">리뷰 관리</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-10 adminMainContainer">
          <div class="row cardContainer">
            <div class="col cardContentBox">
              <!-- 회원수 -->
              <div class="row h-50 m-0">
                <div class="col-6">
                  <div class="container dataContainer dataContainer1 mt-3">
                    <div class="row">
                      <div class="col dataBox-Text">
                        <p class="mt-2">회원수</p>
                        <p class="dataBox-Text-Count">460명</p>
                        <p>22년05월24일</p>
                      </div>
                      <div
                        class="col-5 dataBox-Icon d-flex justify-content-center align-items-center"
                      >
                        <i class="fa-solid fa-users"></i>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 매출  -->
                <div class="col-6">
                  <div class="container dataContainer dataContainer2 mt-3">
                    <div class="row">
                      <div class="col dataBox-Text">
                        <p class="mt-2">매출</p>
                        <p class="dataBox-Text-Count">1,111,115원</p>
                        <p>22년05월24일</p>
                      </div>
                      <div
                        class="col-5 dataBox-Icon d-flex justify-content-center align-items-center"
                      >
                        <i class="fa-solid fa-coins"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- 구매 건수  -->
              <div class="row h-50 m-0">
                <div class="col-6">
                  <div class="container dataContainer dataContainer3 mt-3">
                    <div class="row">
                      <div class="col dataBox-Text">
                        <p class="mt-2">구매 건수</p>
                        <p class="dataBox-Text-Count">120개</p>
                        <p>22년05월24일</p>
                      </div>
                      <div
                        class="col-5 dataBox-Icon d-flex justify-content-center align-items-center"
                      >
                        <i class="fa-solid fa-cart-shopping"></i>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 상품 게시글 수  -->
                <div class="col-6">
                  <div class="container dataContainer dataContainer4 mt-3">
                    <div class="row">
                      <div class="col dataBox-Text">
                        <p class="mt-2">상품 게시글 수</p>
                        <p class="dataBox-Text-Count">18개</p>
                        <p>22년05월24일</p>
                      </div>
                      <div
                        class="col-5 dataBox-Icon d-flex justify-content-center align-items-center"
                      >
                        <i class="fa-solid fa-clipboard-list"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- 원형 차트 -->
            <div class="col">
              <div class="charts circleCharts">
                <script src="https://code.highcharts.com/highcharts.js"></script>
                <script src="https://code.highcharts.com/highcharts-more.js"></script>
                <script src="https://code.highcharts.com/modules/exporting.js"></script>
                <script src="https://code.highcharts.com/modules/export-data.js"></script>
                <script src="https://code.highcharts.com/modules/accessibility.js"></script>
                <figure class="highcharts-figure">
                  <div id="container1"></div>
                </figure>
              </div>
            </div>
          </div>

          <!-- 막대 차트  -->
          <div class="charts stickCharts">
            <script src="https://code.highcharts.com/highcharts.js"></script>
            <script src="https://code.highcharts.com/modules/exporting.js"></script>
            <script src="https://code.highcharts.com/modules/export-data.js"></script>
            <script src="https://code.highcharts.com/modules/accessibility.js"></script>
            <figure class="highcharts-figure">
              <div id="container2"></div>
            </figure>
          </div>
        </div>
      </div>
    </div>
    
    <script src="<%=request.getContextPath()%>script/adminMain.js"></script>
    
    <script>
    	
    
    
    </script>
    
    
    
    
    
    
    
    
</body>
</html>