<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>배송 문의</title>
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
    <link href="<%=request.getContextPath()%>css/boardManageRegister.css" rel="stylesheet"/>
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
          <div class="container">
            <div class="boardDeleteModal">
              <h3 class="text-center">배송 문의</h3>
              <!--배송 글자 (dto로 값 받아오기) -->
              <div class="form-group d-none">
                <!--글 쓴 사람 id 가져오기 위해서-->
                <label for="exampleInputEmail1">글쓴이</label>
                <input
                  type="text"
                  class="form-control"
                  aria-describedby="emailHelp"
                  value=""
                />
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">제목</label>
                <input
                  type="text"
                  class="form-control mt-2"
                  aria-describedby="emailHelp"
                  value="배송 문의"
                  readonly
                />
              </div>
              <div class="form-group mt-2">
                <label for="exampleFormControlTextarea1">내용</label>
                <textarea
                  class="form-control mt-2"
                  id="exampleFormControlTextarea1"
                  rows="4"
                  readonly
                >
구매한지 3일이</textarea
                >
              </div>
              <div class="form-group mt-4 text-center">
                <label for="exampleInputEmail1" class="text-center"
                  ><strong>댓글</strong></label
                >
              </div>
              <div class="form-group mt-4 commentContainer">
                <div class="commentBox mt-2">
                  <span class="ms-5">kh12345</span>&nbsp;
                  <span class="commentDate">2015년07월21일</span><br />
                  <div class="row mt-2 d-flex">
                    <div class="col-9">
                      이런식으로 하시면 진짜 곤란하죠 전화를 몇번 드렸는데
                    </div>
                    <div
                      class="col-3 boardDelete d-flex justify-content-center"
                    >
                      <i class="fa-solid fa-trash ms-3"></i>
                    </div>
                  </div>
                </div>
              <div class="form-group mt-5">
                <label for="exampleFormControlTextarea1"
                  ><strong>관리자 내용</strong></label
                >
                <textarea
                  class="form-control mt-lg-2"
                  id="exampleFormControlTextarea1"
                  rows="4"
                ></textarea>
              </div>
              <div class="boardDeleteModal-footer d-flex mt-3">
                <div class="col d-flex justify-content-center">
                  <button
                    type="button"
                    class="btn btn-success ms-2 me-2"
                    id="boardCancelBtn"
                  >
                    취소
                  </button>
                  <button
                    type="submit"
                    class="btn btn-primary ms-2 me-2"
                    id="boardSubmitBtn"
                  >
                    등록
                  </button>
                  <button
                    type="button"
                    class="btn btn-danger ms-2 me-2"
                    id="boardDeleteModal"
                  >
                    게시글 삭제
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
     <script src="<%=request.getContextPath()%>script/boardManageRegister.js"></script>
</body>
</html>