$("#checkTicket").click(function(e){
    location.href = "findTicket.html";
});     //마이페이지.html 버튼의 '수정' 버튼을 누를 경우 이벤트


$("#profile_modifybutton1").click(function(e){
    location.href = "mypage_modify.html";
});     //마이페이지.html 버튼의 '수정' 버튼을 누를 경우 이벤트




$(document).ready(function() {
    $("#profile_modifybutton2").click(function(e) {
      //  e.preventDefault(); // Prevent the default button click behavior

        // Your custom actions go here
        alert('수정이 완료되었습니다');

        // If needed, you can perform further actions or submit the form
        // $("#yourFormId").submit(); // Uncomment and replace "yourFormId" with your actual form ID
       
// Redirect to "mypage.html"
            //   location.href = "mypage.html";
    });
});
//마이페이지(수정).html 버튼의 '수정' 버튼을 누를 경우 이벤트


