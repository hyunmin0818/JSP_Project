/**
 * 
 */
document.addEventListener('DOMContentLoaded', function () {
    var sliderTopView = document.getElementById('slider-topview-range');
    var movieListContainer = document.getElementById('topview-movies');

    if (sliderTopView) {
        noUiSlider.create(sliderTopView, {
            start: [new Date(2020, 0, 2).getTime(), new Date(2024, 2, 18).getTime()], // 시작값
            connect: true,
            range: {
                'min': new Date(2020, 0, 2).getTime(),
                'max': new Date(2024, 2, 18).getTime()
            },
            step: 24 * 60 * 60 * 1000 // 1일 단위로 이동
        });

        sliderTopView.noUiSlider.on('slide', function (values, handle) {
            var startDate = new Date(parseInt(values[0], 10));
            var endDate = new Date(parseInt(values[1], 10));

            // 유효한 날짜인지 확인
            if (!isValidDate(startDate) || !isValidDate(endDate)) {
                console.error('유효하지 않은 날짜입니다.');
                // 여기에 사용자에게 경고 메시지를 표시하는 코드를 추가할 수 있습니다.
                return; // 유효하지 않은 날짜는 처리하지 않음
            }

            document.getElementById('slider-range-value').innerText = `${formatDate(startDate)} - ${formatDate(endDate)}`;

            // 유효한 날짜일 때만 서버 요청을 보냅니다.
            var startDateString = formatDateForServer(startDate);
            var endDateString = formatDateForServer(endDate);
            fetch(`/movie/getMoviesByView.mo?startDate=${startDateString}&endDate=${endDateString}`)
            .then(response => response.json())
            .then(updateMovieList)
            
        });

        // 페이지 로드 시 초기 영화 목록 불러오기
        var initialStartDate = new Date(2020, 0, 2);
        var initialEndDate = new Date(2024, 2, 18); // 여기를 수정
        var initialStartDateString = formatDateForServer(initialStartDate);
        var initialEndDateString = formatDateForServer(initialEndDate);
        fetch(`/movie/getMoviesByView.mo?startDate=${initialStartDateString}&endDate=${initialEndDateString}`)
        .then(response => response.json())
        .then(updateMovieList)
        .catch(error => console.error('초기 영화 목록 로드 오류:', error));
    }

    if (movieListContainer) {
        var mixer = mixitup(movieListContainer, {
            selectors: {
                target: '.product__sidebar__view__item'
            },
            animation: {
                duration: 350
            }
        });
    }
});

function formatDate(date) {
    var year = date.getFullYear();
    var month = String(date.getMonth() + 1).padStart(2, '0');
    var day = String(date.getDate()).padStart(2, '0');
    return `${year}-${month}-${day}`;
}

function formatDateForServer(date) {
    var year = date.getFullYear();
    var month = String(date.getMonth() + 1).padStart(2, '0');
    var day = String(date.getDate()).padStart(2, '0');
    return `${year}${month}${day}`;
}

function isValidDate(date) {
    return !isNaN(date.getTime());
}

function updateMovieList(data) {
    var movieListContainer = document.getElementById('topview-movies');
    if (!movieListContainer) return;

    movieListContainer.innerHTML = '';
    
    var defaultstillUrl = 'https://e7.pngegg.com/pngimages/2/610/png-clipart-face-with-tears-of-joy-emoji-android-crying-emoticon-emoji-face-smiley.png'; // 기본 이미지 URL을 여기에 설정하세요.
    
    data.forEach(function(movie) {
		var stillUrl = movie.stillUrl || defaultstillUrl;
        var movieHTML = `
            <div class="filter__gallery">
                <div class="product__sidebar__view__item set-bg mix day" style="background-image: url('${movie.stillUrl}');">
                    <h5><a  href="../clickPoster.mo?movieSeq=${movie.movieSeq}">${movie.title}</a></h5>

              					 	 <div class="product__item__text">
                                            <li>${movie.genre}</li>
                                     </div>
            </div>`;
        movieListContainer.innerHTML += movieHTML;
    });
}
