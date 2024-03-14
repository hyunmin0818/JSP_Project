function getUserInfo() {
    let id = $("#userid").val();
    let pw = $("#userpw").val();
    return {
        userid: id,
        userpw: pw
    };
}


$(".site-btn").click(function(e) {  // submit 버튼의 클래스값이 'site-btn'

    let userInfo = getUserInfo();
    let id = userInfo.userid;
    let pw = userInfo.userpw;
	
    

    if (id == "") {
    	alert('아이디 값을 입력해주세요');
    	return false;
    }

    if (pw == "") {
    	alert('패스워드를 입력해주세요');
    	return false;
    }

    
    // 아이디 또는 패스워드가 일치하지 않을 때 경고 후 리턴
//       if ($("#userid").val() !== id || $("#userpw").val() !== pw) {
//        alert($("#userid").val() !== id ? '아이디 값이 맞지 않습니다' : '패스워드 값이 맞지 않습니다');
//        return false;
//    } else {
//        // 로그인 성공
//        alert("로그인 성공!!!");
//
//        }
//        
});













