let id ='admin';        //로그인 연습용 계정
let pw=1234;
                    //아이디, 비밀번호는 id 값을 userid,userpw로 설정해봤습니다
                    //값 미일치로 조회가 안될 경우 수정하셔도 됩니다
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
//로그인이  성공할 경우
//1. 로그인 버튼 배열 출력값을 바꿔주거나 (로그인,회원가입) => (마이페이지,로그아웃)
                                               


// 2. 성공할 경우의  HTML을 더 만들어야 할 듯 (이 경우 문서의 양이 2배가 됨. 수정량이 2배가 됨)








