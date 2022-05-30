<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<link href="<%=request.getContextPath()%>css/review.css" rel="stylesheet"/>
<title>리뷰작성</title>
</head>
<body>
	 <div class="container">
        <div class="row header">
            <div class = "col-6">
                <h2>리뷰 작성</h2>
            </div>
            <div class = "col-6 d-flex justify-content-end">
                <form name="myform" id="myform" method="post" action="./save">
                    <fieldset>
                        <input type="radio" name="rating" value="5" id="rate1"><label for="rate1">⭐</label>
                        <input type="radio" name="rating" value="4" id="rate2"><label for="rate2">⭐</label>
                        <input type="radio" name="rating" value="3" id="rate3"><label for="rate3">⭐</label>
                        <input type="radio" name="rating" value="2" id="rate4"><label for="rate4">⭐</label>
                        <input type="radio" name="rating" value="1" id="rate5"><label for="rate5">⭐</label>
                    </fieldset>
                </form>
            </div>
        </div>
        <div class = "row body">
            <div class="col-12 writerBox">
                <textarea class = "form-control" placeholder="내용을 입력해주세요." style="width:700px; height:300px;"></textarea>
            </div>
        </div>
        <div class = "row footer">
            <div class = "col-12 btnBox">
                <button type = "button" class = "btn btn-info">작성완료</button>
            </div> 
        </div>
    </div>
</body>
</html>