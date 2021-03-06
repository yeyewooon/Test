<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Insert title here</title>
            <!-- Favicon-->
            <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
            <!-- Bootstrap icons-->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet"
                type="text/css" />
            <!-- Google fonts-->
            <link rel="preconnect" href="https://fonts.googleapis.com">
            <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
            <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;800&display=swap"
                rel="stylesheet">
            <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
                rel="stylesheet" type="text/css" />
            <!-- Core theme CSS (includes Bootstrap)-->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
                crossorigin="anonymous"></script>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
                crossorigin="anonymous">
            <!-- fontAwessome-->
            <script src="https://kit.fontawesome.com/241134516c.js" crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.6.0.js"
                integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
            <!-- css -->
            <link rel="stylesheet" href="<%=request.getContextPath()%>/member/css/Login.css">
            <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
        </head>

        <body>
            <form id="loginForm" action="/toLoginProc.mem" method="post">
                <input id="url" name="url" type="hidden" value="" />
                <div class="container">
                    <!-- X????????? -->
                    <div class="row m-2 icon">
                        <div class="col-12 d-flex justify-content-end">
                            <i id="btnCanlcel" class="bi bi-x-lg"></i>
                        </div>
                    </div>
                    <!-- ????????? ????????? -->
                    <div class="row m-2 header">
                        <div class="col-12 d-flex justify-content-center" style="text-align: center;">
                            <h2>?????????</h2>
                        </div>
                    </div>
                    <!-- ????????? ???????????? ????????? -->
                    <div class="row p-3 inputBox">
                        <div class="col-12">
                            <input type="text" class="form-control idLogin" id="id" name="id"
                                placeholder="???????????? ??????????????????.">
                        </div>
                    </div>
                    <div class="row p-3 inputBox">
                        <div class="col-12">
                            <input type="password" class="form-control idLogin" id="pw" name="pw"
                                placeholder="??????????????? ??????????????????.">
                        </div>
                    </div>
                    <!-- ????????? ?????? -->
                    <div class="row p-4">
                        <div class="col-12  d-flex justify-content-center">
                            <button type="button" class="btn btn-primary" id="btnLogin">?????????</button>
                        </div>
                    </div>

                    <!-- ???????????? ?????? -->
                    <div class="row p-4">
                        <div class="col-12  d-flex justify-content-center">
                            <button type="button" class="btn btn-danger" id="btnSignup">????????????</button>
                        </div>
                    </div>

                    <!-- ????????? ????????? -->
                    <div class="row">
                        <div class="col-12  d-flex justify-content-center kakaoLogin" id="kakaoLogin">
                            <a href="javascript:kakaoLogin();"><img src="/resources/images/kakao_login.png"></a>
                        </div>
                    </div>
                    <!-- ?????????, ???????????? ??????-->
                    <div class="row m-3">
                        <div class="col-12 d-flex justify-content-center kakaoLogin">
                            <p data-bs-toggle="modal" data-bs-target="#staticBackdrop1">????????? ??????&emsp;</p>

                            <p data-bs-toggle="modal" data-bs-target="#staticBackdrop2">&emsp;???????????? ??????</p>
                        </div>
                    </div>
                </div>
            </form>

            <!-- id?????? -->
            <div class="modal fade" id="staticBackdrop1" data-bs-backdrop="static" data-bs-keyboard="false"
                tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">????????? ??????</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <form id="findIdForm" action="/findIdForm.mem" method="post">
                            <div id="findId_body" class="modal-body">
                                <div class="row nameBox m-2">
                                    <div class="col-3 d-flex justify-content-center">
                                        <label for="name" class="form-label">??????</label>
                                    </div>
                                    <div class="col-9 d-flex justify-content-center">
                                        <input type="text" class="form-control" placeholder="ex)?????????" name="find_name"
                                            id="find_name">
                                    </div>
                                </div>
                                <div class="row phoneBox m-2 mt-4">
                                    <div class="col-3 d-flex justify-content-center">
                                        <label for="phone" class="form-label">????????? ??????</label>
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
                                        <button type="button" class="btn btn-primary" id="btnFindID">????????? ??????</button>
                                    </div>
                                </div>
                                <div class="row anchor mt-4">
                                    <div class="col-12 d-flex justify-content-center">
                                        <a class="findID" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">????????????
                                            ??????</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div id="resultId" class="modal-body" style="display: none;">
                            <!-- ?????????????????? -->
                            <div class="row nameBox m-2">
                                <div class="col-12 d-flex justify-content-center">
                                    <label for="name" class="form-label">????????? ID</label>
                                </div>
                            </div>
                            <div id="findId_result">

                            </div>
                            <div class="row anchor mt-4">
                                <div class="col-12 d-flex justify-content-center">
                                    <a href="" id="findPw" data-bs-toggle="modal" data-bs-target="#staticBackdrop2">????????????
                                        ??????</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- ??????????????????-->
            <div class="modal fade" id="staticBackdrop2" data-bs-backdrop="static" data-bs-keyboard="false"
                tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">???????????? ??????</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <form id="findPwForm" action="/findPw.mem" method="post">
                            <div id="findPw_body" class="modal-body">
                                <!-- ????????????????????? -->
                                <div class="row nameBox m-2">
                                    <div class="col-3 d-flex justify-content-center">
                                        <label for="name" class="form-label">??????</label>
                                    </div>
                                    <div class="col-9 d-flex justify-content-center">
                                        <input type="text" class="form-control" placeholder="ex)?????????" name="findPw_name"
                                            id="findPw_name">
                                    </div>
                                </div>
                                <div class="row phoneBox m-2 mt-4">
                                    <div class="col-3 d-flex justify-content-center">
                                        <label for="id" class="form-label">?????????</label>
                                    </div>
                                    <div class="col-9 d-flex justify-content-center">
                                        <input type="text" class="form-control" name="findPw_id" id="findPw_id">
                                    </div>
                                </div>
                                <div class="row btns mt-4">
                                    <div class="col-12 d-flex justify-content-center">
                                        <button type="button" class="btn btn-primary" id="btnFindPW">???????????? ??????</button>
                                    </div>
                                </div>

                                <div class="row anchor mt-4">
                                    <div class="col-12 d-flex justify-content-center">
                                        <a href="" class="findID" data-bs-toggle="modal"
                                            data-bs-target="#staticBackdrop1">????????? ??????</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <form id="modifyForm" action="/toModifyPw.mem" method="post">
                            <!-- ???????????? ???????????? ??? -->
                            <div id="modifyPw_body" class="modal-body" style="display: none;">
                                <div class="row nameBox m-2">
                                    <div class="col-3 d-flex justify-content-center">
                                        <label for="name" class="form-label"
                                            style="font-size: 0.75rem; margin-top: 3px">????????????</label>
                                    </div>
                                    <div class="col-9 d-flex justify-content-center">
                                        <input type="password" class="form-control" name="modifyPw" id="modifyPw">
                                    </div>
                                </div>
                                <div class="row phoneBox m-2 mt-4">
                                    <div class="col-3 d-flex justify-content-center">
                                        <label for="id" class="form-label"
                                            style="font-size: 0.75rem; margin-top: 3px">???????????? ??????</label>
                                    </div>
                                    <div class="col-9 d-flex justify-content-center">
                                        <input type="password" class="form-control" name="checkPw" id="checkPw">
                                        <input id="modifyPw_id" name="modifyPw_id" type="hidden" />
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <p style="font-size: 0.75rem;">??????, ??????, ??????????????? ???????????? ?????? 5?????? ?????? 19?????? ????????? ????????? ?????????.
                                        </p>
                                    </div>
                                </div>
                                <div class="row btns mt-4">
                                    <div class="col-12 d-flex justify-content-center">
                                        <button type="button" class="btn btn-primary" id="btnModifyPW">???????????? ??????</button>
                                    </div>
                                </div>
                                <div class="row anchor mt-4">
                                    <div class="col-12 d-flex justify-content-center">
                                        <a href="" class="findID" data-bs-toggle="modal"
                                            data-bs-target="#staticBackdrop1">????????? ??????</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </body>
        <script>
            let url = '/Tohome';

            if (
                opener.document.getElementById('url').value != null ||
                opener.document.getElementById('url').value != ''
            ) {
                url = opener.document.getElementById('url').value;
            }

            console.log('?????? ', url);
            $('#url').val(url);

            $('#btnCanlcel').on('click', function () {
                self.close(); // ???????????? ?????? ??? ?????? ?????????
            });

            $("#btnLogin").on("click", function () {
                let id = $("#id").val();
                let pw = $("#pw").val();

                if (id === "" || pw === "") {
                    alert("????????? ?????? ??????????????? ????????? ???????????????.");
                    return;
                }
                let data = $("#loginForm").serialize();

                $.ajax({
                    url: "/toLoginProc.mem"
                    , type: "post"
                    , data: data
                    , success: function (resultData) {
                        console.log("????????? id", resultData);
                        if (resultData === "loginSuccess") {

                            alert("????????? ??????");
                            opener.document.location.href = url;
                            self.close();
                            return;
                        } else if (resultData === "loginFail") {
                            alert("????????? ??????!");
                            return;
                        } else if (resultData === "blacklist") {
                            alert("?????? ??? ????????? ?????????. CS??? ??????????????????.");
                            return;
                        } else if(resultData === "admin"){
                            alert("????????? ????????? ??????");
                            window.opener.location.href = "/admin.ad";
                            self.close();
                            return;
                        }
                        

                    }, error: function (e) {
                        console.log(e);
                    }
                })
            });


            $('#btnFindID').on('click', function () {
                if (
                    $('#find_name').val() === '' ||
                    $('#find_phone2').val() === '' ||
                    $('#find_phone3').val() === ''
                ) {
                    alert('????????? ??????????????? ??????????????????.');
                    return;
                }
                let phone =
                    $('#find_phone1 option:selected').val() +
                    $('#find_phone2').val() +
                    $('#find_phone3').val();
                $('#find_phone').val(phone);
                let regexPhone = /[0-9]{11}/;

                if (!regexPhone.test(phone)) {
                    alert('???????????? ?????? ????????? ???????????? ?????????.');
                    return;
                }
                let data = $('#findIdForm').serialize();

                $.ajax({
                    url: '/findId.mem',
                    type: 'post',
                    data: data,
                    dataType: 'json',
                    success: function (id) {
                        console.log('????????? id', id);
                        if (id != 'fail') {
                            $('#findId_body').css('display', 'none');
                            $('#resultId').css('display', 'block');

                            for (let data of id) {
                                let rs = $('<p>').html(data.user_id);
                                let col = $('<div>')
                                    .addClass('col d-flex justify-content-center')
                                    .append(rs);
                                let row = $('<div>').addClass('row').append(col);
                                $('#findId_result').append(row);
                            }
                        } else {
                            alert('????????? ???????????? ????????????.');
                        }
                    },
                    error: function (e) {
                        console.log(e);
                    }
                });
            }); //findId ???

            $('#btnFindPW').on('click', function () {
                //??????????????????
                if ($('#findPw_name').val() === '' || $('#findPw_id').val() === '') {
                    alert('?????? ?????? ???????????? ??????????????????');
                    return;
                }

                let data = $('#findPwForm').serialize();
                console.log(data);
                $.ajax({
                    url: '/findPw.mem',
                    type: 'post',
                    data: data,
                    success: function (rs) {
                        console.log('????????? rs', rs);
                        if (rs == 'exist') {
                            $('#findPw_body').css('display', 'none');
                            $('#modifyPw_body').css('display', 'block');
                            $('#modifyPw_id').val($('#findPw_id').val());
                            alert('????????? ??????????????? ??????????????????');
                        } else if (rs === 'no') {
                            alert('????????? ???????????? ????????????.');
                        }
                    },
                    error: function (e) {
                        console.log(e);
                    }
                });
            }); //findPw ???

            $('#btnModifyPW').on('click', function () {
                let regexPw = /^[a-z0-9~!@#$%^&]{5,19}$/;

                if (($('#modifyPw').val() == '') | ($('#checkPw').val() == '')) {
                    alert('????????? ??????????????? ??????????????????');
                    return;
                } else if ($('#modifyPw').val() != $('#checkPw').val()) {
                    alert('??????????????? ???????????? ????????? ?????? ????????????.');
                    return;
                }

                if (!regexPw.test($('#modifyPw').val())) {
                    alert('???????????? ????????? ?????? ????????????.');
                }
                let data = $('#modifyForm').serialize();
                $.ajax({
                    url: '/toModifyPw.mem',
                    type: 'post',
                    data: data,
                    success: function (rs) {
                        if (rs === 'success') {
                            alert('??????????????? ?????????????????????.');
                            location.href = '/toLogin.mem';
                        } else if (rs === 'fail') {
                            alert('???????????? ????????? ??????????????????.');
                        }
                    },
                    error: function (e) {
                        console.log(e);
                    }
                });
            }); // ???????????? ??????

            $('.btn-close').on('click', function () {
                clear();
            });

            $('.findID').on('click', function () {
                clear();
            });

            $('#btnSignup').on('click', function () {
                window.opener.location.href = '/toSignup.mem';
                self.close();
            });

            function clear() {
                // ????????? ?????? clear

                $('#findId_body').show();
                $('#resultId').hide();
                $('#findId_result').empty();

                $('#find_phone').val('');
                $('#find_phone2').val('');
                $('#find_phone3').val('');
                $('#find_name').val('');

                // ???????????? ?????? clear

                $('#findPw_body').show();
                $('#modifyPw_body').hide();

                $('#modifyPw').val('');
                $('#checkPw').val('');
                $('#findPw_name').val('');
                $('#findPw_id').val('');
                $('#modifyPw_id').val('');
            }

            window.Kakao.init('f916f54344ada4fd73402517596c7868');

            function kakaoLogin() {
                window.Kakao.Auth.login({
                    scope: 'profile_nickname, account_email, age_range', //???????????? ???????????? ?????? ???????????? ?????? ???????????? ???????????? ID?????? ????????????.
                    success: function (response) {
                        console.log(response) // ????????? ???????????? ???????????? ?????????
                        window.Kakao.API.request({ // ????????? ?????? ???????????? 
                            url: '/v2/user/me',
                            success: (res) => {
                                const email = res.kakao_account.email;
                                console.log(email);
                                window.opener.location.href = "/toKakao.mem?email=" + email + "&url=" + url;
                                self.close();
                            }
                        });
                    },
                    fail: function (error) {
                        console.log(error);
                    }
                });
            }

        </script>

        </html>