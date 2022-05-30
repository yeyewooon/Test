<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
              <li><a href="#">문의관리</a></li>
              <li><a href="#">리뷰 관리</a></li>
            </ul>
          </div>
        </div>

        <!-- 메인 부분 -->
        <div class="col-md-10 adminMainContainer">
          <div class="table firstTable">
            <h3 class="text-center mt-3 firstTableTitle">문의 관리</h3>
            <!-- <h3 class="MemberText" style="border-top-width: 0px;">회원 목록</h3> -->
            <div
              class="boardCategory d-flex justify-content-center mt-4"
              style="border-top-width: 0px"
            >
              <select
                class="form-select w-25"
                aria-label="Default select example"
                id="category-Selector"
              >
                <option value="shipment" class="category-Shipment">배송</option>
                <option value="payment" class="category-Payment">결제</option>
                <option value="event" class="category-Event">이벤트</option>
              </select>
            </div>
            <div class="selectAll ms-4" style="border-top-width: 0px">
              <i class="fa-solid fa-folder-open"></i>
              <span class="ms-2">전체조회</span>
            </div>
            <div class="boardContainer" style="border-top-width: 0px">
              <table
                class="table table-striped boardTable text-center mt-3"
                id="tableBox"
              >
                <thead>
                  <tr>
                    <th scope="col">문의 번호</th>
                    <th scope="col">문의 유형</th>
                    <th scope="col">회원ID</th>
                    <th scope="col">제목</th>
                    <th scope="col">날짜</th>
                    <th scope="col">등록</th>
                    <th scope="col">답변 여부</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>배송</td>
                    <td>kh123</td>
                    <td>배송 관련 문의드립니다</td>
                    <td>2022년 05년 21일 11시 08분</td>
                    <td>
                      <span class="boardRegister"
                        ><i class="fa-solid fa-pen-to-square"></i
                      ></span>
                    </td>
                    <td>
                      <span class="replyCheck">답변 완료</span>
                    </td>
                  </tr>
                </tbody>
              </table>

              <!-- 페이지네이션 -->
              <div
                class="pageNationContainer d-flex justify-content-center mt-2"
              >
                <nav aria-label="Page navigation example">
                  <ul class="pagination">
                    <li class="page-item">
                      <a class="page-link" href="#">Previous</a>
                    </li>
                    <li class="page-item">
                      <a class="page-link" href="#">1</a>
                    </li>
                    <li class="page-item">
                      <a class="page-link" href="#">2</a>
                    </li>
                    <li class="page-item">
                      <a class="page-link" href="#">3</a>
                    </li>
                    <li class="page-item">
                      <a class="page-link" href="#">4</a>
                    </li>
                    <li class="page-item">
                      <a class="page-link" href="#">5</a>
                    </li>
                    <li class="page-item">
                      <a class="page-link" href="#">Next</a>
                    </li>
                  </ul>
                </nav>
              </div>
            </div>
          </div>

          <!-- 삭제 모달  -->
          <div class="boardDeleteModal">
            <div class="text-center mt-4">
              해당 글을 정말로 삭제 하시겠습니까?
            </div>
            <div class="row mt-3">
              <div class="col-md-6 d-flex justify-content-end">
                <button
                  type="button"
                  class="btn btn-primary btn-sm"
                  id="boardDeleteCancelBtn"
                >
                  취소
                </button>
              </div>
              <div class="col-md-6">
                <button
                  type="button"
                  class="btn btn-danger btn-sm"
                  id="boardDeleteBtn"
                >
                  삭제
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</body>
</html>