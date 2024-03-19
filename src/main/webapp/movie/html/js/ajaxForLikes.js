// like_button.js

$(document).ready(function(){
    $('.follow-btn').on('click', function(e){
        e.preventDefault(); // 링크 클릭 시 기본 동작(페이지 이동) 방지

    	var movieSeq = $("input[name='movieSeq']").val(); // hidden input에서 movieSeq 값을 가져옴
        var userId = $("input[name='user_id']").val(); // hidden input에서 userId 값을 가져옴
        var likeButton = $(this);

        // Ajax 호출
        $.ajax({
            type: 'POST',
            url: '/movie/LikeIncrease.lk', // 좋아요 처리를 담당하는 JSP 파일 URL
            data: {
                movieSeq: movieSeq,
                userId: userId,
                like: 1 // 좋아요 버튼을 눌렀으므로 like 값은 1로 설정
            },
            success: function(response){
                if(response === 'liked'){
                    likeButton.find('i').removeClass('fa-heart-o').addClass('fa-heart'); // 좋아요 상태로 변경
                    likeButton.text('Unfollow'); // 버튼 텍스트 변경
                    likeButton.off('click'); // 클릭 이벤트 제거
                    likeButton.on('click', function(e){ // 새로운 클릭 이벤트 추가 (Unfollow 버튼 클릭 시)
                        e.preventDefault();
                        // Ajax 호출 - 좋아요 취소 기능 추가
                        $.ajax({
                            type: 'POST',
                            url: 'LikeDecrease.lk',
                            data: {
                                movieSeq: movieSeq,
                                userId: userId,
                                like: 0 // 좋아요 취소 버튼을 눌렀으므로 like 값은 0으로 설정
                            },
                            success: function(response){
                                if(response === 'unliked'){
                                    likeButton.find('i').removeClass('fa-heart').addClass('fa-heart-o'); // 좋아요 취소 상태로 변경
                                    likeButton.text('Follow'); // 버튼 텍스트 변경
                                    likeButton.off('click'); // 클릭 이벤트 제거
                                    likeButton.on('click', function(e){ // 새로운 클릭 이벤트 추가 (Follow 버튼 클릭 시)
                                        e.preventDefault();
                                        // 좋아요 기능 추가
                                    });
                                } else {
                                    // 에러 처리
                                }
                            },
                            error: function(xhr, status, error){
                                // 에러 처리
                            }
                        });
                    });
                } else {
                    // 에러 처리
                }
            },
            error: function(xhr, status, error){
                // 에러 처리
            }
        });
    });
});
