//check_id.js 
// ==>   join_validation.js으로 수정했습니다.


//정규 표현식
// 1. 문자 클래스를 이용(\w, \W) - 문자열에 대한 정규식 수행
// 정규식 패턴	설명
// "^[\\w]*$"	문자열만 허용하는 정규식 - 공백 미 허용
// "^[\\W]*$"	문자열만 허용하는 정규식 - 공백 허용

 

// 2. 문자 클래스 이용(\d, \D) - 숫자에 대한 정규식 수행
// 정규식 패턴	설명
// "^[\\d]*$"	숫자만 허용하는 정규식
// "^[\\D]*$"	숫자가 아닌 경우 허용하는 정규식


// 3. 문자 클래스 이용(\s, \S) - 공백과 탭에 대한 정규식 수행
// 정규식 패턴	설명
// "^[\\s]*$"	공백, 탭을 허용하는 정규식
// "^[\\S]*$"	공백, 탭이 아닌 경우를 허용하는 정규식

// 4. 사용자 정의에 따른 정규식 사용 예시

//     1. 문자열에 대한 상세 정규식
//     정규식 패턴	설명
//     "^[a-z|A-Z]*$"	대소구분 없는 영문만 허용하는 정규식
//     "^[a-z]*$"	소문자만 허용하는 정규식
//     "^[A-Z]*$"	대문자만 허용하는 정규식
//     "^[ㄱ-ㅎ|가-힣]*$"	한글만 허용하는 정규식
//     "^[a-z|A-Z|ㄱ-ㅎ|가-힣]*$"	대소구분 없는 영문과 한글만 허용하는 정규식
//     "^[a-z|A-Z|ㄱ-ㅎ|가-힣| ]*$"	대소구분 없는 영문과 한글만 허용하는 정규식 (스페이스바 포함)
//     "^[0-9a-zA-Zㄱ-ㅎ가-힣]*$";	대소구분 없는 영문과 한글만 허용하는 정규식
//     "^[0-9a-zA-Zㄱ-ㅎ가-힣 ]*$";	대소구분 없는 영문과 한글, 숫자를 허용하는 정규식(스페이스바 포함)

//     2. 사용자 정보 대한 상세 정규식
//     💡 회원가입 및 사용자 정보에 관련된 정규식입니다.
//     정규식 패턴	설명
//     "^[a-zA-Z0-9]+@[0-9a-zA-Z]+\\.[a-z]+$"	사용자 이메일에 대한 정규식
//     "^[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\\.]?[0-9a-zA-Z])*\\.[a-zA-Z]{2,3}+$"	사용자 이메일에 대한 정규식 - 언더바(_), 하이픈(-) 포함 및 길이 지정
//     "^[a-z]{1}[a-z0-9]{5,10}+$"	사용자 아이디에 대한 정규식 - 영문 숫자 조합 6~10자리
//     "g";	사용자 패스워드에 대한 정규식 - 대소문자 + 숫자 + 특수문자 조합으로 10 ~ 128자리로 정의 한다.
//     "^[\\d]{11}+$";	핸드폰 번호 타입1에 대한 정규식 => ex) 01012345678
//     "^01([0|1|6|7|8|9])-([0-9]{3,4})-([0-9]{4})+$"	핸드폰 번호 타입2에 대한 정규식-1 => ex) 010-1234-5678
//     "^[\\d]{2,3}-[\\d]{3,4}-[\\d]{4}+$"	핸드폰 번호 타입2에 대한 정규식-2 => ex) 010-1234-5678
//     "^\\+82-01([0|1|6|7|8|9])-([\\d]{3,4})-([\\d]{4})+$"	핸드폰 번호 타입3에 대한 정규식 => ex) +82-010-1234-5678
//     "^\\+82-10-([\\d]{3,4})-([\\d]{4})+$"	핸드폰 번호 타입4에 대한 정규식 => ex) +82-10-1234-5678
//     "^[\\d]{6}-[1-4][\\d]{6}+$"	주민등록번호 타입에 대한 정규식
//     "^[\\d]{3}-[\\d]{2}+$"	우편 번호에 대한 정규식

  


//아이디 체크함수

function checkId(user_id){
    	
	 $("#check_id_message").css("font-size", "12px");
    if(user_id == ""){
        $("#check_id_message").css("color","red");
        $("#check_id_message").html("아이디를 입력해주세요");
    } 
    else if(user_id.length>40){
		$("#check_id_message").css("color","red");
        $("#check_id_message").html("아이디의 입력길이가 초과되었습니다");	
	}
    
    
    else {
        $.ajax({
            type: 'get', // HTTP method (GET)
            url: 'idcheck.jsp?user_id='+user_id, 
            async: true, // 비동기 통신 (true)
            success: function(result){
                // idcheck.jsp 로부터 받은 값이 ok 일떄 
                if(result.trim() == "ok"){
                    $("#check_id_message").css("color","blue");
                    $("#check_id_message").html("사용할 수 있는 아이디입니다.");  
                  // idcheck.jsp 로부터 받은 값이 ok가 아닐 떄 
                } else {
                    $("#check_id_message").css("color","red");
                    $("#check_id_message").html("이미 존재하는 아이디입니다.");
               
                }
            }, //AJAX 통신이 안 될 경우
            error: function(result,status,error){
                console.log(error);
            }
        });
    }
};

//아이디 입력창 커서에서 떌 시


$("#user_id").blur(function(e){
    e.preventDefault();
    $("#user_id").val($.trim($("#user_id").val()));
    $("#check_id_message").html("");
});



//비밀번호 유효성 검사




//userpassword의 입력값에 따른 이벤트
$("#userpassword").on("input", function(e) {

    
    e.preventDefault();
	//비밀번호 출력 메시지의 css 설정
    $("#check_pw_message").css("margin-left", "12px");
    $("#check_pw_message").css("font-size", "12px");
    $("#check_pw_message_2").css("margin-left", "12px");
    $("#check_pw_message_2").css("font-size", "12px");
    $("#check_pw_message_2").css("text-align", "right");
    $("#check_pw_message_2").css("margin-top", "-20px");
    $("#check_pw_message_2").css("margin-bottom", "-10px");

    let pattern_password = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;   //비밀번호 문자,특수문자 등 포함 조합 정규식 (8자리 이상)

	//userpassword의 값이 빈 값이 아닐 떄
    if($("#userpassword").val() != ""){
	
	//userpassword의 값 validation 검사	
    if(pattern_password.test($("#userpassword").val())){
        $("#check_pw_message").css("color", "blue");
        $("#check_pw_message").html("비밀번호 입력 요구 조건에 맞습니다");
        }
		
        else{
            $("#check_pw_message").css("color", "red");
            $("#check_pw_message").html("특수문자 대소문자 숫자 조합해주세요(8자리)");
        }
    /*
    if ($(this).val() === $("#userpassword2").val()) {
        $("#check_pw_message_2").css("color", "blue");
        $("#check_pw_message_2").html("비밀번호가 일치합니다");
    } else {
        $("#check_pw_message_2").css("color", "red");
        $("#check_pw_message_2").html("비밀번호가 일치하지 않습니다");
    }
    */
}

	//userpassword의 값이 빈 값일 경우
    else{
        $("#check_pw_message_2").css("color", "red");
        $("#check_pw_message_2").html("비밀번호를 입력해주세요");
    }

});

//userpassword 입력창을 커서에서 땔 경우
$("#userpassword").blur(function(e){
    if($(this).val() == "") {
		
		//비밀번호 조건 메시지의 css 설정
        $("#check_pw_message").css("margin-left", "12px");
        $("#check_pw_message").css("font-size", "12px");
        $("#check_pw_message").css("color", "red");
        

        $("#check_pw_message_2").css("margin-left", "12px");
        $("#check_pw_message_2").css("font-size", "12px");
        $("#check_pw_message_2").css("color", "red");
        $("#check_pw_message_2").html("비밀번호를 입력해주세요");
       
    } else {
        $("#check_name_message").html("");
        $("#check_name_message_2").html("");
    }
});

//userpassword의 입력창에 커서를 올릴 경우
$("#userpassword").focus(function(e){
    $("#check_pw_message2").html("");
    $("#check_pw_message2_2").html("");
});





//비밀번호 확인


$("#userpassword2").on("input", function(e) {
    e.preventDefault();

    let pattern_password2 = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;   //비밀번호 문자,특수문자 등 포함 조합 정규식 (8자리 이상)

    $("#check_pw_message2").css("margin-left", "12px");
    $("#check_pw_message2").css("font-size", "12px");
    $("#check_pw_message2_2").css("margin-left", "12px");
    $("#check_pw_message2_2").css("font-size", "12px");



    if ($(this).val() === $("#userpassword").val()) {
        $("#check_pw_message2").css("color", "blue");
        $("#check_pw_message2").html("비밀번호가 일치합니다");
        
    } else {
        $("#check_pw_message2").css("color", "red");
        $("#check_pw_message2").html("비밀번호가 일치하지 않습니다");
       
    }
});


//userpassword2의 입력창을 커서에서 떌 경우

$("#userpassword2").blur(function(e){
    if($(this).val() == "") {
        $("#check_pw_message2").css("margin-left", "12px");
        $("#check_pw_message2").css("font-size", "12px");
        $("#check_pw_message2").css("color", "red");
        $("#check_pw_message2").html("비밀번호를 입력해주세요");
    } else {
        $("#check_name_message2").html("");
    }
});

//userpassword2의 입력창에 커서를 올릴 경우
$("#userpassword2").focus(function(e){
    $("#check_pw_message").html("");
});






//이름 validation


// 정규표현식을 사용하여 앞의 공백을 제거 (예를 들어 '   abc def' => 'abc def')
function removeLeadingWhitespace(inputString) {
    return inputString.replace(/^\s+/, ''); 
}



//username의 입력창에 대한 이벤트
$("#username").on("input", function(e) {


    e.preventDefault();
    let pattern_username=/^[a-z|A-Z|ㄱ-ㅎ|가-힣| ]*$/;    //숫자만 입력 불가(공백 허용)

	
	//username의 css 설정
	
    $("#check_name_message").css("margin-left", "12px");
    $("#check_name_message").css("font-size", "12px");
    
    //username의 값이 빈 값이 아닐 경우
    if ($(this).val() !== "") {

        if(pattern_username.test($("#username").val())){
            $("#check_name_message").css("color", "blue");
            $("#check_name_message").html("이름 입력 완료");
         
            }
            else if(!pattern_username.test($("#username").val())){
                $("#check_name_message").css("color", "red");
                $("#check_name_message").html("이름 입력 양식에 맞지 않습니다");
                }
                



    } else {
        $("#check_name_message").css("color", "red");
        $("#check_name_message").html("이름을 입력해주세요");
    }


});

//username 의 입력창을 커서에서 떌 경우
$("#username").blur(function(e){   
    if($(this).val() == "") {
		e.preventDefault();
		//username의 css 설정
        $("#check_name_message").css("margin-left", "12px");
        $("#check_name_message").css("font-size", "12px");
        $("#check_name_message").css("color", "red");
        $("#check_name_message").html("이름을 입력해주세요");
    } else {
		//이름 공백 제거
        $(this).val(removeLeadingWhitespace($(this).val()));
        $("#check_name_message").html("");
    }
});



// 생년월일 validation

$("#userbirth").on("input", function(e) {
  
    e.preventDefault();
    
    $("#check_birth_message").css("margin-left", "12px");
    $("#check_birth_message").css("font-size", "12px");

//주민번호 6자리에 관한 validation
let pattern_birth = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))/;
    
    
     if ($(this).val() !== "") {

        if(pattern_birth.test($("#userbirth").val())){
          $("#check_birth_message").css("color", "blue");
        	$("#check_birth_message").html("생년월일 설정 완료");
         
            }
            else if(!pattern_birth.test($("#userbirth").val())){
             $("#check_birth_message").css("color", "red");
        	$("#check_birth_message").html("입력 양식이 맞지 않습니다");
             }
    

    
     
    } else {
        $("#check_birth_message").css("color", "red");
        $("#check_birth_message").html("생년월일을 설정해주세요");
      
    }
});





$("#userbirth").blur(function(e){ 
	  e.preventDefault();
    if($(this).val() == "") {
        $("#check_birth_message").css("margin-left", "12px");
        $("#check_birth_message").css("font-size", "12px");
        $("#check_birth_message").css("color", "red");
        $("#check_birth_message").html("생년월일을 설정해주세요");
        //flag[4]=false;
    } else {
        $("#check_birth_message").html("");
    }
});



// 휴대폰 validation

function phoneNumber(value) {           //01234567890 => 012-3456-7890 자동 하이픈
    value = value.replace(/[^0-9]/g, "");
    return value.replace(
      /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/,
      "$1-$2-$3"
    );
  }

$("#userphone").on("input", function(e) {
    e.preventDefault();
    let pattern_userphone = /^01([0|1|6|7|8|9])-([0-9]{3,4})-([0-9]{4})+$/; // 형식 : 012-1234-5678
    
   //연락처 validation 입력 메시지 css 설정
    $("#check_phone_message").css("margin-left", "12px");
    $("#check_phone_message").css("font-size", "12px");
   
   
   //userphone의 값이 빈 값이 아닐 떄
    if ($("#userphone").val() !== "") {
	
	//입력 시 연락처 자동완성
     $("#userphone").val(phoneNumber($("#userphone").val()));

				//연락처 validation 조건 확인
                  if(pattern_userphone.test($("#userphone").val())){
                   $("#check_phone_message").css("color", "blue");
                        $("#check_phone_message").html("연락처 입력 완료");
                      
                     }
                   else if(!pattern_userphone.test($("#userphone").val())){
                         $("#check_phone_message").css("color", "red");
                        $("#check_phone_message").html("연락처 양식에 맞지 않습니다");
                       
                        }
          


    } else {
        $("#check_phone_message").css("color", "red");
        $("#check_phone_message").html("연락처를 입력해주세요");
        
    }

});

// 연락처 입력창 커서에서 떌 시

$("#userphone").blur(function(e){
	e.preventDefault();   
    if($(this).val() == "") {
        $("#check_phone_message").css("margin-left", "12px");
        $("#check_phone_message").css("font-size", "12px");
        $("#check_phone_message").css("color", "red");
        $("#check_phone_message").html("연락처를 입력해주세요");
        
    } else {
        $("#check_phone_message").html("");
    }
});


// 이메일 validation

$("#email").on("input", function(e) {
    e.preventDefault();

    let pattern_email=/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i;   //이메일 정규표현식


    $("#check_email_message").css("margin-left", "12px");
    $("#check_email_message").css("font-size", "12px");
    if ($(this).val() !== "") {
         $("#email").val($.trim($("#email").val())); //이메일 앞 공백 제거
        if(pattern_email.test($("#email").val())){
        $("#check_email_message").css("color", "blue");
        $("#check_email_message").html("이메일 입력 완료");
        }
        else if(!pattern_email.test($("#email").val())){
            $("#check_email_message").css("color", "red");
            $("#check_email_message").html("이메일 양식에 맞지 않습니다");     
            }



    } else {
        $("#check_email_message").css("color", "red");
        $("#check_email_message").html("이메일을 입력해주세요");
    }
});

// 이메일 입력창 커서에서 떌 경우

$("#email").blur(function(e){
	e.preventDefault();   
    if($(this).val() == "") {
        $("#check_email_message").css("margin-left", "12px");
        $("#check_email_message").css("font-size", "12px");
        $("#check_email_message").css("color", "red");
        $("#check_email_message").html("이메일을 입력해주세요");
    } else {
        $("#check_email_message").html("");
    }
});

//폼 제출

function sendit(event) {
    event.preventDefault();

    // 유효성검사 확인 변수
    let pattern_username=/^[a-z|A-Z|ㄱ-ㅎ|가-힣| ]*$/; //이름 정규표현식 (숫자제외)
    let pattern_password = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;   //비밀번호 문자,특수문자 등 포함 조합 정규식 (8자리 이상)
    let pattern_password2 = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;   //비밀번호 문자,특수문자 등 포함 조합 정규식 (8자리 이상)
    let pattern_userphone = /^01([0|1|6|7|8|9])-([0-9]{3,4})-([0-9]{4})+$/; // 형식 : 012-1234-5678
 	let pattern_email=/^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/i; //이메일 정규표현식
 	let pattern_birth = /^(?:[0-9]{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[1,2][0-9]|3[0,1]))/; //주민번호 6자리 정규 표현식
 	

    if ($("#user_id").val() === "") {		 
        alert('아이디를 입력하세요');
        $("#user_id").focus();
        return false;
    }

    if ($("#user_id").val().length > 40) {
        alert('입력 숫자를 초과하였습니다');
        $("#user_id").focus();
        return false;
    }

    if ($("#userpassword").val() === "") {
        alert('비밀번호를 입력하세요');
        $("#userpassword").focus();
        return false;
    }

    if (!pattern_password.test($("#userpassword").val())) {
        alert('비밀번호 입력 조건에 맞지 않습니다');
        $("#userpassword").focus();
        return false;
    }

    if (!pattern_password2.test($("#userpassword2").val())) {
        alert('비밀번호 확인 입력 조건에 맞지 않습니다');
        $("#userpassword2").focus();
        return false;
    }

    if ($("#userpassword").val() !== $("#userpassword2").val()) {
        alert('비밀번호가 일치하지 않습니다');
        $("#userpassword2").focus();
        return false;
    }

    if (!pattern_username.test($("#username").val())) {
        alert('이름 입력 조건에 맞지 않습니다');
        $("#username").focus();
        return false;
    }
    
   if ($("#userbirth").val().length > 6 || $("#userbirth").val() === "") {
    alert('생년월일 입력 조건에 맞지 않습니다');
    $("#userbirth").focus();
    return false;
	}
   
   	  if (!pattern_birth.test($("#userbirth").val())) {
        alert('생일 입력 조건에 맞지 않습니다');
        $("#userbirth").focus();
        return false;
    }

    
	
	

    if (!pattern_userphone.test($("#userphone").val())) {
        alert('전화번호 입력 조건에 맞지 않습니다');
        $("#userphone").focus();
        return false;
    }

    if (!pattern_email.test($("#email").val())) {
        alert('이메일 입력 조건에 맞지 않습니다');
        $("#email").focus();
        return false;
    }

    // 모든 조건이 만족되었을 때 폼을 제출합니다.
    
    
    alert('가입이 완료되었습니다');
    loginform.submit();








}

