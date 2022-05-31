$("#btnCanlcel").on("click",function(){
	self.close(); // 취소버튼 클릭 시 팝업 창닫기
});


$("#btnLogin").on("click", function() {
	let id = $("#id").val();
	let pw = $("#pw").val();
	
	if ($("#id").val() === "" || $("#pw").val() === "") {
		alert("아이디 혹은 비밀번호를 정확히 입력하세요.");
		return;
	}
	console.log("id : " , id);
	console.log("pw : " , pw);
	$("#loginForm").submit();

});

console.log("${rs}");
if("${rs}" === "ok"){
	console.log("${rs}");
	alert("로그인 성공!");
	opener.document.location.href ="/Tohome";
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
				$(".findId_body").css("display", "none");
				$(".findId_hiddenbody").css("display", "block");
				
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
	
});//findId 끝지점
	
	