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


//let flag = new Array(7); 



let flag ={
	user_id : false,
	userpassword  : false,
	userpassword2  : false,
	username  : false,
	userbirth  : false ,
	userphone  : false,
	email : false	
};

let new_word="";

$("#user_id").on("input", function(e) {
	
    
    e.preventDefault();
     $("#check_id_message").css("font-size", "12px");
		if($("#user_id").val()==""){
			$("#check_id_message").css("color", "red");
		$("#check_id_message").html("아이디를 입력해주세요");
		flag[0]=false;
		return false;
			} 
	
		if($("#user_id").val().length>20){
			$("#check_id_message").css("color", "red");
		$("#check_id_message").html("20자 내로 입력해주세요");
		flag[0]=false;
		return false;
			} 
    
  
});

	 function checkId(user_id){
		 $("#check_id_message").css("font-size", "12px");
			if($("#user_id").val()==""){
				$("#check_id_message").css("color", "red");
			$("#check_id_message").html("아이디를 입력해주세요");
			flag[0]=false;
			return false;
		} 
		
			if($("#user_id").length>20){
				$("#check_id_message").css("color", "red");
			$("#check_id_message").html("아이디를 20자 내로 입력해주세요");
			flag[0]=false;
			return false;
		} 
	
		else {
			// ajax
//			let xhr = new XMLHttpRequest();
//			xhr.open("GET","${pageContext.request.contextPath}/movie/idcheck.jsp?user_id="+user_id,true);
//			xhr.send();
//			xhr.onreadystatechange = function(){
//				if( xhr.readyState == XMLHttpRequest.DONE
//						&& xhr.status == 200 ){
//					// 만약 회원가입이 가능한 아이디라면
//					// id가 text영역에 "사용할 수 있는 아이디입니다" 출력
//					// 그렇지 않다면
//					// id가 text영역에 "중복된 아이디입니다" 출력
//					//alert(xhr.responseText.trim());
//					
//						
//					if(xhr.responseText.trim() == "ok"){
//						 $("#check_id_message").css("color", "yellow");
//	      				  $("#check_id_message").html("사용가능한 아이디입니다");
//	         				flag[0]=true;
//	         				
//					}
//	         				
//					else {
//						  $("#check_id_message").css("color", "red");
//					        $("#check_id_message").html("이미 존재하는 아이디입니다");
//					         flag[0]=false;
//						}
//				}	
//				}
				
				
				
				
				
				
				
				
				
				
			/*function checkId3(userid){
	
				if(userid == ""){
					  $("#check_id_message").css("color", "red");
					        $("#check_id_message").html("아이디를 입력해주세요");
					         flag[0]=false;
				}else{*/
					//jQuery ajax
					$.ajax({
						type : 'post', //타입
						url : 'idcheck.jsp',
						data : {'user_id' : user_id},
						async : true, 		//비동기화여부 (비동기: true)
						success : function(result){
							if(result.trim() == "ok"){
						 $("#check_id_message").css("color", "yellow");
	      				  $("#check_id_message").html("사용가능한 아이디입니다");
	         				flag[0]=true;
	         				
								} else {
									 $("#check_id_message").css("color", "red");
					       			 $("#check_id_message").html("아이디를 입력해주세요");
					         		flag[0]=false;
										}
									},
							
						error : function(result,status,error){
							console.log(error);
							
								}
							
						});	
					
					
						
					}
				};
									
				
				
				
			
	 
	

$("#check_id_btn").click(function() {
    checkId($("#user_id").val());
});



//$("#check_id_btn").click(function(e){   
//    e.preventDefault();
//	flag[0]=false;
//    var userId = $("#user_id").val();
//    $("#check_id_message").css("font-size", "12px");
//    if(userId == ""){
//        $("#check_id_message").css("color", "red");
//        $("#check_id_message").html("아이디를 입력해주세요");
//        flag[0]=false;
//    } else if(userId === "admin"){ 
//        $("#check_id_message").css("color", "red");
//        $("#check_id_message").html("이미 존재하는 아이디입니다");
//         flag[0]=false;
//    } else {
//        $("#check_id_message").css("color", "yellow");
//        $("#check_id_message").html("사용가능한 아이디입니다");
//         flag[0]=true;
//    }
//});

/*$("#user_id").blur(function(e){
    e.preventDefault();
    $("#check_id_message").html("");
});*/


$("#user_id").blur(function(e){ 
	e.preventDefault();  
    if($(this).val() == "") {
        $("#check_name_message").css("margin-left", "12px");
        $("#check_name_message").css("font-size", "12px");
        $("#check_name_message").css("color", "red");
        $("#check_name_message").html("이름을 입력해주세요");
        flag[3]=false;
    } else {
        $(this).val(removeLeadingWhitespace($(this).val()));
        $("#check_name_message").html("");
    }
});






















//비밀번호 유효성 검사


//비밀번호,비밀번호 확인 일치 
$("#userpassword").on("input", function(e) {
	
    flag[1]=false;
    e.preventDefault();

    $("#check_pw_message").css("margin-left", "12px");
    $("#check_pw_message").css("font-size", "12px");
    $("#check_pw_message_2").css("margin-left", "12px");
    $("#check_pw_message_2").css("font-size", "12px");
    $("#check_pw_message_2").css("text-align", "right");
    $("#check_pw_message_2").css("margin-top", "-20px");
    $("#check_pw_message_2").css("margin-bottom", "-10px");

    let pattern_password = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;   //비밀번호 문자,특수문자 등 포함 조합 정규식

    if($("#userpassword").val() != ""){
    if(pattern_password.test($("#userpassword").val())){
        $("#check_pw_message").css("color", "yellow");
        $("#check_pw_message").html("비밀번호 입력 요구 조건에 맞습니다");
        flag[1]=true;
        }

        else{
            $("#check_pw_message").css("color", "red");
            $("#check_pw_message").html("특수문자 대소문자 8자리 이상 조합해주세요");
            flag[1]=false;
        }
    /*
    if ($(this).val() === $("#userpassword2").val()) {
        $("#check_pw_message_2").css("color", "yellow");
        $("#check_pw_message_2").html("비밀번호가 일치합니다");
    } else {
        $("#check_pw_message_2").css("color", "red");
        $("#check_pw_message_2").html("비밀번호가 일치하지 않습니다");
    }
    */
}

    else{
        $("#check_pw_message_2").css("color", "red");
        $("#check_pw_message_2").html("비밀번호를 입력해주세요");
        flag[1]=false;
    }

});


$("#userpassword").blur(function(e){
    if($(this).val() == "") {
        $("#check_pw_message").css("margin-left", "12px");
        $("#check_pw_message").css("font-size", "12px");
        $("#check_pw_message").css("color", "red");

        $("#check_pw_message_2").css("margin-left", "12px");
        $("#check_pw_message_2").css("font-size", "12px");
        $("#check_pw_message_2").css("color", "red");
        $("#check_pw_message_2").html("비밀번호를 입력해주세요");
        flag[1]=false;
    } else {
        $("#check_name_message").html("");
        $("#check_name_message_2").html("");
    }
});

$("#userpassword").focus(function(e){
    $("#check_pw_message2").html("");
    $("#check_pw_message2_2").html("");
});





//비밀번호 확인




//비밀번호,비밀번호 확인 일치 2

$("#userpassword2").on("input", function(e) {
    e.preventDefault();
	//flag[2]=
    let pattern_password2 = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;   //비밀번호 문자,특수문자 등 포함 조합 정규식

    $("#check_pw_message2").css("margin-left", "12px");
    $("#check_pw_message2").css("font-size", "12px");
    $("#check_pw_message2_2").css("margin-left", "12px");
    $("#check_pw_message2_2").css("font-size", "12px");



    if ($(this).val() === $("#userpassword").val()) {
        $("#check_pw_message2").css("color", "yellow");
        $("#check_pw_message2").html("비밀번호가 일치합니다");
           flag[2]=true;
    } else {
        $("#check_pw_message2").css("color", "red");
        $("#check_pw_message2").html("비밀번호가 일치하지 않습니다");
        flag[2]=false;
    }
});

$("#userpassword2").blur(function(e){
    if($(this).val() == "") {
        $("#check_pw_message2").css("margin-left", "12px");
        $("#check_pw_message2").css("font-size", "12px");
        $("#check_pw_message2").css("color", "red");
        $("#check_pw_message2").html("비밀번호를 입력해주세요");
         flag[2]=false;
    } else {
        $("#check_name_message2").html("");
    }
});

$("#userpassword2").focus(function(e){
    $("#check_pw_message").html("");
});






//이름 validation

function removeLeadingWhitespace(inputString) {
    return inputString.replace(/^\s+/, ''); // 정규표현식을 사용하여 앞의 공백을 제거
}




$("#username").on("input", function(e) {


    e.preventDefault();
    let pattern_username=/^[a-z|A-Z|ㄱ-ㅎ|가-힣| ]*$/;    //숫자만 입력 불가(공백 허용)



    $("#check_name_message").css("margin-left", "12px");
    $("#check_name_message").css("font-size", "12px");
    if ($(this).val() !== "") {



        
            // var inputValue = $("#username").val();
            // var updatedValue = inputValue.replace(/[\u3131-\uD79D]/gi, '').replace(/[^a-zA-Z\s]/g, '');
        
            // $("#username").val(updatedValue);
    
		if(pattern_username.test($("#username").val())){
            $("#check_name_message").css("color", "yellow");
            $("#check_name_message").html("이름 입력 완료");
              flag[3]=true;
            }
        


        
       // $("#username").val($.trim($("#username").val())); //이름 앞 공백 제거
        if(pattern_username.test($("#username").val())){
			if($("#username").val().length<=20){
            $("#check_name_message").css("color", "yellow");
            $("#check_name_message").html("이름 입력 완료");
            flag[3]=true;
            }
           else {
            $("#check_name_message").css("color", "red");
            $("#check_name_message").html("이름을 20자 미만으로 입력하세요");
            flag[3]=false;
            }
            
            }
            else if(!pattern_username.test($("#username").val())){
                $("#check_name_message").css("color", "red");
                $("#check_name_message").html("이름 입력 양식에 맞지 않습니다");
                }
                




    } else {
        $("#check_name_message").css("color", "red");
        $("#check_name_message").html("이름을 입력해주세요");
        flag[3]=false;
    }


});


$("#username").blur(function(e){   
    if($(this).val() == "") {
        $("#check_name_message").css("margin-left", "12px");
        $("#check_name_message").css("font-size", "12px");
        $("#check_name_message").css("color", "red");
        $("#check_name_message").html("이름을 입력해주세요");
        flag[3]=false;
    } else {
        $(this).val(removeLeadingWhitespace($(this).val()));
        $("#check_name_message").html("");
    }
});


//프로필 사진 validation (아직 미구현)






// 생년월일 validation

$("#userbirth").on("input", function(e) {
  
    e.preventDefault();
    
    $("#check_birth_message").css("margin-left", "12px");
    $("#check_birth_message").css("font-size", "12px");


    if ($(this).val() !== "") {
        $("#check_birth_message").css("color", "yellow");
        $("#check_birth_message").html("생년월일 설정 완료");
        flag[4]=true;
    } else {
        $("#check_name_message").css("color", "red");
        $("#check_name_message").html("생년월일을 설정해주세요");
         flag[4]=false;
    }
});


$("#userbirth").blur(function(e){   
    if($(this).val() == "") {
        $("#check_birth_message").css("margin-left", "12px");
        $("#check_birth_message").css("font-size", "12px");
        $("#check_birth_message").css("color", "red");
        $("#check_birth_message").html("생년월일을 설정해주세요");
        flag[4]=false;
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
    
   
    $("#check_phone_message").css("margin-left", "12px");
    $("#check_phone_message").css("font-size", "12px");
    if ($("#userphone").val() !== "") {

                $("#userphone").val(phoneNumber($("#userphone").val()));


                  if(pattern_userphone.test($("#userphone").val())){
                   $("#check_phone_message").css("color", "yellow");
                        $("#check_phone_message").html("연락처 입력 완료");
                        flag[5]=true;
                     }
                   else if(!pattern_userphone.test($("#userphone").val())){
                         $("#check_phone_message").css("color", "red");
                        $("#check_phone_message").html("연락처 양식에 맞지 않습니다");
                        flag[5]=false;
                        }
          


    } else {
        $("#check_phone_message").css("color", "red");
        $("#check_phone_message").html("연락처를 입력해주세요");
          flag[5]=false;
    }

});


$("#userphone").blur(function(e){   
    if($(this).val() == "") {
        $("#check_phone_message").css("margin-left", "12px");
        $("#check_phone_message").css("font-size", "12px");
        $("#check_phone_message").css("color", "red");
        $("#check_phone_message").html("연락처를 입력해주세요");
          flag[5]=false;
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
				if($("#email").val().length<=40){
	        $("#check_email_message").css("color", "yellow");
	        $("#check_email_message").html("이메일 입력 완료");
	          flag[6]=true;
	        }
	        
	        	else{
	        $("#check_email_message").css("color", "red");
	       	 $("#check_email_message").html("40자 미만으로 입력하세요");
	       	 flag[6]=false;
	        }
        
        }
        else if(!pattern_email.test($("#email").val())){
            $("#check_email_message").css("color", "red");
            $("#check_email_message").html("이메일 양식에 맞지 않습니다");
             flag[6]=false;
            }



    } else {
        $("#check_email_message").css("color", "red");
        $("#check_email_message").html("이메일을 입력해주세요");
         flag[6]=false;
    }
});


$("#email").blur(function(e){   
    if($(this).val() == "") {
        $("#check_email_message").css("margin-left", "12px");
        $("#check_email_message").css("font-size", "12px");
        $("#check_email_message").css("color", "red");
        $("#check_email_message").html("이메일을 입력해주세요");
         flag[6]=false;
    } else {
        $("#check_email_message").html("");
    }
});


let index_position;
 
$("#join_submit").submit(function(e){
	alert('asdf');
	for(let i =0; i<flag.length;i++){
		if(flag[i]===false){
			index_position=i;
			new_word="#"+flag[index_position];
			$(new_word).focus();
			alert(flag[index_position]+'을 수정해주세요');
			return false;
		}
			else{
				
				alert('가입성공!!!!!!!!!');
				$(this).submit();
				}
	}


}); 














/* 아이디 저장기능 미구현

$(".site-btn").submit(function(e){
let now = $("#check_saveId").prop("checked",false);
let saveIdvalue="";     //아이디 저장할 변수
if($("#check_saveId").prop("checked")=="true"){
    let saveIdvalue=$("user_id").val();
    $("user_id").val("saveIdvalue");
}
else{
    $("user_id").val("");
}

}); 
*/