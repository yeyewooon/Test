<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기</title>
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
<!-- 아이엠포트 -->
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<style>
 i {
   margin: 5px;
 }

 .navbar-light {
   width: 100%;
   position: fixed;
   top: 0;
   z-index: 1;
   left: 0%;
 }

 body {
   padding-top: 100px;
 }

 /*네비바 속성*/
 .navbar-anchor a {
   text-decoration: none;
   color: black;
   font-weight: bold;
 }

 #userIcon {
   text-align: right;
   font-size: 25px;
   padding: 5px;
 }

 #navbar-search {
   text-align: right;
 }

 #searchIcon {
   color: lightgrey;
 }

 /* 네비바 드롭다운 */
 .dropdown-toggle:hover {
   color: #83bf7b;
   border-color: aliceblue;
 }

 .dropdown:hover .dropdown-menu {
   display: block;
   margin-top: 0;
   font-weight: bold;
 }

 .header-comment {
   padding: 20px;
   border-bottom: 1px solid lightgray;
 }

 .productImg {
   width: 5rem;
   height: 5rem;
   margin-left: 1rem;
 }

 .plusBtn,
 .minusBtn,
 .quantity {
   border: none;
   width: 30%;
   height: 100%;
 }

 table{
     border: 1px solid lightgray;
 }

 .userInfo td{
     padding: 1rem;
     font-size: 0.8rem;
     font-weight: bold;
 }
 .productInfo td, th{
     text-align: center;
     vertical-align: middle;
     font-size: 0.8rem;
 }

 .P-Option{
     width: 80%;
     text-align: center;
 }
 .disabled {
 pointer-events: none;
 background-color: #00000010;
 color: black;
 opacity: 1;
 }
 .section{
     border-top: 1px solid lightgray;
 }
 .destination{
     margin-right: 5%;
 }
 .comment{
     margin-left: 1rem;
     font-size: 0.8rem;
     color: lightgray;
 }
 .place-change{
   background-color: white;
   border: 1px solid lightgray;
 }
 .total td{
   height: 3rem;
   font-size: 1rem;
   font-weight: bold;
 }

 

 .guideline {
   opacity: 0.7;
   font-size: 0.5rem;
 }

 .btnOrder {
   width: 10rem;
   height: 4rem;
 }

 /*풋터 영역*/
 .footerBox {
   height: 200px;

 }

 footer.footer {
   padding-top: 4rem;
   padding-bottom: 4rem;
 }

 .footer a {
   text-decoration: none;
   color: black;
   font-weight: 40px;
   font-weight: bold;
 }
</style>
<script>

 $(document).ready(function(){
	$("#btnPay").on("click", function(){
		let state = $('#delivery-note option:selected').val();
		if(state === ""){
			alert("배송메세지를 선택해주세요");
			return;
	    }else{
	    	requestPay();
	    }
	});
	
	$("#place-change").on("click", function(){
		let url = "/toSearchDeli.deli";
		let name = "배송지 목록조회";
		let option = "width=800, height=700, left=700, top=300";
		window.open(url, name, option);
	});
	
	$("#place-enroll").on("click", function(){
		let url = "/toEnrollDeli.deli";
		let name = "배송지 등록";
		let option = "width=800, height=700, left=700, top=300";
		window.open(url, name, option);
	});
	
	$("input[name='destination']").change(function(){
		let seq_deli = $("input[name='destination']:checked").val();
		$("#seq_deli").val(seq_deli);
		let data = $("#payForm").serialize();
		
		if(seq_deli === "user"){
			$.ajax({
				url : "/toUserInfoSelect.deli"
				, type : "post"
				, data : data
				, dataType : "json"
				, success : function(result){
					if(result !== null){
						console.log(result);
						let user_name = result.user_name;
						let user_address ="";
						
						if(result.user_detailAddr != undefined){
							user_address = result.user_roadAddr + result.user_detailAddr;
							console.log("값이 있을 경우",result.user_detailAddr);
						}else{
							console.log("값이 없을 경우",result.user_detailAddr);
	 						user_address = result.user_roadAddr;
						}
						let user_phone = result.user_phone;
						let user_postCode = result.user_postCode;
						
						let phone1 = user_phone.substr(0, 3);
						let phone2 = user_phone.substr(3, 4);
						let phone3 = user_phone.substr(7, 4);
						$("#phone").val(user_phone);
						
						$("#order_name").text(user_name); 
						$("#order_address").text(user_address);
						$("#order_phone").text(phone1 +"-"+ phone2 + "-" +phone3);
						$("#order_postCode").val(user_postCode); 
					
					}else{
						alert("처리중에 오류가 발생했습니다.");
					}
				}, error : function(e){
					console.log(e);
				}
			})
			
		}else{
			$.ajax({
				url : "/toPay.deli"
				, type : "post"
				, data : data
				, dataType : "json"
				, success : function(result){
					if(result !== null){
						console.log(result);
						let deli_name = result.deli_name;
						let deli_address = result.deli_address;
						
						let deli_phone = result.deli_phone;
						$("#phone").val(deli_phone);
						let deli_postCode = result.deli_postCode;
						
						let phone1 = deli_phone.substr(0, 3);
						let phone2 = deli_phone.substr(3, 4);
						let phone3 = deli_phone.substr(7, 4);
					
						$("#order_name").text(deli_name); 
						$("#order_address").text(deli_address);
						$("#order_phone").text(phone1 +"-"+ phone2 + "-" +phone3);
						$("#order_postCode").val(deli_postCode); 
					
					}else{
						alert("처리중에 오류가 발생했습니다.");
					}
				}, error : function(e){
					console.log(e);
				}
			})
		}
	});
	
	$('#delivery-note').change(function() {
		let state = "";
	    state = $('#delivery-note option:selected').val();
	    $('#order_msg').val(state);
		console.log($('#order_msg').val());
	    if ( state == 99 ) {
	    	$('#order_msg').show();
	    	$('#order_msg').val("");
		} else {
			$('#order_msg').hide();
		}
	});
	 
 });
 
 function requestPay() {
	 var IMP = window.IMP; 
	 IMP.init("imp88176236"); 
	 let payName = $("#payName").val();
	 let payCnt = $("#payCnt").val();
	 let payAmount = $("#payAmount").val();
 	 let buyer_email = $("#user_email").val();
 	 let buyer_addr = $("#user_addr").val();
 	 
	 if(payCnt == 0){
		 payName = payName+"1개";
	 }else{
		 payName = payName+" 외 "+ payCnt+"개";
	 }
	 
	 IMP.request_pay({            
		 pg: 'inicis', 
		 pay_method: 'card', 
		 merchant_uid: 'kH2Team_' + new Date().getTime(),
		 name: payName,                      
		 amount: /* "${total_price}" */ "100",		           //  ${total_price}
		 buyer_email: buyer_email ,
         buyer_name:  "${loginSession.user_name}" ,
		 buyer_tel:  "${loginSession.user_phone}",
		 buyer_addr: buyer_addr ,
		 buyer_postcode: "${loginSession.user_postCode}" ,
		 m_redirect_url: 'http://localhost:8090/home.jsp' // 결제 완료 url로 써주기
	 }, function (rsp) {            
		 console.log(rsp);   
		 if (rsp.success) {  
			
			 if(${total_price} === rsp.paid_amount || rsp.status === "paid"){
				 
				 $.ajax({
						url : "/toPayRegist.pay"
						, type : "post"
						, traditional: true
						, data : {pay_price : ${total_price} , seq_cart : ${seq_cart} }
						, dataType : "json"
						, async : false 
						, success : function(pay_result){
							if(result ==="Success"){
								
							}else{
								alert("결제 금액과 장바구니의 금액이 다릅니다.");
							}
							
						}, error : function(e){
							console.log(e);
						}
					 })
					
					
					 let user_id = "${loginSession.user_id}";
					 let order_name = $.trim($("#order_name").text());
					 let order_phone = $.trim($("#order_phone").text()); 
					 let order_postCode = $("#order_postCode").val();
					 let order_address = $.trim($("#order_address").text()); 
					 let order_msg = $("#order_msg").val();
					
					 $.ajax({
						url : "/toOrderRegist.pay"
						, type : "post"
						, data : {user_id : user_id , order_name : order_name , order_phone, order_phone, seq_cart :${seq_cart}
								 ,order_postCode : order_postCode, order_address: order_address, order_msg : order_msg}
						, traditional: true
						, dataType : "json"
						, success : function(result){
							if(result ==="Success"){
								
								
							}else{
								alert("처리중 오류가 발생했습니다.");
							}
							
						}, error : function(e){
							console.log(e);
						}
					 })
					 
					  var msg = '결제가 성공적으로 완료되었습니다.';                
		              msg += '고유ID : ' + rsp.imp_uid;                
		              msg += '상점 거래ID : ' + rsp.merchant_uid;                
		              msg += '결제 금액 : ' + rsp.paid_amount;                
		              msg += '카드 승인번호: ' + rsp.apply_num; 
		              alert(msg); 
		              
		              location.href = "/toMypage.mem";
					
			 }
		 } else {                
			 var msg = '결제에 실패하였습니다.';
			 msg += '에러내용 : ' + rsp.error_msg;
			 alert(msg);
		 }  
	 });//IMP.request_pay
 }
 
</script>
</head>
<body>
<c:set var="user_phone" value="${loginSession.user_phone}"/>
  <div class="container MainBox" id="header">
    <!-- 네비바 -->
    <nav class="navbar navbar-light bg-light fixed">
      <div class="container navbar-head">
        <a class="navbar-brand" href="#!" id="logo">로고</a>
        <div class="col-md-1 navbar-anchor"><a href="/">COMPANY</a></div>

        <div class="dropdown ">
          <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false"
            style="font-weight: bold;">
            CLOTHES
          </button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
            <li><a class="dropdown-item" href="#">Top</a></li>
            <li><a class="dropdown-item" href="#">Bottom</a></li>
            <li><a class="dropdown-item" href="#">Accessory</a></li>
          </ul>
        </div>

        <div class="col-md-1 navbar-anchor"><a href="/">매장찾기</a></div>
        <div class="col-md-1 navbar-anchor"><a href="/">고객센터</a></div>
        <!-- 네비바 검색창 -->
        <div class="col-md-4 navbar-anchor" id="navbar-search">
          <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <div class="input-group">
              <button class="btn btn-link" style="border: 1px solid lightgrey;" id="btnSearch" type="button"><i
                  id="searchIcon" class="fas fa-search"></i></button>
              <input class="form-control" type="text" aria-describedby="btnNavbarSearch" />
            </div>
          </form>
          </button>
        </div>
        <div class="col-md-2 navbar-anchor" id="userIcon">
          <a href=""><i class="fa-solid fa-cart-plus"></i></a>
          <a href=""><i class="fa-solid fa-user"></i></a>
        </div>
      </div>
    </nav>
  </div>

  <div class="container" style="border: 1px solid lightgray;">
    <div class="row">
      <div class="col header-comment">
        <h2>Order / Payment</h2>
      </div>
    </div>
    <div class="row">
      <div class="col mt-4 ms-2">
        <h3 style="display: inline-block;">Recipient Info</h3>
        <span class="comment">수령자 정보</span>
      </div>
    </div>
<form id ="payForm" action="" method="post">
    <table class="table userInfo mt-3">
      <tbody>
        <tr>
            <td class="col-3">배송지 선택</td>
          <td class="col-10">
              <input type="radio" id="destination" name="destination" value="user" checked>
                <label for="destination" class="destination">${loginSession.user_name}님 배송지</label>
                
              <c:forEach items="${deli_list}" var="list">
           	  	<input type="radio" id="${list.seq_deli}"  name="destination" value="${list.seq_deli}">
                <label for="${list.seq_deli}" class="destination">${list.deli_place}</label>
              </c:forEach> 
              
              	<button type="button" id="place-change">배송지변경</button>
              	<button type="button" id="place-enroll">배송지등록</button>
            </td> 
        </tr>
        <tr>
          <td class="col-2">수령인</td>
          <td id="order_name" name="order_name">${loginSession.user_name}</td>
        </tr>
        <tr>
            <td class="col-2">
            	휴대전화
            </td>
          <td id="order_phone" name="order_phone">
        		${fn:substring(user_phone,0,3)}-${fn:substring(user_phone,3,7)}-${fn:substring(user_phone,7,11)}
          </td>
        </tr>
            <td class="col-2">배송지 주소</td>
          	<td id="order_address" name="order_address">
          		${loginSession.user_roadAddr}${loginSession.user_detailAddr}
         	</td>
         	<input type="hidden" name="order_postCode"  id="order_postCode" value="${loginSession.user_postCode}"/>
        <tr>
            <td class="col-2">배송 메모</td>
            <td>
                <select name="delivery-note" id="delivery-note" style="font-size: 0.8rem; height: 30px;">
                    <option value=''>배송 시 요청사항을 선택해주세요</option>
                    <option value='부재 시 경비실에 맡겨주세요.'>부재 시 경비실에 맡겨주세요</option>
                    <option value='부재 시 택배함에 넣어주세요.'>부재 시 택배함에 넣어주세요</option>
                    <option value='부재 시 집 앞에 놔주세요.'>부재 시 집 앞에 놔주세요</option>
                    <option value='배송 전 연락 부탁드립니다.'>배송 전 연락 부탁드립니다.</option>
                    <option value='파손의 위험이 있습니다. 주의 부탁드립니다.'>파손의 위험이 있습니다. 주의 부탁드립니다.</option>
                    <option value='99'>직접입력</option>
                  </select>
                  <input type="text" id="order_msg" name="order_msg" class="form-control"  style="display: none; margin-top: 2px; width: 50%; height: 30px; "/>
            </td>
        </tr>
        <tr>
      </tbody>
    </table>

    <div class="row section">
        <div class="col mt-4 ms-2">
          <h3 style="display: inline-block;">Product Info</h3>
          <span class="comment">상품 정보</span>
        </div>
      </div>
      <table class="table productInfo mt-4">
        <thead>
          <tr>
            <th scope="col" class="col-7" colspan="2">상품 정보</th>
            <th scope="col">수량</th>
            <th scope="col">배송비</th>
            <th scope="col">주문금액</th>
          </tr>
        </thead>
        <tbody>
       <c:forEach items="${pay_list}" var="payList"> 
       <c:set var= "amount" value="${amount + payList.cart_quantity *payList.product_price}"/>
       <c:set var= "quantity" value="${quantity + payList.cart_quantity}"/>
       <c:set var= "resultPrice" value="${payList.product_price * payList.cart_quantity}"/>
       <c:set var= "name" value="${name + 1}"/>
          <tr>
            <td class="col-1"><img class="productImg" src="${payList.image_path}" alt=""></td>
            <td>
                <div class="row">
                    <div class="col-12">
                        <p class="P-Name">${payList.product_name}</p>
                    </div>
                    <div class="col">
                        <input type="text" class="P-Option disabled"
                                          value="옵션 : SIZE / FREE">
                    </div>
                </div>
            </td>
            <td>${payList.cart_quantity}개</td>
            <td>무료</td>
            <td>${resultPrice}</td>
          </tr>
       </c:forEach> 
          <tr class="total">
            <td></td>
            <td class="total">Total</td>
            <td class="total" id="orderTotalCnt" name="orderTotalCnt" >
           		<c:out value="${quantity}"/>개 
            </td>
            <td class="total">무료</td>
            <td class="total">
            	<c:out value="${amount}"/>원
			</td>
          </tr>
        </tbody>
      </table>
      <div class="row mt-5">
        <div class="col">
          <ul class="guideline">
            <li>하이프랜드는 <span>전 지역, 전 상품 무료 배송입니다.</span></li>
            <li>하이프랜드의 모든 상품은 해외배송 불가능합니다.</li>
            <li>하이프랜드에 모든 주문건은 무통장 입금이 불가능합니다.</li>
            <li>낮은 확률로 상품이 품절일 가능성이 있습니다. 이에 품절 시 빠르게 환불 처리해드립니다.</li>
            <li>환불 받으신 날짜 기준으로 3~5일(주말 제외) 후 결제대행사에서 직접 고객님의 계좌로 환불 처리됩니다.</li>
            <li>모든 상품은 환불 시 택배비가 발생합니다.</li>
          </ul>
        </div>
      </div>
      
    <div class="row">
      <div class="col mt-5 mb-5" style="text-align: center;">
        <button type="button" id="btnPay" class="btn btn-danger btnOrder" >결제하기</button>
        <button type="button" class="btn btn-dark btnOrder">취소하기</button>
      </div>
    </div>
  </div>
  </div>
 
<input type="hidden" id="user_addr" name="user_addr" value="${loginSession.user_roadAddr}+${loginSession.user_detailAddr}" />
<input type="hidden" id="user_email" name="user_email" value="${loginSession.user_email}" />
<input type="hidden" id="payName" value="${pay_list[0].product_name}"/>
<input type="hidden" id="payCnt" name="payCnt" value=<c:out value="${name-1}"/> />
<input type="hidden" id="phone" name="phone"/>
<input type="hidden" id="seq_deli" name="seq_deli" />
</form>
  <!-- Footer-->
  <footer class="footer bg-light mt-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 h-100 text-center text-lg-start my-auto">
          <ul class="list-inline mb-2">
            <li class="list-inline-item"><a href="#!">COMPANY</a></li>
            <li class="list-inline-item">⋅</li>
            <li class="list-inline-item"><a href="#!">매장찾기</a></li>
            <li class="list-inline-item">⋅</li>
            <li class="list-inline-item"><a href="#!">고객센터</a></li>
            <li class="list-inline-item">⋅</li>
            <li class="list-inline-item"><a href="#!" style="color: red; font-weight: bold;">개인정보처리방침</a></li>

          </ul>
          <p class="text-muted small mb-4 mb-lg-0">하잇프랜드(주) 대표 : 이호준 | 개인정보관리책임자 : 김영완 | 사업자등록번호 : 22-02-22</p>
          <p class="text-muted small mb-4 mb-lg-0">주소 : 서울특별시 영등포구 선유동2로 57 이레빌딩</p>
          <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2022. All Rights Reserved.</p>
        </div>
        <div class="col-lg-6 h-100 text-center text-lg-end my-auto">
          <ul class="list-inline mb-0">
            <li class="list-inline-item me-4">
              <a href="#!"><i class="bi-facebook fs-3"></i></a>
            </li>
            <li class="list-inline-item me-4">
              <a href="#!"><i class="bi-twitter fs-3"></i></a>
            </li>
            <li class="list-inline-item">
              <a href="#!"><i class="bi-instagram fs-3"></i></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>
</body>
</html>