<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ����</title>
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
<link href="<%=request.getContextPath()%>css/boardReviewManage.css"
	rel="stylesheet" />
</head>
<body>
	<div class="adminContainer">
		<div class="row adminNavbar d-flex align-items-center">
			<div
				class="col-md-2 adminNavbar-left d-flex justify-content-center align-items-lg-center">
				<i class="fa-brands fa-yahoo"></i> <span adminNavbar-left-text>LAND</span>
			</div>
			<div class="col-md-10 adminNavbar-right d-flex justify-content-end">
				<div class="adminIcon">
					<span class="adminIconSpan">Admin</span> <i
						class="fa-solid fa-user-check"></i> <span class="adminIconLogout">�α׾ƿ�</span>
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
						<li><a href="#">���ǰ���</a></li>
						<li><a href="#">���� ����</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 adminMainContainer">
				<div class="table firstTable">
					<h3 class="text-center mt-3 firstTableTitle">���� ����</h3>
					<div class="input-group rounded w-25 searchMemberInput mt-2 mb-3"
						style="border-top-width: 0px">
						<input type="search" class="form-control rounded"
							placeholder="Search" aria-label="Search"
							aria-describedby="search-addon" /> <span
							class="input-group-text border-0" id="search-addon"> <i
							class="fas fa-search"></i>
						</span>
					</div>
					<div class="selectAll ms-4" style="border-top-width: 0px">
						<i class="fa-solid fa-folder-open"></i> <span class="ms-2">��ü��ȸ</span>
					</div>
					<div class="reviewContainer" style="border-top-width: 0px">
						<table class="table table-striped boardTable text-center mt-3"
							id="tableBox">
							<thead>
								<tr>
									<th scope="col">���� ��ȣ</th>
									<th scope="col">ȸ��ID</th>
									<th scope="col">�̹���</th>
									<th scope="col">����</th>
									<th scope="col">�����</th>
									<th scope="col">����</th>
									<th scope="col">��ǰ ��ȣ</th>
									<th scope="col">�� ���� ����</th>
									<th scope="col">����</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td class="align-middle">1</td>
									<td class="align-middle">kh123</td>
									<td class="align-middle">
										<div>�̹���</div>
									</td>
									<td class="align-middle">
										<div class="form-group">
											<input class="replyContent form-control" readonly
												value="���� ���׿�!" />
										</div>
									</td>
									<td class="align-middle">2022�� 05�� 21�� 11�� 08��</td>
									<td class="align-middle">2</td>
									<td class="align-middle">ABC-123</td>
									<td class="align-middle"><span
										class="text-center reviewDetailIcon"><i
											class="fa-solid fa-magnifying-glass"></i></span></td>
									<td class="align-middle"><span
										class="text-center reviewDelete"><i
											class="fa-solid fa-trash"></i></span></td>
								</tr>
							</tbody>
						</table>

						<!-- ���������̼� -->
						<div
							class="pageNationContainer d-flex justify-content-center mt-2">
							<nav aria-label="Page navigation example">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#">Previous</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">1</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">2</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">3</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">4</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">5</a>
									</li>
									<li class="page-item"><a class="page-link" href="#">Next</a>
									</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>

				<!-- ���� �󼼺��� -->
				<div class="reviewcontainerModal">
					<div class="reviewDetailModal">
						<div class="row mt-1">
							<div class="col d-flex justify-content-end me-3 mt-2">
								<i class="fa-solid fa-xmark reviewDetailModalExitIcon"></i>
							</div>
						</div>
						<div class="row reviewDetailModalTitle">
							<div class="col mt-2">
								<h4 class="ms-2">����</h4>
							</div>
						</div>
						<div class="row mt-1">
							<div
								class="col d-flex justify-content-center reviewDetailModalContainer">
								<textarea class="form-control w-100 reviewTextBox"
									id="floatingTextarea">
�������׿�</textarea>
							</div>
						</div>
					</div>
				</div>

				<!-- ���� ���  -->
				<div class="reviewDeleteModal">
					<div class="text-center mt-4">�ش� ���並 ������ ���� �Ͻðڽ��ϱ�?</div>
					<div class="row mt-3">
						<div class="col-md-6 d-flex justify-content-end">
							<button type="button" class="btn btn-primary btn-sm"
								id="reviewDeleteCancelBtn">���</button>
						</div>
						<div class="col-md-6">
							<button type="button" class="btn btn-danger btn-sm"
								id="reviewDeleteBtn">����</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="<%=request.getContextPath()%>script/boardReviewManage.js"></script>
</body>
</html>