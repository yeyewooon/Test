<<<<<<< HEAD
let url = "/Tohome";
	
	if(opener.document.getElementById("url").value != null || opener.document.getElementById("url").value != ""){
		url = opener.document.getElementById("url").value;
	}
	
	console.log("이전 " , url);
	$("#url").val(url);
	
	$("#btnCanlcel").on("click",function(){
		self.close(); // 취소버튼 클릭 시 팝업 창닫기
	});
	
	$("#btnLogin").on("click", function() {
		let id = $("#id").val();
		let pw = $("#pw").val();
		
		if ( id === "" || pw === "") {
			alert("아이디 혹은 비밀번호를 정확히 입력하세요.");
			return;
		}
		let data = $("#loginForm").serialize();
		
		$.ajax({
			url : "/toLoginProc.mem"
			, type : "post"
			, data : data
			, success : function(resultData){
				console.log("받아온 id",resultData);
				if(resultData != null){
					
					alert("로그인 성공");
					
					
					opener.document.location.href = url;
					self.close();
			
				}else{
					alert("로그인 실패!");
				}
				
			}, error : function(e){
				console.log(e);
			}
		})
	});

	console.log("${rs}");
	if("${rs}" === "ok"){
		console.log("${rs}");
		alert("로그인 성공!");
		opener.document.location.href = url;
		self.close();	
	}else if("${rs}" === "no"){
		console.log("${rs}");
		alert("로그인 실패!");
	}

	$("#btnFindID").on("click", function() {
		if( $("#find_name").val() === "" || $("#find_phone2").val() === "" || $("#find_phone3").val() === "" ){
			alert("이름과 전화번호를 입력해주세요.");
			return;
		}
		let phone = $("#find_phone1 option:selected").val() + $("#find_phone2").val() + $("#find_phone3").val();
		$("#find_phone").val(phone);
		let regexPhone = /[0-9]{11}/;

		if(!regexPhone.test(phone)){
			alert("올바르지 않은 형식의 전화번호 입니다.");
			return;
		}
		let data = $("#findIdForm").serialize();

		$.ajax({
			url : "/findId.mem"
			, type : "post"
			, data : data
			, dataType : "json"
			, success : function(id){
				console.log("받아온 id",id);
				if(id != "fail"){
					$("#findId_body").css("display", "none");
					$("#resultId").css("display", "block");
			
					for(let data of id){
						let rs = $("<p>").html(data.user_id);
						let col = $("<div>").addClass("col d-flex justify-content-center").append(rs);
						let row = $("<div>").addClass("row").append(col);
						$("#findId_result").append(row);
					}
				}else{
					alert("가입된 아이디가 없습니다.");
				}
				
			}, error : function(e){
				console.log(e);
			}
		})
	});//findId 끝
	
	
	$("#btnFindPW").on("click", function() { //비밀번호찾기
		if($("#findPw_name").val() === "" || $("#findPw_id").val() === ""){
			alert("이름 혹은 아이디를 입력해주세요");
			return;
		}
		
		let data = $("#findPwForm").serialize();
		console.log(data);
		$.ajax({
			url : "/findPw.mem"
			, type : "post"
			, data : data
			, success : function(rs){
				console.log("받아온 rs",rs);
				if(rs == "exist"){	
					$("#findPw_body").css("display", "none");
					$("#modifyPw_body").css("display", "block");
					$("#modifyPw_id").val($("#findPw_id").val());
					alert("변경할 비밀번호를 입력해주세요");
					
				}else if(rs === "no"){
					alert("가입된 아이디가 없습니다.");
				}
			}, error : function(e){
				console.log(e);
			}
		})
	});//findPw 끝
	
	$("#btnModifyPW").on("click", function() {
		let regexPw = /^[a-z0-9~!@#$%^&]{5,19}$/;
		
		if($("#modifyPw").val() == "" | $("#checkPw").val() == ""){
			alert("변경할 비밀번호를 입력해주세요");
			return;
		}else if( $("#modifyPw").val() != $("#checkPw").val()  ){
			alert("비밀번호와 비밀번호 확인의 값이 다릅니다.");
			return;
		}
		
		if( !regexPw.test($("#modifyPw").val()) ){
			alert("비밀번호 형식에 맞지 않습니다.");
		}
		let data =  $("#modifyForm").serialize();
		$.ajax({
			url : "/toModifyPw.mem"
			, type : "post"
			, data : data
			, success : function(rs){
				if(rs === "success"){
					alert("비밀번호가 변경되었습니다.")
					location.href = "/toLogin.mem";
				}else if(rs==="fail"){
					alert("비밀번호 변경에 실패했습니다.");
				}
			}, error : function(e){
				console.log(e);
			}
		})
		
	}); // 비밀번호 변경
	
	$(".btn-close").on("click",function(){
		clear();
	});
	
	$(".findID").on("click",function(){
		clear();
	});
	
	
function clear(){
	// 아이디 찾기 clear		
	
	$("#findId_body").show();
	$("#resultId").hide();
	$("#findId_result").empty();
	
	$("#find_phone").val("");
	$("#find_phone2").val(""); 
	$("#find_phone3").val("");
	$("#find_name").val("");
	
	// 비밀번호 찾기 clear
	
	$("#findPw_body").show();
	$("#modifyPw_body").hide();
	
	$("#modifyPw").val("");
	$("#checkPw").val("");
	$("#findPw_name").val("");
	$("#findPw_id").val("");
	$("#modifyPw_id").val("");
}
=======
$(document).ready(function () {
  $('#btnCanlcel').on('click', function () {
    self.close(); // 취소버튼 클릭 시 팝업 창닫기
  });

  $('#btnLogin').on('click', function () {
    let id = $('#id').val();
    let pw = $('#pw').val();

    if ($('#id').val() === '' || $('#pw').val() === '') {
      alert('아이디 혹은 비밀번호를 정확히 입력하세요.');
      return;
    }
    console.log('id : ', id);
    console.log('pw : ', pw);
    $('#loginForm').submit();
  });

  console.log('${rs}');
  if ('${rs}' === 'ok') {
    console.log('${rs}');
    alert('로그인 성공!');
    opener.document.location.href = '/Tohome';
    self.close();
  } else if ('${rs}' === 'no') {
    console.log('${rs}');
    alert('로그인 실패!');
  }

  $('#btnFindID').on('click', function () {
    if (
      $('#find_name').val() === '' ||
      $('#find_phone2').val() === '' ||
      $('#find_phone3').val() === ''
    ) {
      alert('이름과 전화번호를 입력해주세요.');
      return;
    }

    let phone =
      $('#find_phone1 option:selected').val() +
      $('#find_phone2').val() +
      $('#find_phone3').val();
    $('#find_phone').val(phone);

    let regexPhone = /[0-9]{11}/;

    if (!regexPhone.test(phone)) {
      alert('올바르지 않은 형식의 전화번호 입니다.');
      return;
    }

    let data = $('#findIdForm').serialize();

    $.ajax({
      url: '/findId.mem',
      type: 'post',
      data: data,
      dataType: 'json',
      success: function (id) {
        console.log('받아온 id', id);
        if (id != 'fail') {
          $('.findId_body').css('display', 'none');
          $('.findId_hiddenbody').css('display', 'block');

          for (let data of id) {
            let rs = $('<p>').html(data.user_id);
            let col = $('<div>')
              .addClass('col d-flex justify-content-center')
              .append(rs);
            let row = $('<div>').addClass('row').append(col);
            $('#findId_result').append(row);
          }
        } else {
          alert('가입된 아이디가 없습니다.');
        }
      },
      error: function (e) {
        console.log(e);
      }
    });
  }); //findId 끝

  $('#btnFindPW').on('click', function () {
    //비밀번호찾기
    if ($('#findPw_name').val() === '' || $('#findPw_id').val() === '') {
      alert('이름 혹은 아이디를 입력해주세요');
      return;
    }

    let data = $('#findPwForm').serialize();

    $.ajax({
      url: '/findPw.mem',
      type: 'post',
      data: data,
      success: function (rs) {
        console.log('받아온 rs', rs);
        if (rs == 'exist') {
          $('.findPw_body').empty();
          //prop("type", "password");
          let input = $('<input>').addClass('form-control');
        } else if (rs === 'no') {
          alert('가입된 아이디가 없습니다.');
        }
      },
      error: function (e) {
        console.log(e);
      }
    });
  }); //findPw 끝

  $('#btnSignup').on('click', function () {
    window.opener.location.href = '/toSignup.mem';
    self.close();
  });
}); //document.ready 종료
>>>>>>> 3ba0b981a4cb432b48c764ed9edadf0e4f4e42c8
