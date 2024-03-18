$(document).ready(function() {
    let liked = false;
    const ldto = {
        key1: `${movieSeq}`,
        key2: `${user_id}`,
        key3: `${movieLike}`
    };

    $('#likeButton').click(function() {
        const likeIcon = $('#likeIcon');
        
        if (liked) {
            unlikeMovie(ldto, likeIcon);
        } else {
            likeMovie(ldto, likeIcon);
        }
    });

    // 영화 좋아요 추가
    function likeMovie(ldto, likeIcon) {
        $.ajax({
            url: 'LikeIncrease',
            type: 'POST',
            data: ldto,
            success: function(response) {
                console.log('Likes added successfully.');
                likeIcon.removeClass('fa-heart-o').addClass('fa-heart');
                liked = true;
            }
        });
    }

    // 영화 좋아요 제거
    function unlikeMovie(ldto, likeIcon) {
        $.ajax({
            url: 'LikeDecrease',
            type: 'POST',
            data: ldto,
            success: function(response) {
                console.log('Likes removed successfully.');
                likeIcon.removeClass('fa-heart').addClass('fa-heart-o');
                liked = false;
            }
        });

    }
});
