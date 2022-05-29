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
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <link href="<%=request.getContextPath()%>css/shipmentModify.css" rel="stylesheet"/>
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
          <div class="table shipmentModifyTable">
            <div class="modifyContainer container w-100">
              <h3 class="mt-2 text-center">배송 정보 수정</h3>
              <form accept="" method="post" id="modifyForm">
                <div class="row mt-1">
                  <div class="form-group col-md-6 mt-2">
                    <label for="inputEmail4">주문 번호</label>
                    <input
                      type="text"
                      class="form-control mt-2"
                      id="inputEmail4"
                      value="201583215SASD"
                      readonly
                    />
                  </div>
                  <div class="form-group col-md-6 mt-2">
                    <label for="inputPassword4">회원 id</label>
                    <input
                      type="text"
                      class="form-control mt-2"
                      id="inputPassword4"
                      value="kh123"
                      readonly
                    />
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-md-6 mt-2">
                    <label for="inputEmail4">수취인 이름</label>
                    <input
                      type="email"
                      class="form-control mt-2"
                      id="inputEmail4"
                      value="김준호"
                    />
                  </div>
                  <div class="form-group col-md-6 mt-2">
                    <label for="inputEmail4">수취인 번호</label>
                    <div class="row mt-2">
                      <div class="col">
                        <!-- <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="도로명주소"> -->
                        <select
                          class="form-select"
                          aria-label="Default select example"
                        >
                          <option selected>010</option>
                          <option value="1">012</option>
                          <option value="2">011</option>
                          <option value="3">016</option>
                        </select>
                      </div>
                      <div class="col">
                        <input
                          type="text"
                          class="form-control"
                          id="phoneNumber1"
                          name="phoneNumber1"
                          placeholder="전화번호"
                          maxlength="4"
                        />
                      </div>
                      <div class="col">
                        <input
                          type="text"
                          class="form-control"
                          id="phoneNumber2"
                          name="phoneNumber2"
                          placeholder="전화번호"
                          maxlength="4"
                        />
                      </div>
                    </div>
                  </div>
                </div>
                <div class="row">
                  <div class="form-group col-md-6 mt-2">
                    <label for="inputEmail4">주문일</label>
                    <input
                      type="text"
                      class="form-control mt-2"
                      id="inputEmail4"
                      value="2022년 05월 23시 1시 45분 45초"
                      readonly
                    />
                  </div>
                  <div class="form-group col-md-6 mt-2">
                    <label for="inputPassword4">주문금액</label>
                    <input
                      type="text"
                      class="form-control mt-2"
                      id="inputPassword4"
                      value="150000원"
                      readonly
                    />
                  </div>
                </div>
                <div class="row mt-2">
                  <div class="col-md-6">
                    <input
                      type="text"
                      class="form-control"
                      id="postCode"
                      name="postCode"
                      placeholder="우편번호"
                    />
                  </div>
                  <div class="col-md-6">
                    <button
                      type="button"
                      class="btn btn btn-outline-success w-100"
                      id="btnPostCode"
                    >
                      우편번호 찾기
                    </button>
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <input
                      type="text"
                      class="form-control"
                      id="roadAddr"
                      name="roadAddr"
                      placeholder="도로명주소"
                    />
                  </div>
                  <div class="col-md-6">
                    <input
                      type="text"
                      class="form-control"
                      id="jibunAddr"
                      name="jibunAddr"
                      placeholder="지번주소"
                    />
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <input
                      type="text"
                      class="form-control"
                      id="detailAddr"
                      name="detailAddr"
                      placeholder="상세주소"
                    />
                  </div>
                </div>
                <div class="row">
                  <div class="col-md-6">
                    <label>배송 상태</label>
                    <select
                      class="form-select mt-2"
                      aria-label="Default select example"
                    >
                      <option selected>입금 확인</option>
                      <option value="상품 준비중">상품 준비중</option>
                      <option value="상품 출발">상품 출발</option>
                      <option value="상품 도착">상품 도착</option>
                    </select>
                  </div>
                  <div class="col-md-6">
                    <label></label>
                    <div class="row mt-2">
                      <div class="col d-flex justify-content-end">
                        <button type="button" class="btn btn-warning submitBtn">
                          뒤로 가기
                        </button>
                      </div>
                      <div class="col">
                        <button type="submit" class="btn btn-primary submitBtn">
                          수정 완료
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    
   <script src="<%=request.getContextPath()%>script/shipmentModify.js"></script>
</body>
</html>