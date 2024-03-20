$(document).ready(function(){
    $('.follow-btn').on('click', function(e){
        e.preventDefault(); // 링크 클릭 시 기본 동작(페이지 이동) 방지

        var movieSeq = $("input[name='movieSeq']").val(); // hidden input에서 movieSeq 값을 가져옴
        var userId = $("input[name='user_id']").val(); // hidden input에서 userId 값을 가져옴
        var likeButton = $(this);
        var url = ""; // Ajax 호출할 URL 초기화

        // 좋아요 증가 또는 감소 서블릿 URL 설정
        if (likeButton.hasClass('liked')) {
            url = '/movie/LikeDecrease.lk'; // 좋아요 감소 처리 서블릿 URL
        } else {
            url = '/movie/LikeIncrease.lk'; // 좋아요 증가 처리 서블릿 URL
        }

        // Ajax 호출
        $.ajax({
            type: 'POST',
            url: url, // 좋아요 처리를 담당하는 서블릿 URL
            data: {
                movieSeq: movieSeq,
                userId: userId,
            },
            success: function(response){
                // 서버로부터 응답을 성공적으로 받았을 때
                var data = response; // 이미 JSON 형식으로 응답이 오기 때문에 파싱할 필요 없음

                if(data.status === 'success'){
                    // 좋아요 상태에 따라 UI 업데이트
                    if(data.action === 'like'){
                        likeButton.addClass('liked'); // 좋아요 상태 클래스 추가
                        likeButton.find('i').removeClass('fa-heart-o').addClass('fa-heart'); // 아이콘 변경
                        likeButton.text('Unfollow'); // 버튼 텍스트 변경
                    } else if(data.action === 'unlike'){
                        likeButton.removeClass('liked'); // 좋아요 상태 클래스 제거
                        likeButton.find('i').removeClass('fa-heart').addClass('fa-heart-o'); // 아이콘 변경
                        likeButton.text('Follow'); // 버튼 텍스트 변경
                    }
                } else {
                    // 서버 오류 처리
                    console.error("서버 오류: " + data.message);
                }
            },
            error: function(xhr, status, error){
                // Ajax 오류 처리
                console.error("Ajax 오류: " + error);
            }
        });
    });
});
