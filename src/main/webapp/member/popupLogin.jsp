<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" type="text/css" />
<!-- Google fonts-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;800&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<!-- fontAwessome-->
<script src="https://kit.fontawesome.com/241134516c.js" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<!-- css -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/member/css/popupLogin.css">
</head>
<body>
<form id="loginForm" action="/toLoginProc.mem" method="post">
<input id="url" name="url" type="hidden" value="" />
 <div class="container">
        <!-- X아이콘 -->
        <div class = "row m-2 icon">
            <div class = "col-12 d-flex justify-content-end">
                <i id="btnCanlcel" class="bi bi-x-lg"></i>
            </div>
        </div>
        <!-- 로그인 타이틀 -->
        <div class = "row m-2 header">
            <div class = "col-12 d-flex justify-content-center" style="text-align: center;">
                <h2>로그인</h2>
            </div>
        </div>
        <!-- 아이디 비밀번호 입력창 -->
        <div class = "row p-3 inputBox">
            <div class="col-12">
                <input type = "text" class="form-control idLogin" id="id" name="id" placeholder="아이디를 입력해주세요."> 
            </div>
        </div>
        <div class = "row p-3 inputBox">
            <div class="col-12">
                <input type = "password" class="form-control idLogin" id="pw" name="pw" placeholder="비밀번호를 입력해주세요."> 
            </div>
        </div>
        <!-- 로그인 버튼 -->
        <div class = "row p-4">
            <div class="col-12  d-flex justify-content-center">
                <button type = "button" class = "btn btn-primary" id = "btnLogin">로그인</button>
            </div>
        </div>
        
       	<!-- 회원가입 버튼 -->
		<div class = "row p-4">
           <div class="col-12  d-flex justify-content-center">
               <button type = "button" class = "btn btn-danger" id = "btnSignup">회원가입</button>
           </div>
        </div>
        
        <!-- 카카오 로그인 -->
        <div class = "row">
            <div class="col-12  d-flex justify-content-center kakaoLogin">
                <a href = ""><img src = "/resources/images/kakao_login.png"></a>                
            </div>
        </div>
        <!-- 아이디, 비밀번호 찾기-->
        <div class = "row m-3">
            <div class = "col-12 d-flex justify-content-center kakaoLogin">
                <p data-bs-toggle="modal" data-bs-target="#staticBackdrop1">아이디 찾기&emsp;</p>

                <p data-bs-toggle="modal" data-bs-target="#staticBackdrop2">&emsp;비밀번호 찾기</p>
            </div>
        </div>
      </div>
</form>

<!-- id찾기 -->
<div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">아이디 찾기</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
       	<form id="findIdForm" action="/findIdForm.mem" method="post">
	       	<div id="findId_body"  class="modal-body">   
	            <div class="row nameBox m-2">
	                <div class="col-3 d-flex justify-content-center">
	                    <label for="name" class="form-label">이름</label>
	                </div>
	                <div class="col-9 d-flex justify-content-center">
	                    <input type="text" class="form-control" placeholder="ex)홍길동" name="find_name" id="find_name">
	                </div>
	            </div>
	            <div class="row phoneBox m-2 mt-4">
	                <div class="col-3 d-flex justify-content-center">
	                    <label for="phone" class="form-label">휴대폰 번호</label>
	                </div>
	                <div class="col-9 d-flex justify-content-center">
	                    <div class="col-4">
	                        <select class="form-select" id="find_phone1" style="margin-top:8px;">
	                            <option value="010" selected>010</option>
	                            <option value="011">011</option>
	                            <option value="016">016</option>
	                            <option value="017">017</option>
	                            <option value="018">018</option>
	                            <option value="019">019</option>
	                        </select>
	                    </div>
	                    <div class="col-4 p-2">
	                        <input type="text" class="form-control" id="find_phone2" maxlength="4">
	                    </div>
	                    <div class="col-4 p-2">
	                        <input type="text" class="form-control" id="find_phone3" maxlength="4">
	                    </div>
	                    <div class="col d-none">
	                        <input type="text" id="find_phone" name="find_phone">
	                    </div>
	                </div>
	            </div> 
	            <div class="row btns mt-4">
	                <div class="col-12 d-flex justify-content-center">
	                    <button type="button" class="btn btn-primary" id="btnFindID">아이디 찾기</button>
	                </div>
	            </div>
	            <div class="row anchor mt-4"  >
	                <div class="col-12 d-flex justify-content-center">
	                    <a class="findID" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">비밀번호 찾기</a>
	                </div>
	            </div>
	        </div>
	     </form> 
	        <div id="resultId" class="modal-body" style="display: none;">  <!-- 가입된아이디 -->  
	            <div class="row nameBox m-2">
	                <div class="col-12 d-flex justify-content-center">
	                    <label for="name" class="form-label">가입된 ID</label>
	                </div>
	             </div>
	             <div id="findId_result">
	                
	            </div>
	            <div class="row anchor mt-4">
	                <div class="col-12 d-flex justify-content-center">
	                    <a href="" id="findPw"  data-bs-toggle="modal" data-bs-target="#staticBackdrop2">비밀번호 찾기</a>
	                </div>
	            </div>
	        </div>
      </div>
    </div>
  </div>

<!-- 비밀번호찾기-->
<div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel">비밀번호 찾기</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        
     <form id="findPwForm" action="/findPw.mem" method="post">    
        <div id="findPw_body" class="modal-body"> 														<!-- 비밀번호찾는곳 -->
            <div class="row nameBox m-2">
                <div class="col-3 d-flex justify-content-center">
                    <label for="name" class="form-label">이름</label>
                </div>
                <div class="col-9 d-flex justify-content-center">
                    <input type="text" class="form-control" placeholder="ex)홍길동" name="findPw_name" id="findPw_name">
                </div>
            </div>
            <div class="row phoneBox m-2 mt-4">
                <div class="col-3 d-flex justify-content-center">
                    <label for="id" class="form-label">아이디</label>
                </div>
                <div class="col-9 d-flex justify-content-center">
                    <input type="text" class="form-control" name="findPw_id" id="findPw_id">
                </div>
            </div> 
            <div class="row btns mt-4">
                <div class="col-12 d-flex justify-content-center">
                    <button type="button" class="btn btn-primary" id="btnFindPW">비밀번호 찾기</button>
                </div>
            </div>
        
            <div class="row anchor mt-4">
                <div class="col-12 d-flex justify-content-center">
                    <a href="" class="findID" data-bs-toggle="modal" data-bs-target="#staticBackdrop1" >아이디 찾기</a>
                </div>
            </div>
        </div>
     </form>   
     <form id="modifyForm" action="/toModifyPw.mem" method="post">                        <!-- 비밀번호 변경하는 곳 -->
        <div id="modifyPw_body" class="modal-body" style="display: none;">
            <div class="row nameBox m-2">
                <div class="col-3 d-flex justify-content-center">
                    <label for="name" class="form-label" style="font-size: 0.75rem; margin-top: 3px">비밀번호</label>
                </div>
                <div class="col-9 d-flex justify-content-center">
                    <input type="password" class="form-control"  name="modifyPw" id="modifyPw">
                </div>
            </div>
            <div class="row phoneBox m-2 mt-4">
                <div class="col-3 d-flex justify-content-center">
                    <label for="id" class="form-label" style="font-size: 0.75rem; margin-top: 3px" >비밀번호 확인</label>
                </div>
                <div class="col-9 d-flex justify-content-center">
                    <input type="password" class="form-control" name="checkPw" id="checkPw">
                    <input id="modifyPw_id" name="modifyPw_id" type="hidden" />
                </div>
            </div> 
            <div class="row">
            	<div class="col">
            		<p style="font-size: 0.75rem;">영문, 숫자, 특수문자를 혼합하여 최소 5자리 이상 19자리 이하로 설정해 주세요.</p>
            	</div>
            </div>
            <div class="row btns mt-4">
                <div class="col-12 d-flex justify-content-center">
                    <button type="button" class="btn btn-primary" id="btnModifyPW">비밀번호 변경</button>
                </div>
            </div>
            <div class="row anchor mt-4">
                <div class="col-12 d-flex justify-content-center">
                    <a href="" class="findID" data-bs-toggle="modal" data-bs-target="#staticBackdrop1" >아이디 찾기</a>
                </div>
            </div>
        </div>
        </form>
      </div>
    </div>
  </div>
 
</body>
 <script src="<%=request.getContextPath()%>script/popupLogin.js"></script>
</html>