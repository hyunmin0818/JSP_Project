/*  ---------------------------------------------------
    Theme Name: Anime
    Description: Anime video tamplate
    Author: Colorib
    Author URI: https://colorib.com/
    Version: 1.0
    Created: Colorib
---------------------------------------------------------  */

'use strict';

(function ($) {

    /*------------------
        Preloader
    --------------------*/
    $(window).on('load', function () {
        $(".loader").fadeOut();
        $("#preloder").delay(200).fadeOut("slow");

        /*------------------
            FIlter
        --------------------*/
        $('.filter__controls li').on('click', function () {
            $('.filter__controls li').removeClass('active');
            $(this).addClass('active');
        });
        if ($('.filter__gallery').length > 0) {
            var containerEl = document.querySelector('.filter__gallery');
            var mixer = mixitup(containerEl);
        }
    });

    /*------------------
        Background Set
    --------------------*/
    $('.set-bg').each(function () {
        var bg = $(this).data('setbg');
        $(this).css('background-image', 'url(' + bg + ')');
    });
   

   $(document).ready(function() {
    // 검색 아이콘 클릭 시 모달 표시
    $('.search-switch').on('click', function (e) {
        e.preventDefault(); // 기본 이벤트 막기
        $('.search-model').fadeIn(400);
    });

    // 검색창 닫기 버튼 클릭 시 모달 숨기기
    $('.search-close-switch').on('click', function () {
        $('.search-model').fadeOut(400, function () {
            $('#search-input').val(''); // 검색창 초기화
        });
    });

    // 검색창에서 엔터 키 입력 처리
    $('#search-input').on('keypress', function(e) {
        if(e.which == 13) { // 엔터 키의 코드는 13
            e.preventDefault(); // 폼 제출 막기
            var searchQuery = $(this).val(); // 검색창의 값을 가져옴
            var contextPath = "${pageContext.request.contextPath}";
            var searchPath = "/movie/searchMovie.mo";
            
            if(searchQuery.trim() !== '') {
               window.location.href = searchPath + "?searchParameter=" + encodeURIComponent(searchQuery);
            }
        }
    });
});
    /*------------------
		Navigation
	--------------------*/
    $(".mobile-menu").slicknav({
        prependTo: '#mobile-menu-wrap',
        allowParentLinks: true
    });

    /*------------------
		Hero Slider
	--------------------*/
    var hero_s = $(".hero__slider");
    hero_s.owlCarousel({
        loop: true,
        margin: 0,
        items: 1,
        dots: true,
        nav: true,
        navText: ["<span class='arrow_carrot-left'></span>", "<span class='arrow_carrot-right'></span>"],
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        smartSpeed: 1200,
        autoHeight: false,
        autoplay: true,
        mouseDrag: false
    });

    /*------------------
        Video Player
    --------------------*/
    const player = new Plyr('#player', {
        controls: ['play-large', 'play', 'progress', 'current-time', 'mute', 'captions', 'settings', 'fullscreen'],
        seekTime: 25
    });

    /*------------------
        Niceselect
    --------------------*/
    $('select').niceSelect();

    /*------------------
        Scroll To Top
    --------------------*/
    $("#scrollToTopButton").click(function() {
        $("html, body").animate({ scrollTop: 0 }, "slow");
        return false;
     });
     
   
//$(document).ready(function() {
//    $('.edit').click(function() {
//        const commentId = this.id.split('_')[1];
//        $(`#editForm_${commentId}`).show();
//    });
//
//    $('form').submit(function(event) {
//        // 폼 제출의 기본 동작을 방지합니다.
//        event.preventDefault();
//
//        // 폼 데이터를 변수에 저장합니다.
//        const formData = $(this).serialize();
//
//        // AJAX 요청을 보냅니다.
//        $.ajax({
//            type: "POST",
//            url: $(this).attr('action'),
//            data: formData,
//            success: function(response) {
//                // 성공 시의 처리 로직을 작성합니다.
//                // 예: 수정된 댓글 내용으로 화면을 업데이트하거나, 성공 메시지를 표시합니다.
//                alert("댓글이 수정되었습니다!");
//            },
//            error: function() {
//                // 실패 시의 처리 로직을 작성합니다.
//                alert("오류가 발생했습니다. 다시 시도해주세요.");
//            }
//        });
//    });
//});


})(jQuery);