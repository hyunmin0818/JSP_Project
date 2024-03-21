//$("#check_id_btn").click(function(e){
//    e.preventDefault();
//
//    var userId = $("#user_id").val();
//    $("#check_id_message").css("font-size", "12px");
//    if(userId === ""){
//        $("#check_id_message").css("color", "red");
//        $("#check_id_message").html("아이디를 입력해주세요");
//    } else if(userId === "admin"){ 
//        $("#check_id_message").css("color", "red");
//        $("#check_id_message").html("이미 존재하는 아이디입니다");
//    } else {
//        $("#check_id_message").css("color", "yellow");
//        $("#check_id_message").html("사용가능한 아이디입니다");
//    }
//});
//
//$("#user_id").blur(function(e){
//    e.preventDefault();
//    $("#check_id_message").html("");
//});
//
////비밀번호,비밀번호 확인 일치 
//$("#userpassword2").on("input", function(e) {
//    e.preventDefault();
//
//    $("#check_pw_message2").css("margin-left", "12px");
//    $("#check_pw_message2").css("font-size", "12px");
//
//    if ($(this).val() === $("#userpassword").val()) {
//        $("#check_pw_message2").css("color", "yellow");
//        $("#check_pw_message2").html("비밀번호가 일치합니다");
//    } else {
//        $("#check_pw_message2").css("color", "red");
//        $("#check_pw_message2").html("비밀번호가 일치하지 않습니다");
//    }
//});
//
//$("#userpassword2").blur(function(e){
//    $("#check_pw_message2").html("");
//});
//
//$("#userpassword2").focus(function(e){
//    $("#check_pw_message").html("");
//});
////비밀번호,비밀번호 확인 일치 2
//
//$("#userpassword").on("input", function(e) {
//    e.preventDefault();
//
//    $("#check_pw_message").css("margin-left", "12px");
//    $("#check_pw_message").css("font-size", "12px");
//
//    if ($(this).val() === $("#userpassword2").val()) {
//        $("#check_pw_message").css("color", "yellow");
//        $("#check_pw_message").html("비밀번호가 일치합니다");
//    } else {
//        $("#check_pw_message").css("color", "red");
//        $("#check_pw_message").html("비밀번호가 일치하지 않습니다");
//    }
//});
//
//$("#userpassword").blur(function(e){
//    $("#check_pw_message").html("");
//});
//
//$("#userpassword").focus(function(e){
//    $("#check_pw_message2").html("");
//});
//
//
///* 아이디 저장기능 미구현
//
//$(".site-btn").submit(function(e){
//let now = $("#check_saveId").prop("checked",false);
//let saveIdvalue="";     //아이디 저장할 변수
//if($("#check_saveId").prop("checked")=="true"){
//    let saveIdvalue=$("user_id").val();
//    $("user_id").val("saveIdvalue");
//}
//else{
//    $("user_id").val("");
//}
//
//}); 
//*/