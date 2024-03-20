// 영화 포스터 클릭 시 조회수를 업데이트합니다.
document.addEventListener('DOMContentLoaded', function() {
    var moviePosters = document.querySelectorAll('.moviePoster');
    moviePosters.forEach(function(poster) {
        poster.addEventListener('click', function() {
            // 클릭된 영화 포스터의 data-movie-seq 속성값을 가져와서 사용합니다.
            var movieSeq = poster.dataset.movieSeq;
            updateViewsOnPage(movieSeq);
        });
    });
});

function updateViewsOnPage(movieSeq) {
    // 웹페이지에서 조회수를 표시하는 요소의 id를 가진 요소를 가져옵니다.
    var viewsCountElement = document.getElementById('viewsCount');
    console.log(movieSeq);
    // 클릭된 영화의 조회수를 1 증가시킵니다.
    var currentViews = parseInt(viewsCountElement.textContent);
    viewsCountElement.textContent = currentViews + 1;
    
    // AJAX를 사용하여 서버에 업데이트된 조회수를 요청합니다.
    var xhr = new XMLHttpRequest();
    xhr.open('GET', '/movie/clickPoster.mo?movieSeq=' + movieSeq, true);
    xhr.onreadystatechange = function() {
        if (xhr.readyState === XMLHttpRequest.DONE) {
            if (xhr.status === 200) {
                // 서버에서 응답이 성공적으로 왔을 때 조회수를 업데이트합니다.
                var response = JSON.parse(xhr.responseText);
                viewsCountElement.textContent = response.updatedViews;
            } else {
                // 서버 응답이 실패한 경우 오류 메시지를 출력합니다.
                console.error('서버 응답 오류:', xhr.status);
            }
        }
    };
    xhr.send();
}

// 영화 포스터 클릭 시 조회수를 업데이트합니다.
document.addEventListener('DOMContentLoaded', function() {
    var moviePosters = document.querySelectorAll('.moviePoster');
    moviePosters.forEach(function(poster) {
        poster.addEventListener('click', function() {
            // 클릭된 영화 포스터의 data-movie-seq 속성값을 가져와서 사용합니다.
            var movieSeq = poster.dataset.movieSeq;
            updateViewsOnPage(movieSeq);
        });
    });
});