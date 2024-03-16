        $(document).ready(function() {
            // 영화 좋아요 추가 및 좋아요 수 업데이트
            function addLikeAndUpdateLikesCount(ldto) {
                $.ajax({
                    url: 'addLikeAndUpdateLikesCount',
// <button onclick="addLikeAndUpdateLikesCount('<%= request.getContextPath() %>/LikeIncreaseAction')">Like</button>
// 호출 예시
                    type: 'POST',
                    data: ldto,
                    success: function(response) {
                        // 성공적으로 처리된 경우의 동작
                        console.log('Likes added successfully.');
                    }
                });
            }

            // 영화 좋아요 취소
            function removeLike(ldto) {
                $.ajax({
                    url: 'decrementMovieLikes',
                    type: 'POST',
                    data: ldto,
                    success: function(response) {
                        // 성공적으로 처리된 경우의 동작
                        console.log('Likes removed successfully.');
                    }
                });
            }

            // 특정 영화에 대한 좋아요 수 조회
            function getLikesCount(mdto) {
                $.ajax({
                    url: 'getLikesCount',
                    type: 'GET',
                    data: mdto,
                    success: function(response) {
                        // 성공적으로 처리된 경우의 동작
                        console.log('Likes count:', response);
                    }
                });
            }

            // 영화 좋아요 수를 내림차순으로 페이징하여 가져오기
            function getLikesCountDescPaging(start, offset) {
                $.ajax({
                    url: 'getLikesCountDescPaging',
                    type: 'GET',
                    data: { start: start, offset: offset },
                    success: function(response) {
                        // 성공적으로 처리된 경우의 동작
                        console.log('Likes count (desc) with paging:', response);
                    }
                });
            }
        });