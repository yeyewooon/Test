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
    <link href="<%=request.getContextPath()%>css/memberManage.css" rel="stylesheet"/>
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
          <div class="table firstTable">
            <h3 class="text-center mt-3 firstTableTitle">회원 수정 및 삭제</h3>

            <div class="input-group rounded w-25 searchMemberInput mt-2 mb-3">
              <input
                type="search"
                class="form-control rounded"
                placeholder="Search"
                aria-label="Search"
                aria-describedby="search-addon"
              />
              <span class="input-group-text border-0" id="search-addon">
                <i class="fas fa-search"></i>
              </span>
            </div>

            <div class="selectAll ms-4" style="border-top-width: 0px">
              <i class="fa-solid fa-folder-open"></i>
              <span class="ms-2">전체조회</span>
            </div>

            <div class="MemberContainer" style="border-top-width: 0px">
              <table
                class="table table-striped memberTable text-center mt-3"
                id="tableBox"
              >
                <thead>
                  <tr>
                    <th scope="col">회원ID</th>
                    <th scope="col">생년월일</th>
                    <th scope="col">전화번호</th>
                    <th scope="col">블랙리스트</th>
                    <th scope="col">삭제</th>
                    <th scope="col">수정</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td id="category">김준호</td>
                    <td>961123</td>
                    <td>010-2983-2938</td>
                    <td>
                      <span class="memberBlackList"
                        ><i class="fa-solid fa-user"></i
                      ></span>
                    </td>
                    <td id="icon">
                      <span class="text-center memberDelete"
                        ><i class="fa-solid fa-trash"></i
                      ></span>
                    </td>
                    <td id="icon">
                      <span class="memberModify"
                        ><i class="fa-solid fa-pencil"></i
                      ></span>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>


          <!-- 모달창HTML -->
          <div class="modal">
            <div class="modal_content">
              <div class="row p-3">
                <div class="col d-flex justify-content-center">
                  <h4>회원수정</h4>
                </div>
              </div>
              <div class="row p-3">
                <div class="col-3 align-items-center">
                  <label for="id" class="form-label">아이디</label>
                </div>
                <div class="col-9 mb-2">
                  <input
                    type="text"
                    class="form-control"
                    id="id"
                    name="id"
                    readonly
                  />
                </div>
              </div>
              <div class="row p-3">
                <div class="col-3">
                  <label for="password" class="form-label">비밀번호</label>
                </div>
                <div class="col-9 mb-2">
                  <input
                    type="password"
                    class="form-control"
                    id="pw"
                    name="pw"
                  />
                </div>
              </div>
              <div class="row p-3">
                <div class="col-3">
                  <label for="phone" class="form-label">핸드폰</label>
                </div>
                <div class="col-9 mb-2">
                  <input type="test" class="form-control" id="pw" name="pw" />
                </div>
              </div>
              <div class="row p-3">
                <div class="col-3">블랙리스트</div>
                <div class="col-4 d-flex justify-content-center">
                  <div class="form-check w-50">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="flexRadioDefault"
                      id="flexRadioDefault1"
                    />
                    <label class="form-check-label" for="flexRadioDefault1">
                      추가
                    </label>
                  </div>
                </div>
                <div class="col-4 d-flex justify-content-center">
                  <div class="form-check w-50">
                    <input
                      class="form-check-input"
                      type="radio"
                      name="flexRadioDefault"
                      id="flexRadioDefault1"
                    />
                    <label class="form-check-label" for="flexRadioDefault1">
                      제거
                    </label>
                  </div>
                </div>
              </div>
              <div class="row p-3">
                <div class="col-3">
                  <label for="email" class="form-label">이메일</label>
                </div>
                <div class="col-9">
                  <div class="input-group mb-3">
                    <input
                      type="text"
                      class="form-control"
                      placeholder="Username"
                      aria-label="Username"
                    />
                    <span class="input-group-text">@</span>
                    <input
                      type="text"
                      class="form-control"
                      placeholder="Server"
                      aria-label="Server"
                    />
                  </div>
                </div>
              </div>

              <div class="row p-3">
                <div class="col-6 d-flex justify-content-end mb-2">
                  <button
                    type="button"
                    class="btn btn-warning w-50"
                    id="cancelBtn"
                  >
                    취소
                  </button>
                </div>
                <div class="col-6 d-flex justify-content-start mb-2">
                  <button
                    type="button"
                    class="btn btn-primary w-50"
                    id="submitBtn"
                  >
                    수정 완료
                  </button>
                </div>
              </div>
            </div>
          </div>
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center">
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>

          <!-- 삭제 모달  -->
          <div class="boardDeleteModal">
            <div class="text-center mt-4">
              해당 회원을 정말로 삭제 하시겠습니까?
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
    
    <script src="<%=request.getContextPath()%>script/memberManage.js"></script>
</body>
</html>