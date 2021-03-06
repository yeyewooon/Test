<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <!-- Favicon-->
      <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
      <!-- Bootstrap icons-->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"
        type="text/css" />
      <!-- Google fonts-->
      <link rel="preconnect" href="https://fonts.googleapis.com">
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
      <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;800&display=swap" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
        rel="stylesheet" type="text/css" />
      <!-- Core theme CSS (includes Bootstrap)-->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
      <!-- fontAwessome-->
      <script src="https://kit.fontawesome.com/241134516c.js" crossorigin="anonymous"></script>
      <script src="https://kit.fontawesome.com/241134516c.js" crossorigin="anonymous"></script>
      <script src="https://code.jquery.com/jquery-3.6.0.js"
        integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
      <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <title>??????????????????</title>

    </head>
    <style>
      @charset "UTF-8";

      i {
        cursor: pointer;
        margin: 5px;
      }

      .navbar-light {
        width: 100%;
        position: fixed;
        top: 0;
        z-index: 99;
        left: 0%;
      }

      .navbar-anchor a {
        text-decoration: none;
        color: black;
        font-weight: bold;
      }

      #userIcon {
        text-align: center;
        font-size: 25px;
        padding: 5px;
      }

      #logo {
        width: 60px;
        height: 50px;
      }

      /* ????????? ???????????? */
      .dropdown-toggle:hover {
        color: #83bf7b;
        border-color: aliceblue;
      }

      .dropdown:hover .nav-category {
        display: block;
        margin-top: 0;
        font-weight: bold;
      }

      /* ???????????? ????????? */
      table {
        margin-top: 5rem;
      }

      tr {
        border-top: 1px solid #00000050;
        border-bottom: 1px solid #00000050;
        text-align: left;
      }

      .star {
        color: red;
      }

      #id,
      #pw,
      #memberChkpw,
      #user_date,
      #user_name {
        font-size: 0.8rem;
        width: 200px;
      }

      .phoneWrap {
        margin-right: 20px;
      }

      .phone {
        width: 100px;
        height: 30px;
        border: 1px solid lightgray;
      }

      .email {
        width: 150px;
        font-size: 0.8rem;
      }

      .form-control,
      .btn-primary {
        font-size: 0.8rem;
      }

      .button {
        width: 150px;
      }



      /*?????? ??????*/
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

    <body>
      <div class="container MainBox">
        <!-- ????????? -->
        <nav class="navbar navbar-light bg-light fixed">
          <div class="container">
            <a class="navbar-brand" href="/Tohome" id="logo"><img id="logo" src="/resources/images/Logo3.png" alt="HypeFriend"></a>
            <div class="col-md-1  navbar-anchor"><a href="/ToCompany.page">COMPANY</a></div>
            <div class="dropdown ">
              <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false"
                style="font-weight: bold;">
                CLOTHES
              </button>
              <ul class="dropdown-menu nav-category" aria-labelledby="dropdownMenuButton1">
                <li><a class="dropdown-item" href="/ToPage.page?category=TOP">TOP</a></li>
				<li><a class="dropdown-item" href="/ToPage.page?category=BOTTOM">BOTTOM</a></li>
				<li><a class="dropdown-item" href="/ToPage.page?category=ACCESSORY">ACCESSORY</a></li>
				<li><a class="dropdown-item" href="/ToPage.page?category=BAG">BAG</a></li>
              </ul>
            </div>
            <div class="col-md-1 navbar-anchor"><a href="/TosearchMap.page">Shop</a></div>
            <div class="col-md-1 navbar-anchor"><a href="/toCs.mem">CS</a></div>
            
            <div class="col-md-4 navbar-anchor" id="userIcon">
              <c:choose>
                <c:when test="${not empty loginSession}">
                  <!-- ?????????????????? -->
                  <a href="/toCart.mem"><i class="fa-solid fa-cart-plus"></i></a>
                  <div class="dropdown" style="display: inline;">
                    <i class="fa-solid fa-user" data-bs-toggle="dropdown" aria-expanded="false"></i>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                      <li><a class="dropdown-item" href="/toMypage.mem">???????????????</a></li>
                      <li><a class="dropdown-item" href="/logoutProc.mem">????????????</a></li>
                    </ul>
                  </div>
                  <span style="font-size: 10px;">${loginSession.user_id}???</span>
                </c:when>

                <c:otherwise>
                  <!-- ????????? ????????? -->
                  <i id="loginIcon" class="fa-solid fa-cart-plus"></i></a>
                  <i id="loginIcon2" class="fa-solid fa-user"></i>
                  <script>
                    document.getElementById("loginIcon2").onclick = function () {
                      let url = "/toLogin.mem";
                      let name = "?????????";
                      let option = "width=600, height=700, left=700, top=300";
                      window.open(url, name, option);
                    }
                    document.getElementById("loginIcon").onclick = function () {
                      let url = "/toLogin.mem";
                      let name = "?????????";
                      let option = "width=600, height=700, left=700, top=300";
                      window.open(url, name, option);
                    }
                  </script>
                </c:otherwise>
              </c:choose>
            </div>
          </div>
        </nav>
      </div>

      <input id="url" name="url" type="hidden" value="/Tohome">

      <div class="container" style="margin-top: 170px;">
        <div class="row">
          <div class="col">
            <h2 style="text-align: center; font-weight: bold;">?????? ?????? ??????</h2>
          </div>
        </div>

        <form action="/toModifyMemProc.mem" id="signupForm" method="post">
          <table class="join_table">
            <colgroup>
              <col width="20%">
              <col width="40%">
            </colgroup>
            <tbody>
              <tr>
              <tr style="height: 70px;">
                <th>
                  <label for="user_name">??????</label>
                  <span class="star">*</span>
                </th>
                <td colspan="2">
                  <input type="text" id="user_name" value="${dto.user_name}" disabled>
                </td>
              </tr>
              </tr>
              <tr style="height: 70px;">
                <th>
                  <label for="user_id">?????????</label>
                  <span class="star">*</span>
                </th>
                <td colspan="2">
                  <input type="text" id="id" name="id" value="${dto.user_id}" disabled>
                </td>
              </tr>
              <tr style="height: 70px;">
                <th>
                  <label for="user_password">????????????</label>
                  <span class="star">*</span>
                </th>
                <td>
                  <input type="password" id="pw" name="pw">
                </td>

              </tr>
              <tr style="height: 70px;">
                <th>
                  <label for="memberChkpw">???????????? ??????</label>
                  <span class="star">*</span>
                </th>
                <td>
                  <input type="password" id="memberChkpw" name="memberChkpw">
                </td>
              </tr>
              <tr style="height: 70px;">
                <th>
                  <label for="phone1">?????????</label>
                  <span class="star">*</span>
                </th>
                <td colspan="2">
                  <div class="row">
                    <div class="col-2 phoneWrap">
                      <input type="text" class="form-control phone" id="phone1" value="${phone1}">
                    </div>
                    <div class="col-2 phoneWrap">
                      <input type="text" class="form-control phone" id="phone2" value="${phone2}">
                    </div>
                    <div class="col-2 phoneWrap">
                      <input type="text" class="form-control phone" id="phone3" value="${phone3}">
                    </div>
                  </div>
                </td>
              </tr>
              <div class="col d-none">
                <input type="text" id="user_phone" name="user_phone">
              </div>
              <tr style="height: 70px;">
                <th>
                  <label for="user_date">????????????</label>
                  <span class="star">*</span>

                </th>
                <td>
                  <input type="text" id="user_date" value="${dto.user_date}" disabled>
                </td>
              </tr>
              <tr style="height: 70px;">
                <th rowspan="2">
                  <label for="emailAdress">?????????</label>
                </th>
                <td colspan="2">
                  <div class="row">
                    <div class="col">
                      <input type="text" id="emailAdress" value="${email1}" style="width: 150px; font-size: 0.8rem;"> @
                      <input type="text" id="emailAdress2" value="${email2}" style="width: 100px; font-size: 0.8rem;">
                      <button type="button" class="btn btn-dark" id="checkEmail" style="height: 30px; font-size: 13px;"
                        disabled>????????????</button>

                </td>
              </tr>
              <div class="col d-none">
                <input type="text" id="user_email" name="user_email">
                <input type="hidden" id="total2" value="">

              </div>

              <tr>
                <td>
                  <ul class="desc mt-2" style="font-size: 0.7rem; opacity: 0.6;">
                    <li>
                      ?????????????????? ?????? ?????? ??? ?????? ?????? ?????? ?????? ?????? (?????? ??????????????????)???
                      ??? 23??????2??? "????????????????????? ?????? ??????"??? ?????? ??????????????? ????????? ???????????? ????????????????????? ?????? ??? ???????????? ????????????.
                    </li>
                  </ul>
                </td>
              </tr>
              <tr>
                <th>
                  <label for="adress">??????</label>
                </th>
                <td colspan="2">
                  <div class="row p-2">
                    <div class="col">
                      <input type="text" class="form-control" id="postCode" name="user_postCode" placeholder="????????????"
                        value="${dto.user_postCode}">
                    </div>
                    <div class="col">
                      <button type="button" class="btn btn-primary w-100" id="btnPostCode">???????????? ??????</button>
                    </div>
                  </div>
                  <div class="row p-2">
                    <div class="col">
                      <input type="text" class="form-control" id="roadAddr" name="user_roadAddr" placeholder="???????????????"
                        value="${dto.user_roadAddr}">
                    </div>
                  </div>
                  <div class="row p-2">
                    <div class="col mb-2">
                      <input type="text" class="form-control" id="detailAddr" name="user_detailAddr" placeholder="????????????"
                        value="${dto.user_detailAddr}">
                    </div>
                  </div>
                </td>
              </tr>
            </tbody>
          </table>

          <div class="row mt-5 mb-5">
            <div class="col" style="text-align: center;">
              <p><strong>??????????????? ???????????? ?????? ??? ????????? ???????????????????</strong></p>
              <button type="button" id="submitBtn" class="btn btn-danger button">??????</button>
              <button type="button" id="btnBack" class="btn btn-dark button">????????????</button>
            </div>
          </div>
      </div>
      </form>

      <!-- Footer-->
  <footer class="footer bg-light mt-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-6 h-100 text-center text-lg-start my-auto">
          <ul class="list-inline mb-2">
            <li class="list-inline-item"><a href="/ToCompany.page">COMPANY</a></li>
            <li class="list-inline-item">???</li>
            <li class="list-inline-item"><a href="/TosearchMap.page">????????????</a></li>
            <li class="list-inline-item">???</li>
            <li class="list-inline-item"><a href="/toCs.mem">????????????</a></li>
            <li class="list-inline-item">???</li>
            <li class="list-inline-item"><p  style="color: red; font-weight: bold;">????????????????????????</p></li>

          </ul>
          <p class="text-muted small mb-4 mb-lg-0">???????????????(???) ?????? : ????????? | ??????????????????????????? : ????????? | ????????????????????? : 22-02-22</p>
          <p class="text-muted small mb-4 mb-lg-0">?????? : ??????????????? ???????????? ?????????2??? 57 ????????????</p>
          <p class="text-muted small mb-4 mb-lg-0">&copy; Your Website 2022. All Rights Reserved.</p>
        </div>
        <div class="col-lg-6 h-100 text-center text-lg-end my-auto">
          <ul class="list-inline mb-0">
            <li class="list-inline-item me-4">
              <a href="https://ko-kr.facebook.com/" target="_blank"><i class="bi-facebook fs-3"></i></a>
            </li>
            <li class="list-inline-item me-4">
              <a href="https://twitter.com/?lang=ko" target="_blank"><i class="bi-twitter fs-3"></i></a>
            </li>
            <li class="list-inline-item">
              <a href="https://www.instagram.com/" target="_blank"><i class="bi-instagram fs-3"></i></a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </footer>

    </body>

    <script>
      // ?????? ???????????? api ?????????
      $('#btnPostCode').on('click', function () {
        new daum.Postcode({
          oncomplete: function (data) {
            var roadAddr = data.roadAddress; // ????????? ?????? ??????
            var extraRoadAddr = ''; // ?????? ?????? ??????

            if (data.bname !== '' && /[???|???|???]$/g.test(data.bname)) {
              extraRoadAddr += data.bname;
            }
            // ???????????? ??????, ??????????????? ?????? ????????????
            if (data.buildingName !== '' && data.apartment === 'Y') {
              extraRoadAddr +=
                extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName;
            }
            // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
            if (extraRoadAddr !== '') {
              extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // ??????????????? ?????? ????????? ?????? ????????? ?????????.
            $('#postCode').val(data.zonecode);
            $('#roadAddr').val(roadAddr);

            // ???????????? ???????????? ?????? ?????? ?????? ????????? ?????????.
            if (roadAddr !== '') {
              $('#extraAddr').val(extraRoadAddr);
            } else {
              $('#extraAddr').val('');
            }
          }
        }).open();
      });

      const total2 = document.getElementById('total2');

      $('#emailAdress2').focusout(function () {
        let email = '';
        if ($('#emailAdress').val() !== '') {
          email = $('#emailAdress').val() + '@' + $('#emailAdress2').val();
          $('#user_email').val(email);
        }
        $('#checkEmail').attr('disabled', false);
      });

      $('#emailAdress').focusout(function () {
        let email = '';
        if ($('#emailAdress').val() !== '') {
          email = $('#emailAdress').val() + '@' + $('#emailAdress2').val();
          $('#user_email').val(email);
        }
        $('#checkEmail').attr('disabled', false);
      });

      $('#checkEmail').on('click', function () {
        if ($('#emailAdress').val() === '') {
          alert('???????????? ??????????????????.');
          return;
        } else if ($('#emailAdress2').val() === '') {
          alert('???????????? ??????????????????.');
          return;
        }

        $.ajax({
          url: '/checkEmail.mem',
          type: 'post',
          data: { user_email: $('#user_email').val() },
          dataType: 'text',
          success: function (data) {
            console.log(data);
            if (data == 'false') {
              alert('?????? ???????????? ??????????????????.');
              return;
            }
            alert('??????????????? ??????????????????.');
            total2.value = '1';
            $('#submitBtn').attr('disabled', false);
            return;
          },
          error: function (e) {
            console.log(e);
          }
        });
      });

      $('#emailAdress').change(function () {
        if (document.getElementById('emailAdress').value !== '') {
          if (total2.value == '1') {
            $('#submitBtn').attr('disabled', true);
            total2.value = '';
            return;
          }
        }
      });

      $('#emailAdress2').change(function () {
        if (document.getElementById('emailAdress2').value !== '') {
          if (total2.value == '1') {
            $('#submitBtn').attr('disabled', true);
            total2.value = '';
            return;
          }
        }
      });

      $('#submitBtn').on('click', function () {
        let regexPhone = /^[0-9]{11}$/;
        //phone?????? ???????????? ?????? select ???????????? ????????? ?????? ??????????????????
        let phone = $('#phone1').val() + $('#phone2').val() + $('#phone3').val();

        $('#user_phone').val(phone);

        if ($('#pw').val() === '') {
          alert('??????????????? ??????????????????.');
          return;
        } else if ($('#emailAdress').val() === '') {
          alert('???????????? ??????????????????.');
          return;
        } else if ($('#emailAdress2').val() === '') {
          alert('???????????? ??????????????????.');
          return;
        } else if ($('#memberChkpw').val() !== $('#pw').val()) {
          alert('??????????????? ???????????? ???????????? ???????????? ????????????.');
          return;
        } else if (!regexPhone.test(phone)) {
          // ?????? ???????????? ?????? ????????? ????????? x
          alert('????????? ?????? ?????? ?????????????????????.');
          return;
        } else if ($('#postCode').val() === '' || $('#roadAddr').val() === '') {
          alert('????????? ????????? ?????????.');
          return;
        } else if (total2.value !== '1') {
          alert('???????????? ????????? ???????????? ????????? ????????? ??????????????????.');
          alert('????????? ??????????????? ??????????????????.');
          return;
        }

        let email = $('#emailAdress').val() + '@' + $('#emailAdress2').val();;
        $('#user_email').val(email);

        $.ajax({
          url: '/toLoginProc.mem',
          type: 'post',
          data: { id: '${dto.user_id}', pw: $('#pw').val() },
          success: function (resultData) {
            console.log('????????? id', resultData);
            if (resultData === 'loginSuccess') {
              //form ??????
              let check = confirm('?????? ?????????????????????????');
              if (check) {
                document.getElementById('signupForm').submit();
                return;
              }else{
                return;
              }
            }
            alert('???????????? ??????????????? ???????????????.');
            return;
          },
          error: function (e) {
            console.log(e);
          }
        });
      });

      $('#btnBack').on("click", function () {
        location.href = "/toMypage.mem";
      })

    </script>

    </html>