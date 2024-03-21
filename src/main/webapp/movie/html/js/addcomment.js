/**
 * 
 */
document.getElementById('commentForm').addEventListener('click', function(event) { // 여기에 event 매개변수 추가
    event.preventDefault(); // 기본 이벤트를 방지
   
    var movieSeq = document.querySelector('[name="movieSeq"]').value;
    var comment = document.querySelector('[name="comment"]').value;

    var xhr = new XMLHttpRequest();
    xhr.open('POST', '/movie/addComment.mo', true);
    xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xhr.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var response = JSON.parse(this.responseText);
            
            if(response.status === "fail") {
                if(response.message === "로그인 필요") {
                    window.location.href = "/movie/html/login.jsp"; // 로그인 페이지로 리다이렉트
                }
            } else {
                console.log(response.message); // "댓글 등록 성공" 또는 "댓글 등록 실패"
                // 페이지 새로고침으로 댓글 목록 업데이트
            }
        }
    }; // 이곳에 누락된 중괄호 추가
    xhr.send('movieSeq=' + movieSeq + '&comment=' + encodeURIComponent(comment)); // 빠진 xhr.send() 추가
     window.location.reload();
});