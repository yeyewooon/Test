<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��� ����</title>
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
            <span class="adminIconLogout">�α׾ƿ�</span>
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
                <span class="link_name cartManagement">��ǰ ����</span>
              </div>
              <div class="icon-link-right col-md-3">
                <i class="fa-solid fa-caret-down arrow arrow1"></i>
              </div>
            </div>
            <ul class="sub-menu sub-menu-first">
              <li><a href="https://www.naver.com">��ǰ ���</a></li>
              <li><a href="#">��ǰ ����</a></li>
            </ul>
          </div>
          <div class="nav-linksContainer nav-linksContainer2">
            <div class="icon-link row d-flex align-items-center">
              <div class="icon-link-left col-md-3 d-flex justify-content-end">
                <i class="fa-solid fa-user-group"></i>
              </div>
              <div class="icon-link-center col-md-6">
                <span class="link_name cartManagement">ȸ�� ����</span>
              </div>
              <div class="icon-link-right col-md-3">
                <i class="fa-solid fa-caret-down arrow arrow2"></i>
              </div>
            </div>
            <ul class="sub-menu sub-menu-second">
              <li><a href="https://www.naver.com">ȸ�� ���� �� ����</a></li>
            </ul>
          </div>
          <div class="nav-linksContainer nav-linksContainer3">
            <div class="icon-link row d-flex align-items-center">
              <div class="icon-link-left col-md-3 d-flex justify-content-end">
                <i class="fa-solid fa-truck"></i>
              </div>
              <div class="icon-link-center col-md-6">
                <span class="link_name cartManagement">��� ����</span>
              </div>
              <div class="icon-link-right col-md-3">
                <i class="fa-solid fa-caret-down arrow arrow3"></i>
              </div>
            </div>
            <ul class="sub-menu sub-menu-third">
              <li><a href="https://www.naver.com">��� ���� ����</a></li>
            </ul>
          </div>
          <div class="nav-linksContainer nav-linksContainer4">
            <div class="icon-link row d-flex align-items-center">
              <div class="icon-link-left col-md-3 d-flex justify-content-end">
                <i class="fa-solid fa-clipboard-list"></i>
              </div>
              <div class="icon-link-center col-md-6">
                <span class="link_name cartManagement">�Խ��� ����</span>
              </div>
              <div class="icon-link-right col-md-3">
                <i class="fa-solid fa-caret-down arrow arrow4"></i>
              </div>
            </div>
            <ul class="sub-menu sub-menu-fourth">
              <li><a href="#">���� ����</a></li>
              <li><a href="#">���� ����</a></li>
            </ul>
          </div>
        </div>
        <div class="col-md-10 adminMainContainer">
          <div class="container">
            <div class="boardDeleteModal">
              <h3 class="text-center">��� ����</h3>
              <!--��� ���� (dto�� �� �޾ƿ���) -->
              <div class="form-group d-none">
                <!--�� �� ��� id �������� ���ؼ�-->
                <label for="exampleInputEmail1">�۾���</label>
                <input
                  type="text"
                  class="form-control"
                  aria-describedby="emailHelp"
                  value=""
                />
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">����</label>
                <input
                  type="text"
                  class="form-control mt-2"
                  aria-describedby="emailHelp"
                  value="��� ����"
                  readonly
                />
              </div>
              <div class="form-group mt-2">
                <label for="exampleFormControlTextarea1">����</label>
                <textarea
                  class="form-control mt-2"
                  id="exampleFormControlTextarea1"
                  rows="4"
                  readonly
                >
�������� 3����</textarea
                >
              </div>
              <div class="form-group mt-4 text-center">
                <label for="exampleInputEmail1" class="text-center"
                  ><strong>���</strong></label
                >
              </div>
              <div class="form-group mt-4 commentContainer">
                <div class="commentBox mt-2">
                  <span class="ms-5">kh12345</span>&nbsp;
                  <span class="commentDate">2015��07��21��</span><br />
                  <div class="row mt-2 d-flex">
                    <div class="col-9">
                      �̷������� �Ͻø� ��¥ ������� ��ȭ�� ��� ��ȴµ�
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
                  ><strong>������ ����</strong></label
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
                    ���
                  </button>
                  <button
                    type="submit"
                    class="btn btn-primary ms-2 me-2"
                    id="boardSubmitBtn"
                  >
                    ���
                  </button>
                  <button
                    type="button"
                    class="btn btn-danger ms-2 me-2"
                    id="boardDeleteModal"
                  >
                    �Խñ� ����
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