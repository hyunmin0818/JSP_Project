// 서버로부터 댓글 수를 가져오는 함수
function fetchCommentCountFromServer(movieSeq) {
    $.ajax({
        type: "GET",
        url: "/movie/updateComment.mo", // 서블릿의 URL 경로를 맞게 조정하세요.
        data: { "movieSeq": movieSeq },
        dataType: "json",
        success: function(response) {
            // 가져온 댓글 수를 화면에 전달하기
            displayCommentCount(response.commentCount);
        },
        error: function(xhr, status, error) {
            console.error("서버로부터 댓글 수를 가져오는 중 오류 발생:", error);
        }
    });
}

// 화면에 댓글 수를 전달하는 함수
function displayCommentCount(commentCount) {
    // 웹페이지의 적절한 요소에 댓글 수를 표시
    $('#commentCount').text(commentCount);
}
