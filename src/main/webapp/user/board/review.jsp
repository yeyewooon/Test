<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link href="user/board/css/review.css" rel="stylesheet" />
<title>리뷰작성</title>
<style>
.container {
	border: 1px solid black;
	width: 800px;
	height: 500px;
}
/*리뷰작성 타이틀*/
.header {
	padding: 20px;
}

/* 별점 */
.fieldset {
	display: inline-block; /* 하위 별점 이미지들이 있는 영역만 자리를 차지함.*/
	direction: rtl; /* 이모지 순서 반전 */
	border: 0; /* 필드셋 테두리 제거 */
}

.fieldset input[type=radio] {
	display: none; /* 라디오박스 감춤 */
}

.fieldset label {
	font-size: 3em; /* 이모지 크기 */
	color: transparent; /* 기존 이모지 컬러 제거 */
	text-shadow: 0 0 0 #f0f0f0; /* 새 이모지 색상 부여 */
}

.fieldset label:hover {
	text-shadow: 0 0 0 rgba(248, 224, 7, 0.973); /* 마우스 호버 */
}

.fieldset label:hover ~ label {
	text-shadow: 0 0 0 rgba(248, 224, 7, 0.973); /* 마우스 호버 뒤에오는 이모지들 */
}

.fieldset input[type=radio]:checked ~ label {
	text-shadow: 0 0 0 rgba(248, 224, 7, 0.973); /* 마우스 클릭 체크 */
}

/*리뷰작성 textarea*/
.writerBox {
	text-align: -webkit-center;
}

/*작성완료 버튼*/
.btnBox {
	padding: 30px;
	text-align: end;
}
</style>
</head>
<body>
	<div class="container">
		<form id="reviewForm" action="/reviewWrite.page" method="post">
			<div class="row header">
				<div class="col-6">
					<h2>리뷰 작성</h2>
				</div>
				<div class="col-6 fieldset d-flex justify-content-end ">

					<fieldset>
						<input type="radio" name="review_rate" value="5" id="rate1"><label for="rate1">⭐</label> 
						<input type="radio" name="review_rate" value="4" id="rate2"><label for="rate2">⭐</label> 
						<input type="radio" name="review_rate" value="3" id="rate3"><label for="rate3">⭐</label> 
						<input type="radio" name="review_rate" value="2" id="rate4"><label for="rate4">⭐</label> 
						<input type="radio" name="review_rate" value="1" id="rate5"><label for="rate5">⭐</label>
					</fieldset>

				</div>
			</div>
			<div class="row body">
				<div class="col-12 writerBox">
					<textarea class="form-control" placeholder="내용을 입력해주세요."
						id="content" name="review_content"
						style="width: 700px; height: 300px;"></textarea>
				</div>
			</div>
			<div class="row footer">
				<div class="col-12 btnBox">
					<button type="button" class="btn btn-info" id="btnReview">작성완료</button>
				</div>
			</div>
		</form>
	</div>
	<script>
    	$("#btnReview").on("click", function(){
    		if($("#content").val() == ""){
    			alert("내용을 입력해주세요.");
    			$("#content").focus();
    			return;
    		}else{
				let data = $('#reviewForm').serialize();
    			$.ajax({
        			url: "/reviewWrite.page?seq_product=${seq_product}"
        			, type: "post"
        			, data : data
        			, success: function(data){
        				alert("리뷰작성이 완료되었습니다.");
        				self.close();
        			}, error: function(request,status,error){
        				alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
        				//alert("에러가 발생했습니다.");
        			}
        		});
    			}
    		});
    </script>
</body>
</html>