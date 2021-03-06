<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://kit.fontawesome.com/f9358a6ceb.js"
   crossorigin="anonymous"></script>
<link
   href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
   rel="stylesheet"
   integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
   crossorigin="anonymous" />
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
   integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
   crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
   integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
   crossorigin="anonymous"></script>
<script
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<style>
* {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
   font-family: "Poppins", sans-serif;
}

/* navbar & maincontainer */
.adminContainer {
   height: 100vh;
   background-color: black;
}

.adminNavbar {
   margin: 0;
   background-color: #212e41;
   color: #fff;
   height: 8%;
}

.adminNavbar-left {
   font-size: 26px;
}

.adminNavbar-left span {
   cursor: pointer;
}

.adminMain {
   background-color: blue;
}

.adminContent {
   margin: 0;
   height: 92%;
}

.adminSidebarContainer {
   background-color: #212e41;
   color: #fff;
}

ul {
   list-style: none;
}

.adminIcon {
   margin-right: 30px;
}

.adminIconSpan {
   margin-right: 12px;
}

.adminIconLogout {
   margin-left: 26px;
   cursor: pointer;
}

/* sidebar navlink */
.adminSidebar {
   height: 92%;
   background: #fff;
   transition: all 0.5s ease;
}

.adminSidebar .nav-links li a {
   display: flex;
   align-items: center;
   text-decoration: none;
}

.adminSidebarContainer {
   padding: 0;
}

.adminMainContainer {
   padding: 0;
}

.nav-linksContainer {
   margin-top: 25px;
   transition: 0.5s ease;
}

.nav-linksContainer:hover {
   background-color: #1d1b31;
}

.nav-links {
   font-size: 16px;
   padding-left: 0;
}

.icon-link {
   color: #fff;
}

.icon-link .icon-link-left {
   color: #fff;
}

.icon-link .icon-link-left i {
   left: 0;
   color: #fff;
}

.icon-link .icon-link-left span {
   color: #fff;
}

.sub-menu {
   margin-left: 16%;
   list-style: none;
   display: none;
   text-decoration-line: none;
}

.sub-menu li {
   margin: 10px 0px;
}

.sub-menu li a {
   font-size: 14px;
   color: #fff;
   text-decoration-line: none;
}

.sub-menu li:hover {
   border-left: 3px solid #fff;
}

.firstTable {
   background-color: #fff;
   margin-bottom: 0;
}

/* ?????? ?????????  */
.firstTableTitle {
   font-size: 24px;
}

.shipmentModifyTable {
   border: 0;
}

.MemberText, .searchMemberText {
   font-size: 18px;
   margin-left: 9px;
   margin-bottom: 0;
   border: 40px;
}

.searchMemberInput {
   margin-left: 9px;
}

.MemberContainer {
   height: 340px;
   overflow: auto;
}

tbody tr {
   transition: 0.7s ease;
}

/* table hover??? color ?????? */
#tableBox:hover tbody tr:hover td {
   background-color: #7f7f7f;
   color: #fff;
}

/* ???????????? cursor pointer */
td span {
   cursor: pointer;
}
</style>


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
                  class="fa-solid fa-user-check"></i> <span class="adminIconLogout">????????????</span>
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
                     <span class="link_name cartManagement">?????? ??????</span>
                  </div>
                  <div class="icon-link-right col-md-3">
                     <i class="fa-solid fa-caret-down arrow arrow1"></i>
                  </div>
               </div>
               <ul class="sub-menu sub-menu-first">
                  <li><a href="/admin/product/productInsert.jsp">?????? ??????</a></li>
                  <li><a href="/modify.pc?curPage=1">?????? ??????</a></li>
               </ul>
            </div>
            <div class="nav-linksContainer nav-linksContainer2">
               <div class="icon-link row d-flex align-items-center">
                  <div class="icon-link-left col-md-3 d-flex justify-content-end">
                     <i class="fa-solid fa-user-group"></i>
                  </div>
                  <div class="icon-link-center col-md-6">
                     <span class="link_name cartManagement">?????? ??????</span>
                  </div>
                  <div class="icon-link-right col-md-3">
                     <i class="fa-solid fa-caret-down arrow arrow2"></i>
                  </div>
               </div>
               <ul class="sub-menu sub-menu-second">
                  <li><a href="/select.amem?curPage=1">?????? ??????</a></li>
               </ul>
            </div>
            <div class="nav-linksContainer nav-linksContainer3">
               <div class="icon-link row d-flex align-items-center">
                  <div class="icon-link-left col-md-3 d-flex justify-content-end">
                     <i class="fa-solid fa-truck"></i>
                  </div>
                  <div class="icon-link-center col-md-6">
                     <span class="link_name cartManagement">?????? ??????</span>
                  </div>
                  <div class="icon-link-right col-md-3">
                     <i class="fa-solid fa-caret-down arrow arrow3"></i>
                  </div>
               </div>
               <ul class="sub-menu sub-menu-third">
                  <li><a href="/shipManage.sh?curPage=1">?????? ?????? ??????</a></li>
               </ul>
            </div>
            <div class="nav-linksContainer nav-linksContainer4">
               <div class="icon-link row d-flex align-items-center">
                  <div class="icon-link-left col-md-3 d-flex justify-content-end">
                     <i class="fa-solid fa-clipboard-list"></i>
                  </div>
                  <div class="icon-link-center col-md-6">
                     <span class="link_name cartManagement">????????? ??????</span>
                  </div>
                  <div class="icon-link-right col-md-3">
                     <i class="fa-solid fa-caret-down arrow arrow4"></i>
                  </div>
               </div>
               <ul class="sub-menu sub-menu-fourth">
                  <li><a href="/boardQna.qna?curPage=1">?????? ??????</a></li>
                  <li><a href="/review.rv?curPage=1">?????? ??????</a></li>
               </ul>
            </div>
         </div>
         <div class="col-md-10 adminMainContainer">
            <form action="shipmentModifyProc.sh" method="post"
               class="shipmentModifyForm" id="shipmentModifyForm">
               <div class="table shipmentModifyTable">
                  <div class="modifyContainer container w-100">
                     <h3 class="mt-3 text-center">?????? ?????? ??????</h3>

                     <!-- ?????? ?????? ??????  -->
                     <div class="row mt-1">
                        <div class="form-group col-md-6 mt-2">
                           <label for="inputEmail4">?????? ??????</label> <input type="text"
                              class="form-control mt-2" id="inputEmail4"
                              value="${list[0].getSeq_order()}" readonly name="seq_order" />
                        </div>
                        <div class="form-group col-md-6 mt-2">
                           <label for="inputPassword4">?????? id</label> <input type="text"
                              class="form-control mt-2" id="inputPassword4"
                              value="${list[0].getUser_id()}" readonly name="user_id" />
                        </div>
                     </div>
                     <div class="row">
                        <div class="form-group col-md-6 mt-2">
                           <label for="inputEmail4">????????? ??????</label> <input type="text"
                              class="form-control mt-2" id="inputEmail4"
                              value="${list[0].getOrder_name()}" name="order_name" />
                        </div>
                        <div class="form-group col-md-6 mt-2">
                           <label for="inputEmail4">????????? ??????</label>
                           <div class="row mt-2">
                              <div class="col">
                                 <select class="form-select"
                                    aria-label="Default select example" id="phone1"
                                    name="phone1">
                                    <option selected>010</option>
                                    <option value="012">012</option>
                                    <option value="011">011</option>
                                    <option value="016">016</option>
                                 </select>
                              </div>
                              <div class="col">
                                 <input type="text" class="form-control" id="phone2"
                                    name="phone2" placeholder="????????????" maxlength="4" />
                              </div>
                              <div class="col">
                                 <input type="text" class="form-control" id="phone3"
                                    name="phone3" placeholder="????????????" maxlength="4" />
                              </div>
                           </div>
                        </div>
                     </div>

                     <!-- ?????? ????????? -->
                     <div class="row">
                        <div class="form-group col-md-12 mt-2">
                           <label for="inputEmail4"><strong>?????? ??????</strong></label>
                           <table class="table table-primary mt-2">
                              <thead>
                                 <tr>
                                    <th scope="col" class="text-center">?????????</th>
                                    <th scope="col" class="text-center">??????</th>
                                    <th scope="col" class="text-center">?????? ??????</th>
                                    <th scope="col" class="text-center">??? ??????</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:choose>
                                    <c:when test="${buyList.size() == 0}">
                                       <tr>
                                          <td colspan=4 class="text-center">????????? ????????? ????????????.</td>
                                       </tr>
                                    </c:when>
                                    <c:otherwise>
                                       <c:forEach items="${buyList}" var="dto">
                                          <tr>
                                             <td class="text-center">${dto.buy_name}</td>
                                             <td class="text-center">${dto.buy_qty}???</td>
                                             <td class="text-center">${dto.buy_price}???</td>
                                             <td class="text-center">${dto.buy_qty * dto.buy_price}???</td>
                                          </tr>
                                       </c:forEach>
                                    </c:otherwise>
                                 </c:choose>
                              </tbody>
                           </table>
                        </div>
                     </div>
                     <!-- ?????? ????????? -->
                     <div class="row">
                        <div class="form-group col-md-12 mt-2">
                           <label for="inputEmail4">?????? ?????????</label> <input type="text"
                              class="form-control mt-2" id="inputEmail4"
                              value="${list[0].getOrder_msg()}" readonly />
                        </div>
                     </div>
                     <div class="row">
                        <div class="form-group col-md-12 mt-2">
                           <label for="inputEmail4">????????? ?????? ??????</label> <input type="text"
                              class="form-control mt-2" id="inputEmail4"
                              value="${list[0].getOrder_address()}" readonly />
                        </div>
                     </div>



                     <!-- ?????? ?????? -->
                     <div class="row mt-2">
                        <div class="col-md-6">
                           <input type="text" class="form-control" id="postCode"
                              name="postCode" placeholder="????????????" />
                        </div>
                        <div class="col-md-6">
                           <button type="button" class="btn btn btn-outline-success w-100"
                              id="btnPostCode">????????? ??????</button>
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-6">
                           <input type="text" class="form-control" id="roadAddr"
                              name="roadAddr" placeholder="???????????????" />
                        </div>
                        <div class="col-md-6">
                           <input type="text" class="form-control" id="detailAddr"
                              name="detailAddr" placeholder="????????????" />
                        </div>
                     </div>
                     <div class="row">
                        <div class="col-md-6">
                           <label>?????? ??????</label>
                           <c:if test="${list[0].getOrder_status() eq '?????? ?????????'}">
                              <select class="form-select mt-2"
                                 aria-label="Default select example" name="order_status">
                                 <option value="?????? ?????????">?????? ?????????</option>
                                 <option value="?????? ??????">?????? ??????</option>
                                 <option value="?????? ??????">?????? ??????</option>
                              </select>
                           </c:if>
                           <c:if test="${list[0].getOrder_status() eq '?????? ??????'}">
                              <select class="form-select mt-2"
                                 aria-label="Default select example" name="order_status">
                                 <option value="?????? ??????">?????? ??????</option>
                                 <option value="?????? ?????????">?????? ?????????</option>
                                 <option value="?????? ??????">?????? ??????</option>
                              </select>
                           </c:if>
                           <c:if test="${list[0].getOrder_status() eq '?????? ??????'}">
                              <select class="form-select mt-2"
                                 aria-label="Default select example" name="order_status">
                                 <option value="?????? ??????">?????? ??????</option>
                                 <option value="?????? ?????????">?????? ?????????</option>
                                 <option value="?????? ??????">?????? ??????</option>
                              </select>
                           </c:if>
                        </div>
                        
                        <!-- ????????????, ?????? ?????? -->
                        <div class="col-md-6">
                           <label></label>
                           <div class="row mt-2">
                              <div class="col d-flex justify-content-end">
                                 <button type="button" class="btn btn-secondary" id="backBtn">??????
                                    ??????</button>
                              </div>
                              <div class="col">
                                 <button type="button" class="btn btn-primary" id="submitBtn">??????
                                    ??????</button>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
         </div>
      </div>
      </form>
   </div>
   <script>
   
   let order_status = "${list[0].getOrder_status()}";
   
   // ????????? ?????? ????????????(????????? ?????????)
   
   let phone = "${list[0].getOrder_phone()}";
      
   let phone1 = phone.slice(0,3);
   let phone2 = phone.slice(3,7);
   let phone3 = phone.slice(7);
   console.log(phone1);
   console.log(phone2);
   console.log(phone3);
   
   $("#phone1").val(phone1).prop("selected", true);
   $("#phone2").val(phone2);
   $("#phone3").val(phone3);
   
   
   // ????????? ????????? ?????????
   $(".arrow1").on("click", function () {
        $(".sub-menu-first").toggle("4000ms");
      });

      $(".arrow2").on("click", function () {
        $(".sub-menu-second").toggle("4000ms");
      });

      $(".arrow3").on("click", function () {
        $(".sub-menu-third").toggle("4000ms");
      });

      $(".arrow4").on("click", function () {
        $(".sub-menu-fourth").toggle("4000ms");
      });
      
      
      // ???????????? ??????
      $("#backBtn").on("click",function(){
         location.href = "/shipManage.sh?curPage=1";
      })

      // ???????????? ??????
      $("#submitBtn").on("click", function() {
         if ($("#postCode").val() === "") {
            alert("??????????????? ????????????");
            return;
         } else if ($("#roadAddr").val() === "") {
            alert("?????????????????? ????????????");
            return;
         } else if ($("#detailAddr").val() === "") {
            let detailAddrCheck = confirm("?????? ????????? ???????????? ???????????????.?????????????????????????");
            if(detailAddrCheck === true) {
               $(".shipmentModifyForm").submit();
            }else {
               return;
            }
         }
         $(".shipmentModifyForm").submit();
      })

      // ???????????? api ?????? ??????
      let btnPostCode = document.getElementById("btnPostCode");
      btnPostCode.onclick = executePostcode;

      function executePostcode() {
         new daum.Postcode(
               {
                  oncomplete : function(data) {

                     var roadAddr = data.roadAddress; // ????????? ?????? ??????
                     var extraRoadAddr = ""; // ?????? ?????? ??????

                     if (data.bname !== ""
                           && /[???|???|???]$/g.test(data.bname)) {
                        extraRoadAddr += data.bname;
                     }

                     if (data.buildingName !== ""
                           && data.apartment === "Y") {
                        extraRoadAddr += extraRoadAddr !== "" ? ", "
                              + data.buildingName : data.buildingName;
                     }

                     if (extraRoadAddr !== "") {
                        extraRoadAddr = " (" + extraRoadAddr + ")";
                     }

                     document.getElementById("postCode").value = data.zonecode;
                     document.getElementById("roadAddr").value = roadAddr;

                  },
               }).open();
      }
   </script>
</body>
</html>