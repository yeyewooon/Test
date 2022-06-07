<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<title>로그인하기</title>
<style>
	.container{border:1px solid gainsboro; width: 500px; height: 500px;}
	.bi-x-lg{font-size: 30px;}
	.inputBox{width: 400px; margin:auto;}
	.btn{width: 300px;}
	a{text-decoration-line: none; color:lightslategrey;}
	.signup{margin-top: 20px;}
</style>
</head>
<body>
	    <div class="container">
        <!-- X아이콘 -->
        <div class = "row m-2 icon">
            <div class = "col-12 d-flex justify-content-end">
                <a href=""><i class="bi bi-x-lg"></i></a>
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
                <input type = "text" class="form-control idLogin" placeholder="아이디를 입력해주세요."> 
            </div>
        </div>
        <div class = "row p-3 inputBox">
            <div class="col-12">
                <input type = "password" class="form-control idLogin" placeholder="비밀번호를 입력해주세요."> 
            </div>
        </div>
        <!-- 로그인 버튼 -->
        <div class = "row p-4">
            <div class="col-12  d-flex justify-content-center">
                <button type = "button" class = "btn btn-primary" id = "btnLogin">로그인</button>
            </div>
        </div>
        <!-- 카카오 로그인 -->
        <div class = "row">
            <div class="col-12  d-flex justify-content-center kakaoLogin">
                <a href = ""><img src = "resources/kakao_login.png"></a>                
            </div>
        </div>
        <!-- 회원가입 하기 -->
        <div class = "row signup">
            <div class = "col-12 d-flex justify-content-center kakaoLogin">
                <a href=""><p>회원가입</p></a>
            </div>
        </div>
        <!-- 아이디, 비밀번호 찾기-->
        <div class = "row">
            <div class = "col-12 d-flex justify-content-center kakaoLogin">
                <a href=""><p>아이디 찾기&emsp;</p></a>

                <a href=""><p>&emsp;비밀번호 찾기</p></a>
            </div>
        </div>
      </div>
</body>
</html>