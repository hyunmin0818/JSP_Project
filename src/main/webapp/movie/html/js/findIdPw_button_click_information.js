$("#forgot_id_button").click(function(e){   //물음표 버튼 클릭할 시 
    
    $("#forgot_id_message").toggleClass('forgot_idpw_message');
    
    if($("#forgot_id_message").hasClass('forgot_idpw_message')){
        $("#forgot_id_message").html("비밀번호가 기억나지 않으세요?<br> 원하시는 방법을 선택하여 아이디를 확인하실 수 있습니다." +
        " 본인인증 시 제공되는 정보는 해당 인증기관에서 직접 수집 하며," +
        " 인증 이외의 용도로 이용 또는 저장하지 않습니다.");
    } else{
        $("#forgot_id_message").html("");
    }

});

$("#forgot_pw_button").click(function(e){   //물음표 버튼 클릭할 시 
    
    $("#forgot_pw_message").toggleClass('forgot_idpw_message');
    
    if($("#forgot_pw_message").hasClass('forgot_idpw_message')){
        $("#forgot_pw_message").html("아이디가 기억나지 않으세요?<br> 원하시는 방법을 선택하여 비밀번호를 확인하실 수 있습니다." +
        " 본인인증 시 제공되는 정보는 해당 인증기관에서 직접 수집 하며," +
        " 인증 이외의 용도로 이용 또는 저장하지 않습니다.");
    } else{
        $("#forgot_pw_message").html("");
    }

});