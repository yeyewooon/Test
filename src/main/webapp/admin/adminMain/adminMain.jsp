<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
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
    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: "Poppins", sans-serif;
      }

      /* navbar & maincontainer */
      .logoImg{
      	width:100px;
      	height : 55px;
      	cursor:pointer;
      }
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
        margin-left: 15%;
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

      .cardContainer {
        margin: 0;
      }

      .cardContainer,
      .cardContentBox {
        padding: 0;
      }

      /* ??????  */
      .charts {
        height: 46%;
      }

      .highcharts-figure,
      .highcharts-data-table table {
        min-width: 320px;
        max-width: 660px;
        margin: 1em auto;
      }

      .highcharts-data-table table {
        font-family: Verdana, sans-serif;
        border-collapse: collapse;
        border: 1px solid #ebebeb;
        margin: 10px auto;
        text-align: center;
        width: 100%;
        max-width: 500px;
      }

      .highcharts-data-table caption {
        padding: 1em 0;
        font-size: 1.2em;
        color: #555;
      }

      .highcharts-data-table th {
        font-weight: 600;
        padding: 0.5em;
      }

      .highcharts-data-table td,
      .highcharts-data-table th,
      .highcharts-data-table caption {
        padding: 0.5em;
      }

      .highcharts-data-table thead tr,
      .highcharts-data-table tr:nth-child(even) {
        background: #f8f8f8;
      }

      .highcharts-data-table tr:hover {
        background: #f1f7ff;
      }
      #container2 {
        height: 500px;
      }

      .highcharts-figure,
      .highcharts-data-table table {
        min-width: 310px;
        max-width: 1500px;
        margin: 1em auto;
      }

      .highcharts-data-table table {
        font-family: Verdana, sans-serif;
        border-collapse: collapse;
        border: 1px solid #ebebeb;
        margin: 10px auto;
        text-align: center;
        width: 100%;
        max-width: 500px;
      }

      .highcharts-data-table caption {
        padding: 1em 0;
        font-size: 1.2em;
        color: #555;
      }

      .highcharts-data-table th {
        font-weight: 600;
        padding: 0.5em;
      }

      .highcharts-data-table td,
      .highcharts-data-table th,
      .highcharts-data-table caption {
        padding: 0.5em;
      }

      .highcharts-data-table thead tr,
      .highcharts-data-table tr:nth-child(even) {
        background: #f8f8f8;
      }

      .highcharts-data-table tr:hover {
        background: #f1f7ff;
      }

      /* ?????? ?????????  */
      .firstTableTitle {
        font-size: 24px;
      }

      .dataContainer {
        border-radius: 5px;
        color: #fff;
        transition: ease 1.3s;
      }

      .dataContainer:hover {
        transform: scale(1.1);
      }

      .dataContainer1 {
        background-color: #7da0fa;
      }

      .dataContainer2 {
        background-color: #4747a1;
      }

      .dataContainer3 {
        background-color: #7878e8;
      }

      .dataContainer4 {
        background-color: #f4797e;
      }

      .dataBox-Text {
        width: 100px;
      }

      .dataBox-Text:nth-child(2) {
        color: #fff;
      }

      .dataBox-Icon i {
        font-size: 36px;
      }

      .dataBox-Text-Count {
        font-size: 20px;
      }
    </style>
  </head>
  <body>
    <div class="adminContainer">
      <div class="row adminNavbar d-flex align-items-center">
        <div
          class="col-md-2 adminNavbar-left d-flex justify-content-center align-items-lg-center"
        >
          <img class="logoImg" src="./resources/images/Logo3.png">
        </div>
        <div class="col-md-10 adminNavbar-right d-flex justify-content-end">
          <div class="adminIcon">
            <span class="adminIconSpan">Admin</span>
            <i class="fa-solid fa-user-check"></i>
            <span class="adminIconLogout" id="adminIconLogout">????????????</span>
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
                <i class="fa-solid fa-cart-shopping cart"></i>
              </div>
              <div class="icon-link-center col-md-6">
                <span class="link_name cartManagement">????????? ??????</span>
              </div>
              <div class="icon-link-right col-md-3">
                <i class="fa-solid fa-caret-down arrow arrow4"></i>
              </div>
            </div>
            <ul class="sub-menu sub-menu-fourth">
              <li><a href="/boardQna.qna?curPage=1">????????????</a></li>
              <li><a href="/review.rv?curPage=1">?????? ??????</a></li>
            </ul>
          </div>
        </div>

        <!-- ?????? ?????? -->
        <div class="col-md-10 adminMainContainer">
          <div class="row cardContainer">
            <div class="col cardContentBox">
              <!-- ????????? -->
              <div class="row h-50 m-0">
                <div class="col-6">
                  <div class="container dataContainer dataContainer1 mt-3">
                    <div class="row">
                      <div class="col dataBox-Text">
                        <p class="mt-2">?????????</p>
                        <p class="dataBox-Text-Count memberCntInput"></p>
                        <p class="curTime"></p>
                      </div>
                      <div
                        class="col-5 dataBox-Icon d-flex justify-content-center align-items-center"
                      >
                        <i class="fa-solid fa-users"></i>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- ??????  -->
                <div class="col-6">
                  <div class="container dataContainer dataContainer2 mt-3">
                    <div class="row">
                      <div class="col dataBox-Text">
                        <p class="mt-2">??????</p>
                        <p class="dataBox-Text-Count totalProfitInput"></p>
                        <p class="curTime"></p>
                      </div>
                      <div
                        class="col-5 dataBox-Icon d-flex justify-content-center align-items-center"
                      >
                        <i class="fa-solid fa-coins"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- ?????? ??????  -->
              <div class="row h-50 m-0">
                <div class="col-6">
                  <div class="container dataContainer dataContainer3 mt-3">
                    <div class="row">
                      <div class="col dataBox-Text">
                        <p class="mt-2">?????? ??????</p>
                        <p class="dataBox-Text-Count purchaseCntInput"></p>
                        <p class="curTime"></p>
                      </div>
                      <div
                        class="col-5 dataBox-Icon d-flex justify-content-center align-items-center"
                      >
                        <i class="fa-solid fa-cart-shopping"></i>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- ?????? ??????  -->
                <div class="col-6">
                  <div class="container dataContainer dataContainer4 mt-3">
                    <div class="row">
                      <div class="col dataBox-Text">
                        <p class="mt-2">?????? ??????</p>
                        <p class="dataBox-Text-Count productCntInput"></p>
                        <p class="curTime"></p>
                      </div>
                      <div
                        class="col-5 dataBox-Icon d-flex justify-content-center align-items-center"
                      >
                        <i class="fa-solid fa-clipboard-list"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- ?????? ?????? -->
            <div class="col">
              <div class="charts circleCharts">
                <script src="https://code.highcharts.com/highcharts.js"></script>
                <script src="https://code.highcharts.com/highcharts-more.js"></script>
                <script src="https://code.highcharts.com/modules/exporting.js"></script>
                <script src="https://code.highcharts.com/modules/export-data.js"></script>
                <script src="https://code.highcharts.com/modules/accessibility.js"></script>
                <figure class="highcharts-figure">
                  <div id="container1"></div>
                </figure>
              </div>
            </div>
          </div>

          <!-- ?????? ??????  -->
          <script src="https://code.highcharts.com/highcharts.js"></script>
          <script src="https://code.highcharts.com/modules/exporting.js"></script>
          <script src="https://code.highcharts.com/modules/export-data.js"></script>
          <script src="https://code.highcharts.com/modules/accessibility.js"></script>

          <figure class="highcharts-figure">
            <div id="container2"></div>
          </figure>
        </div>
      </div>
    </div>

    <script>
      document.getElementById('adminIconLogout').addEventListener('click', function() {

                location.href = "/logoutProc.mem";
              })


      $(".arrow1").on("click", function() {
      	$(".sub-menu-first").toggle("4000ms");
      });

      $(".arrow2").on("click", function() {
      	$(".sub-menu-second").toggle("4000ms");
      });

      $(".arrow3").on("click", function() {
      	$(".sub-menu-third").toggle("4000ms");
      });

      $(".arrow4").on("click", function() {
      	$(".sub-menu-fourth").toggle("4000ms");
      });

      $(".memberDelete").on("click", function(e) {
      	alert("member");
      });
      
      $(".logoImg").on("click",function(){
          location.href = "/admin.ad"
       })
       $(".adminIconLogout").on("click",function(){
         location.href = "/Tohome";
      })
      // ?????? ?????? ????????????
      let today = new Date();

      let year = today.getFullYear();
      let month = ('0' + (today.getMonth() + 1)).slice(-2);
      let day = ('0' + today.getDate()).slice(-2);

      var dateString = year + "??? " + month + "??? " + day + "???";

      console.log(dateString);

      $(".curTime").append(dateString);

      // ????????? ?????? ????????????

      // ?????????
      let tempMemberCnt = "${memberCnt}";
      let memberCnt = tempMemberCnt.toString().replace(
      		/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
      $(".memberCntInput").append(memberCnt, "???");

      // ????????????
      let tempPurchaseCnt = "${purchaseCnt}";
      let purchaseCnt = tempPurchaseCnt.toString().replace(
      		/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
      $(".purchaseCntInput").append(purchaseCnt, "???");

      // ??????
      let tempTotalProfit = "${TotalProfit}";
      let totalProfit = tempTotalProfit.toString().replace(
      		/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
      $(".totalProfitInput").append(totalProfit, "???");

      // ????????????
      let tempProductCnt = "${productCnt}";
      let productCnt = tempProductCnt.toString().replace(
      		/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
      $(".productCntInput").append(productCnt, "???");

      // String??? int???
      let cntCategoryTop = parseInt("${cntCategoryTop}");
      let cntCategoryBottom = parseInt("${cntCategoryBottom}");
      let cntCategoryBag = parseInt("${cntCategoryBag}");
      let cntCategoryAcc = parseInt("${cntCategoryAcc}");
      let allBuyQty = parseInt("${allBuyQty}");

      // ???????????? ??????
      let perCntCategoryTop = (cntCategoryTop / allBuyQty) * 100;
      let perCntCategoryBottom = (cntCategoryBottom / allBuyQty) * 100;
      let perCntCategoryAcc = (cntCategoryAcc / allBuyQty) * 100;
      let perCntCategoryBag = (cntCategoryBag / allBuyQty) * 100;

      // highCharts circleCharts
      // circleCharts
      Highcharts.chart("container1", {
      	chart : {
      		plotBackgroundColor : null,
      		plotBorderWidth : null,
      		plotShadow : false,
      		type : "pie",
      		width : 800,
      		height : 280,
      	},
      	credits : {
      		enabled : false,
      	},
      	title : {
      		text : "????????? ?????? ??????",
      	},
      	tooltip : {
      		pointFormat : "{series.name}: <b>{point.percentage:.1f}%</b>",
      	},
      	accessibility : {
      		point : {
      			valueSuffix : "%",
      		},
      	},
      	plotOptions : {
      		pie : {
      			allowPointSelect : true,
      			cursor : "pointer",
      			dataLabels : {
      				enabled : false,
      			},
      			showInLegend : true,
      		},
      	},
      	series : [ {
      		name : "Brands",
      		colorByPoint : true,
      		data : [ {
      			name : "??????",
      			y : perCntCategoryTop,

      		}, {
      			name : "??????",
      			y : perCntCategoryBottom,

      		}, {
      			name : "????????????",
      			y : perCntCategoryAcc,

      		}, {
      			name : "??????",
      			y : perCntCategoryBag,

      		},
      		],
      	}, ],
      });

      // ?????? charts
      Highcharts
      		.chart(
      				'container2',
      				{
      					chart : {
      						type : 'column'
      					},
      					title : {
      						text : '????????? ?????????'
      					},
      					xAxis : {
      						type : 'category',
      						labels : {
      							rotation : -45,
      							style : {
      								fontSize : '13px',
      								fontFamily : 'Verdana, sans-serif'
      							}
      						}
      					},
      					yAxis : {
      						min : 0,
      						title : {
      							text : 'Total Price'
      						}
      					},
      					legend : {
      						enabled : false
      					},
      					tooltip : {
      						pointFormat : 'Population in 2017: <b>{point.y:.1f} millions</b>'
      					},
      					credits: {
      					      enabled: false,
      					    },
      					series : [ {
      						name : 'Population',
      						data : [['06??? 04???', ${list[0].getPay_price()}],
      						      ['06??? 05???', ${list[1].getPay_price()}],
      						      ['06??? 06???', ${list[2].getPay_price()}],
      						      ['06??? 07???', ${list[3].getPay_price()}],
      						      ['06??? 08???', ${list[4].getPay_price()}],
      						      ['06??? 09???', ${list[5].getPay_price()}],
      						      ['06??? 10???', ${list[6].getPay_price()}],
      						      ['06??? 11???', ${list[7].getPay_price()}],
      						      ['06??? 12???', ${list[8].getPay_price()}],
      						      ['06??? 13???', ${list[9].getPay_price()}],
      						      ['06??? 14???', ${list[10].getPay_price()}]],
      						dataLabels : {
      							enabled : true,
      							rotation : -90,
      							color : '#FFFFFF',
      							align : 'right',
      							format : '{point.y:.1f}', // one decimal
      							y : 10, // 10 pixels down from the top
      							style : {
      								fontSize : '13px',
      								fontFamily : 'Verdana, sans-serif'
      							}
      						}
      					} ]
      				});

              
    </script>
  </body>
</html>
