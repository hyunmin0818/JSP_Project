// 업데이트된 영화 조회수를 가져오는 함수
function fetchUpdatedViews(movieSeq) {
    // 서블릿에 업데이트된 조회수를 가져오기 위한 AJAX 요청 보내기
    $.ajax({
        type: "GET",
        url: "/movie/AddMovieView.mo", // 여러분의 설정에 따라 URL을 조정하세요.
        data: { "movieSeq": movieSeq },
        dataType: "json",
        success: function(response) {
            // 웹페이지에서 조회수 업데이트하기
            $('#viewsCount').text(response.updatedViews);
        },
        error: function(xhr, status, error) {
            console.error("업데이트된 조회수를 가져오는 중 오류 발생:", error);
        }
    });
}

// 웹페이지에서 조회수를 업데이트하는 함수
function updateViewsOnPage(movieSeq) {
    // 웹페이지에서 조회수를 표시할 'viewsCount'라는 id를 가진 요소가 있다고 가정합니다.
    var currentViews = parseInt($('#viewsCount').text());
    $('#viewsCount').text(currentViews + 1);

    // 이제 서버에서 업데이트된 조회수를 가져와 웹페이지에 업데이트합니다.
    fetchUpdatedViews(movieSeq);
}
