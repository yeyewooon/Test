/**
 * 
 */
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

      // 우편번호 api 주소 이용
      let btnPostCode = document.getElementById("btnPostCode");
      let detailAddr = document.getElementById("detailAddr");
      btnPostCode.onclick = executePostcode;

      function executePostcode() {
        new daum.Postcode({
          oncomplete: function (data) {

            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ""; // 참고 항목 변수

            if (data.bname !== "" && /[동|로|가]$/g.test(data.bname)) {
              extraRoadAddr += data.bname;
            }

            if (data.buildingName !== "" && data.apartment === "Y") {
              extraRoadAddr +=
                extraRoadAddr !== ""
                  ? ", " + data.buildingName
                  : data.buildingName;
            }
  
            if (extraRoadAddr !== "") {
              extraRoadAddr = " (" + extraRoadAddr + ")";
            }

            document.getElementById("postCode").value = data.zonecode;
            document.getElementById("roadAddr").value = roadAddr;
            document.getElementById("jibunAddr").value = data.jibunAddress;

 
          },
        }).open();
        detailAddr.focus();
      }

   
     