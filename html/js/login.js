let id ='admin';        //로그인 연습용 계정
let pw=1234;
                    
$(".site-btn").click(function(e) {  // submit 버튼의 클래스값이 'site-btn'

    if ($("#userid").val() == "") {
        alert('아이디 값을 입력해주세요');
        return false;
    }
    if ($("#userpw").val() == "") {
        alert('패스워드를 입력해주세요');
        return false;
    }
   if ($("#userid").val() != id) {
        alert('아이디 값이 맞지 않습니다');
        return false;
    }
    if ($("#userpw").val() == "") {
        alert('패스워드를 입력해주세요');
        return false;
    }
   if ($("#userpw").val() != pw) {
        alert('패스워드 값이 맞지 않습니다');
        return false;
    }

    else{
        alert("로그인 성공!!!");        
    }


});













