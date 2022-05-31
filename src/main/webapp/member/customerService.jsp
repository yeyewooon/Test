<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
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
</head>
<style>
/*네비바 속성*/
i{
    margin: 5px;
}
.navbar-light{
    width: 100%;
    position: fixed;
    top: 0;
    z-index: 1;
    left: 0%;
}
.navbar-anchor a{
    text-decoration: none;
    color: black;
    font-weight: bold;
}
#userIcon {
    text-align: right;
    font-size: 25px;
    padding: 5px;
}
#navbar-search{
    text-align: right;
}
#searchIcon{
    color: lightgrey;
}
#logImg{
    width: 80px;
    height: 21px;
}
 /* 네비바 드롭다운 */
.dropdown-toggle:hover{color: #83bf7b; border-color: aliceblue;}
.dropdown:hover .dropdown-menu {
display: block;
margin-top: 0;
font-weight: bold;
}


.dropdown-toggle:hover{color: #83bf7b; border-color: aliceblue;}
.dropdown:hover .dropdown-menu {
display: block;
margin-top: 0;
font-weight: bold;
}


/*컨텐츠 영역*/

.no-lineBox{
    text-align: center;
    margin-top: 150px;
    border: none;
    width: 70%;
    height: auto;
   
}
.no-lineBox p{ 
    font-size: 25px;
    font-weight: bold;
}

.no-lineBox2{
    text-align: center;
    margin-top: 50px;
    border: none;
    width: 70%;
    height: auto;  
}
.no-lineBox2 div{
    text-align: left;
    border: none;
    width: 70%;
    height: auto;  
}

.no-lineBox2 p{ 
    font-size: 20px;
    font-weight: bold;
}


.contentBox{
    text-align: center;
    margin-top: 30px;
    border: 3px solid lightgray;
    width: 70%;
    height: auto;
   
}
.contentBox img{
    margin: 10px;
    width: 100px;
    height: 100px;
    
}

.hrefBox{
    text-align: left;
    margin-top: 30px;
    border: 3px solid lightgray;
    width: 70%;
    height: auto;
    cursor: pointer;
    margin-bottom: 70px;
   
}

.hrefBox h6{
    font-size: 30px;
    margin: 40px;
    
}
.hrefBox p{ 
    margin: 10px;        
}

/*아코디언*/
.accordion-body{
    margin: 0px;
    padding: 0px;
}
.accordion-button{
    border: none;
}
.accordion-button:not(.collapsed) { color: black;
    background-color: white;
    box-shadow: none ;
}

.accordion {--bs-accordion-border-radius: 0;}
.focus{
    color: red;
    font-weight: bold;
    margin: 10px;
}
.accordion span{ margin: 3px; margin-left:20px;}



.greetBox{
    margin: 20px;
    width: 90%;
    border: 1px solid lightgray;
    height: 100px;
    text-align: center; 
}
.greetBox p{
    margin: 25px;
    font-size: 21px;
    font-weight: bold;}    

#contentBox2 p{
    font-size: 12px;
}



/*풋터 영역*/

.footerBox{
    height: 200px;

}
footer.footer {
     padding-top: 4rem;
     padding-bottom: 4rem;
}
.footer a{
    text-decoration: none;
    color: black;
    font-weight: 40px;
    font-weight: bold;
}

</style>
<body>
  <div class="container MainBox">
        <!-- 네비바 -->
        <nav class="navbar navbar-light bg-light fixed">
            <div class="container">
                <a class="navbar-brand" href="/toPay.pay" id="logo">로고</a>
                <div class="col-md-1  navbar-anchor"><a href="/">COMPANY</a></div>
                <div class="dropdown ">
                    <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: bold;">
                      CLOTHES
                    </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                      <li><a class="dropdown-item" href="#">Top</a></li>
                      <li><a class="dropdown-item" href="#">Bottom</a></li>
                      <li><a class="dropdown-item" href="#">Accessory</a></li>
                    </ul>
                  </div>
                <div class="col-md-1 navbar-anchor"><a href="/">매장찾기</a></div>
                <div class="col-md-1 navbar-anchor"><a href="/toCs.mem">고객센터</a></div>
            <!-- 네비바 검색창 -->
                <div class="col-md-4 navbar-anchor" id="navbar-search">
                    <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                        <div class="input-group">
                            <button class="btn btn-link" style="border: 1px solid lightgrey;" id="btnSearch" type="button"><i id="searchIcon" class="fas fa-search"></i></button>
                            <input class="form-control" type="text" aria-describedby="btnNavbarSearch" />
                        </div>
                    </form>
                </button></div>
                <div class="col-md-2 navbar-anchor" id="userIcon">
                    <c:choose>
						<c:when test="${not empty loginSession}"><!-- 로그인했으면 -->
							<a href="/toCart.mem"><i class="fa-solid fa-cart-plus"></i></a>
								<div class="dropdown" style="display: inline;">
									<i class="fa-solid fa-user" data-bs-toggle="dropdown" aria-expanded="false" ></i>
					                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					                      <li><a class="dropdown-item" href="/toMypage.mem">마이페이지</a></li>
					                      <li><a class="dropdown-item" href="/logoutProc.mem">로그아웃</a></li>	                     
					                    </ul>
					             </div>
                  			<span style="font-size: 10px;">${loginSession.user_id}님</span>
						</c:when>
						
						<c:otherwise><!-- 로그인 안하면 -->
							<i id="loginIcon" class="fa-solid fa-cart-plus"></i></a>
							<i id="loginIcon2" class="fa-solid fa-user"></i>
							<script>
							document.getElementById("loginIcon2").onclick = function(){
								let url = "/toLogin.mem";
								let name = "로그인";
								let option = "width=500, height=500, left=700, top=300";
								window.open(url, name, option);
								}
							document.getElementById("loginIcon").onclick = function(){
								let url = "/toLogin.mem";
								let name = "로그인";
								let option = "width=500, height=500, left=700, top=300";
								window.open(url, name, option);
								}
							</script>
						</c:otherwise>
					</c:choose>
                </div>
            </div>
        </nav>
    </div>
<!-- 바디-->
<header class="masthead w-100" >
    <div class="container no-lineBox justify-content align-items" >
        <div style="margin-top:100px; text-align: left;">
        <div>
            <p>하잇프랜드 고객센터</p>
        </div>
    </div>
</div>
    <div class="container contentBox justify-content align-items" >
        <div class="row">
            <div class="col-12 col-sm-3">
                <div>
                    <img class="d-inline-block" src="images/Logo.png" alt="">
                </div>
            </div>
            <div class="col-12 col-sm-9">
                <div class="greetBox">
                    <P>고객센터 인사말</P>
                </div>
            </div>
        </div>
    </div>

    <div class="container no-lineBox2 justify-content align-items" >
        <div style="margin-top:0px; text-align: left; ">
         <div>
             <p>대표적인 Q&A</p>
         </div>
     </div>
 </div>

 <div class="container hrefBox justify-content align-items">
     <div class="row" style="border: none;">
         <div class="col-12" style="padding: 0px; ">               
             <div class="accordion" id="FAQ" style="border-radius: 0px;" >
                 <!--첫줄 시작-->
                 <div class="accordion-item">                                    
                     <h2 class="accordion-header" id="FAQToggle">
                       <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFAQ" aria-expanded="true" aria-controls="collapseOne">
                           <h6><Strong>대표적인 Q&A</Strong></h6>
                       </button>
                     </h2>
                     <div id="collapseFAQ" class="accordion-collapse collapse" aria-labelledby="FAQToggle" data-bs-parent="#accordionExample">
                       <div class="accordion-body">
                           
                 <div class="accordion-item">                                    
                     <h2 class="accordion-header" id="One">
                       <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                           <Strong>Q. 온라인스토어 교환/반품신청은 어떻게 하나요?</Strong>
                       </button>
                     </h2>
                     <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="One" data-bs-parent="#accordionExample">
                       <div class="accordion-body">
                       <span>온라인스토어 교환/반품 가능기간은, 상품 수령일(배달완료일) 포함하여 7일 이내 가능합니다.<br></span>
                       <span>전산 접수를 하지않은 상태로 상품만 보내주시는 경우, 교환/환불처리가 지연될 수 있으니, 주의 부탁드리겠습니다.</span>
                           <img src="images/refund.JPG" alt="">
                       </div>
                     </div>
                   </div>
                   <!---->
                   <div class="accordion-item">
                     <h2 class="accordion-header" id="Two">
                       <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                           <Strong>Q. 오프라인 매장 교환 환불 규정은 어떻게 되나요?</Strong>
                       </button>
                     </h2>
                     <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="Two" data-bs-parent="#accordionExample">
                       <div class="accordion-body">
                           <div ><span> 오프라인 매장에서 구매하신
                               상품의 교환, 환불의 경우에는 아래의 사항을 지참하시어 방문하시면 가능합니다.<br>
                               </span>
                               <span>* 영수증 분실 시,  구입일로부터 30일 이내
                               구입하신 매장 혹은 고객센터로 문의하시어,</span>
                               <P class="focus d-inline-block">①결제 일시 ②결제 금액 ③구매 상품 전달</P>해 주시면 영수증 재출력 가능합니다.</span></div>
                                  
                           <div><p class="focus">[오프라인 매장 구매건 교환시]</p>
                              <span>
                               ①구입하신날 포함하여, 30일 이내 </span><br>
                              <span>②가격택 제거되지 않은 재판매가 가능한 상태의 상품</span><br>
                              <span> ③영수증 구입하신 매장 이외 다른 매장에서도 교환 가능합니다</span><br><br>
                               
                              <span>*동일 상품의 색상, 사이즈 교환 가능</span><br>
                              <span> *동일 금액의 다른상품으로의 교환 가능</span><br>
                              <span>*높은 금액으로의 차액교환(1회에 한하여 가능하며, 환불 불가)</span><br>
                               
                               <p class="focus">[오프라인 매장 구매건 반품시]</p>   
                               <span>①구입하신날 포함하여, 30일 이내 </span><br>
                               <span>②가격택 제거되지 않은 재판매가 가능한 상태의 상품</span><br>
                               <span> ③영수증</span><br>
                               <span>④구매당시 결제수단 필요</span><br>
                               
                               <span>구입하신 매장에서만 가능합니다.
                               구입당시 결제하신 결제수단 지참하시어 방문 부탁드리겠습니다.</span><br>
                               <span></span>
                           </div>                                    
                       </div>
                     </div>
                   </div>
                   <!---->
                   <div class="accordion-item">
                     <h2 class="accordion-header" id="Three">
                       <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                           <Strong>Q. 주문 확인이 안돼요</Strong>
                       </button>
                     </h2>
                     <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="Three" data-bs-parent="#accordionExample">
                       <div class="accordion-body">
                           <p class="focus">주문하지 않은 다른 아이디로 주문하셨을 수 있습니다.</p>
                           <span>- 현재 로그인하여 조회중 이신 아이디와, 주문하신 아이디가 다른 경우 이실 수 있습니다.<br></span>
                           <span>- 정회원 혹은 소셜로그인 하시어 확인 부탁드리겠습니다.</span>
                       </div>
                     </div>
                   </div>
                   <!---->
                   <div class="accordion-item">
                       <h2 class="accordion-header" id="Four">
                         <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseThree">
                           <Strong>Q. 배송 기간은 얼마나 걸리나요?</Strong>
                         </button>
                       </h2>
                       <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="Four" data-bs-parent="#accordionExample">
                         <div class="accordion-body">
                           <p class="focus">최근 일부 지역의 기사님 코로나 확진으로 인하여,</p>
                             <span>평소보다 3~7일 배송이 지연되는 경우가 발생되고 있습니다.<br>
                             <span>해당 지역은 순차적인 배송을 최대한 진행하고 있으며,</span><br>
                             <span>불편을 최소화할 수 있도록 최선을 다하겠습니다.</span><br>
                             <span>고객님의 깊은 양해를 부탁드리겠습니다.</span><br>
                           	 <span></span>
                         </div>
                       </div>
                     </div>
                     <div class="accordion-item">
                       <h2 class="accordion-header" id="Five">
                         <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseThree">
                           <Strong>Q. 반품/취소 시 환불은 얼마나 걸리나요?</Strong>
                         </button>
                       </h2>
                       <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="Four" data-bs-parent="#accordionExample">
                         <div class="accordion-body">                                           
                           
                              <span> 온라인스토어 구매한 상품의 환불 일정은 아래와 같이 진행 됩니다.</span><br>
                              <span> 상품이 수거되어 물류센터로 입고 시,</span><br>
                              <span> 영업일 기준 1~3일의 검수과정을 거쳐 환불 처리됩니다.</span><br>
                        	  <span> </span><br>
                         </div>
                       </div>
                     </div>
                       </div>
                     </div>
                   </div>

               </div>
                <!--끝-->                    
         </div>
     </div>
     <div class="row">
         <div class="col">

         </div>
     </div>
 </div>
<c:choose>
<c:when test="${not empty loginSession}">
<div class="container hrefBox justify-content align-items" style="margin-bottom: 50px" onclick="location.href='/toWrite.mem'">
     <div class="row">
         <div class="col-12">                        
                 <h6 style="padding-top: 16px; padding-bottom: 16px;"><strong>1 : 1 문의 작성하기</strong></h6>                        
         </div>
     </div>
 </div>
</c:when>
<c:otherwise>
<div id="loginIcon3" class="container hrefBox justify-content align-items" style="margin-bottom: 50px" onclick="location.href='/toLoginProc.mem'">
     <div class="row">
         <div class="col-12">                        
                 <h6 style="padding-top: 16px; padding-bottom: 16px;"><strong>1 : 1 문의 작성하기</strong></h6>                        
         </div>
     </div>
 </div>
 <script>
 document.getElementById("loginIcon3").onclick = function(){
		let url = "/toLogin.mem";
		let name = "로그인";
		let option = "width=500, height=500, left=700, top=300";
		window.open(url, name, option);
		}
 </script>
</c:otherwise>
</c:choose>
 
 </header>
 
<!-- Footer-->
<footer class="footer bg-light">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 h-100 text-center text-lg-start my-auto">
                <ul class="list-inline mb-2">
                    <li class="list-inline-item"><a href="#!">COMPANY</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="#!">매장찾기</a></li>
                    <li class="list-inline-item">⋅</li>
                    <li class="list-inline-item"><a href="/toCs.mem">고객센터</a></li>
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