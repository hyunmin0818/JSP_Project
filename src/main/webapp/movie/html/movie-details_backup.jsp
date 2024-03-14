<%@page import="com.movie.web.dto.UserDTO"%>
<%@page import="com.movie.web.dto.CommentDTO"%>
<%@page import="com.movie.web.dto.MovieDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
        rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/plyr.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- 페이지 로딩시 보여지는 로딩 스피너 -->
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <!-- 로고 -->
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="./index.html">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <!-- 네비게이션 메뉴 -->
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <!-- 홈페이지로 이동하는 링크 -->
                                <li class="active"><a href="./index.html">Homepage</a></li>
                                <!-- 카테고리 메뉴 -->
                                <li><a href="./categories.html">Categories <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <!-- 카테고리 관련 페이지로 이동하는 링크 -->
                                        <li><a href="./categories.html">Categories</a></li>
                                        <li><a href="./anime-details.html">Anime Details</a></li>
                                        <li><a href="./anime-watching.html">Anime Watching</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                        <li><a href="./signup.html">Sign Up</a></li>
                                        <li><a href="./login.html">Login</a></li>
                                    </ul>
                                </li>
                                <!-- 블로그로 이동하는 링크 -->
                                <li><a href="./blog.html">Our Blog</a></li>
                                <!-- 연락처로 이동하는 링크 -->
                                <li><a href="#">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <!-- 검색 및 프로필 아이콘 -->
                <div class="col-lg-2">
                    <div class="header__right">
                        <a href="#" class="search-switch"><span class="icon_search"></span></a>
                        <a href="./login.html"><span class="icon_profile"></span></a>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <!-- 홈으로 이동하는 링크 -->
                        <a href="./index.html"><i class="fa fa-home"></i> Home</a>
                        <!-- 카테고리 페이지로 이동하는 링크 -->
                        <a href="./categories.html">Categories</a>
                        <!-- 현재 페이지의 카테고리 이름을 표시하는 부분 -->
                        <span>Romance</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
    <c:choose>
    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <!-- 영화 이미지와 관련 정보 -->
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg" data-setbg="img/anime/popular-1.jpg"> <!--이미지-->
                            <div class="comment"><i class="fa fa-comments"></i> 6</div> <!-- 댓글-->
                            <div class="view"><i class="fa fa-eye"></i> 9141</div> <!-- 조회수-->
                        </div>
                    </div>
                    <!-- 영화 세부 정보 -->
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <!-- 영화 제목과 일본어 제목 -->
                                <h3>파묘</h3>
                                <span>장재현</span>
                            </div>
                            <!-- 영화 평점과 투표 수 -->
                            <div class="anime__details__rating">
                                <div class="rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                </div>
                                <span>1.029 Votes</span>
                            </div>
                            <!-- 영화 설명 -->
                            <p>미국 LA, 거액의 의뢰를 받은 무당 ‘화림’(김고은)과 ‘봉길’(이도현)은 기이한 병이 대물림되는 집안의 장손을 만난다.
                                조상의 묫자리가 화근임을 알아챈 ‘화림’은 이장을 권하고, 돈 냄새를 맡은 최고의 풍수사 ‘상덕’(최민식)과 장의사
                                ‘영근’(유해진)이 합류한다. “전부 잘 알 거야… 묘 하나 잘못 건들면 어떻게 되는지” 절대 사람이 묻힐 수 없는 악지에
                                자리한 기이한 묘. ‘상덕’은 불길한 기운을 느끼고 제안을 거절하지만, ‘화림’의 설득으로 결국 파묘가 시작되고…
                                나와서는 안될 것이 나왔다.</p>
                            <!-- 영화 세부 정보 표 -->
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>유형:</span> TV Series</li> <!--유형-->
                                            <li><span>회사:</span> ㈜쇼박스</li> <!--제작사-->
                                            <li><span>개봉일:</span> 2024.02.22.</li> <!--방영일-->
                                            <li><span>국가:</span> 한국</li> <!--국가-->
                                            <li><span>장르:</span> 미스터리,공포</li> <!--장르-->
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>배우:</span> 최민식,유해진,이도현,김고은</li> <!--배우-->
                                            <li><span>평점:</span> 8.5 / 161 times</li> <!--평가-->
                                            <li><span>상영시간:</span> 134 분</li> <!--재생시간-->
                                            <li><span>등급:</span> 15세 관람가</li> <!--등급-->
                                            <li><span>예매 인원:</span> 131,541</li> <!--조회수-->
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- 영화 관련 버튼 -->
                            <div class="anime__details__btn">
                                <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> Follow</a>
                                <a href="SeatPreview-master/index.html" class="watch-btn"><span>Watch Now</span> <i
                                        class="fa fa-angle-right"></i></a>
                                <a href="#" class="reservation">예 매</a>
                                <a href="#" class="reservation" hidden>수정</a>
                            </div>
                        </div>
                    </div>
                </div>
                <hr style=" border: none; border-top: 1px solid #08052e; width: 100%;   ">

                <input type="button"  onclick="toggleList()" style="background-color: #e53637; margin-left: 50%; border-radius: 20px; " value="   +   ">
                <ul id="list" style="display: none;"> <!-- 12 지우기-->
                    <div class="dd" style="padding-top: 20px;"></div>
                    
                    <div class="container">
                        <div class="col-lg-8">
                            <div class="row">
                                <div class="col-lg-8 col-md-8 col-sm-8">
                                    <div class="section-title">
                                        <h4>배우 </h4>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="acter_muri">
                            
                            <!-- 제품 아이템 -->
                            <div class="acter__item">
                                <!-- 제품 이미지 -->
                                <div class="acter__item__pic set-bg" data-setbg="https://i.namu.wiki/i/-Vwf70AB-rZOm1EAfUEwPUXegg9e4G4EFNHp_ujJ7ouvRDrkFkuQMdKcSa-GfAM0sUhwGbonOdxNPnPtmXkgetUDkb5JSYj3kwqM6qiXu1tbrRoPks0BOyZflMeIeE6v-YG8yIr0WR-2CCVvt_lW8g.webp">
                                </div>
                                <!-- 제품 텍스트 -->
                                <div class="acter__item__text">
                                    <ul>
                                        <li>Acter</li>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#">이도현 / 봉길</a></h5>
                                </div>
                            </div>
                            <!-- 제품 아이템 -->
                            <div class="acter__item">
                                <!-- 제품 이미지 -->
                                <div class="acter__item__pic set-bg" data-setbg="https://image.cine21.com/resize/cine21/person/2020/0812/2262[X252,310].jpg">
                                </div>
                                <!-- 제품 텍스트 -->
                                <div class="acter__item__text">
                                    <ul>
                                        <li>Acter</li>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#">최만식 / 김상덕</a></h5>
                                </div>
                            </div>
                            <!-- 제품 아이템 -->
                            <div class="acter__item">
                                <!-- 제품 이미지 -->
                                <div class="acter__item__pic set-bg" data-setbg="img/trending/trend-1.jpg">
                                </div>
                                <!-- 제품 텍스트 -->
                                <div class="acter__item__text">
                                    <ul>
                                        <li>Actr</li>
                                        <li>Movie</li>
                                        
                                    </ul>
                                    <h5><a href="#">이도현ㄴㄴㄴㄴ / 봉길ㄴㄴㄴㄴㄴㄴㄴㄴ</a></h5>
                                </div>
                            </div>
                            <!-- 제품 아이템 -->
                            <div class="acter__item">
                                <!-- 제품 이미지 -->
                                <div class="acter__item__pic set-bg" data-setbg="img/trending/trend-1.jpg">
                                </div>
                                <!-- 제품 텍스트 -->
                                <div class="acter__item__text">
                                    <ul>
                                        <li>Acter</li>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#">이도현 / 봉길</a></h5>
                                </div>
                            </div>
                            <!-- 제품 아이템 -->
                            <div class="acter__item">
                                <!-- 제품 이미지 -->
                                <div class="acter__item__pic set-bg" data-setbg="img/trending/trend-1.jpg">
                                </div>
                                <!-- 제품 텍스트 -->
                                <div class="acter__item__text">
                                    <ul>
                                        <li>Acter</li>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#">이도현 / 봉길</a></h5>
                                </div>
                            </div>
                            <!-- 제품 아이템 -->
                            <div class="acter__item">
                                <!-- 제품 이미지 -->
                                <div class="acter__item__pic set-bg" data-setbg="img/trending/trend-1.jpg">
                                </div>
                                <!-- 제품 텍스트 -->
                                <div class="acter__item__text">
                                    <ul>
                                        <li>Acter</li>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#">이도현 / 봉길</a></h5>
                                </div>
                            </div>
                            <!-- 제품 아이템 -->
                            <div class="acter__item">
                                <!-- 제품 이미지 -->
                                <div class="acter__item__pic set-bg" data-setbg="img/trending/trend-1.jpg">
                                </div>
                                <!-- 제품 텍스트 -->
                                <div class="acter__item__text">
                                    <ul>
                                        <li>Acter</li>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#">이도현 / 봉길</a></h5>
                                </div>
                            </div>
                            <!-- 제품 아이템 -->
                            <div class="acter__item">
                                <!-- 제품 이미지 -->
                                <div class="acter__item__pic set-bg" data-setbg="img/trending/trend-1.jpg">
                                </div>
                                <!-- 제품 텍스트 -->
                                <div class="acter__item__text">
                                    <ul>
                                        <li>Acter</li>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#">이도현 / 봉길</a></h5>
                                </div>
                            </div>
                            <!-- 제품 아이템 -->
                            <div class="acter__item">
                                <!-- 제품 이미지 -->
                                <div class="acter__item__pic set-bg" data-setbg="img/trending/trend-1.jpg">
                                </div>
                                <!-- 제품 텍스트 -->
                                <div class="acter__item__text">
                                    <ul>
                                        <li>Acter</li>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#">이도현 / 봉길</a></h5>
                                </div>
                            </div>
                            <!-- 제품 아이템 -->
                            <div class="acter__item">
                                <!-- 제품 이미지 -->
                                <div class="acter__item__pic set-bg" data-setbg="img/trending/trend-1.jpg">
                                </div>
                                <!-- 제품 텍스트 -->
                                <div class="acter__item__text">
                                    <ul>
                                        <li>Acter</li>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#">이도현 / 봉길</a></h5>
                                </div>
                            </div>
                            <!-- 제품 아이템 -->
                            <div class="acter__item">
                                <!-- 제품 이미지 -->
                                <div class="acter__item__pic set-bg" data-setbg="img/trending/trend-1.jpg">
                                </div>
                                <!-- 제품 텍스트 -->
                                <div class="acter__item__text">
                                    <ul>
                                        <li>Acter</li>
                                        <li>Movie</li>
                                    </ul>
                                    <h5><a href="#">이도현 / 봉길</a></h5>
                                </div>
                            </div>
                            </c:when>
						</c:choose>
                            
                            

                        </div>
                    </div>
                </ul>
            </div>
        <!-- 리뷰 목록 -->
        <div class="row">
            <div class="col-lg-8 col-md-8">
                <div class="movie__details__review">
                    <div class="section-title">
                        <h5>Reviews</h5>
                    </div>
                    <!-- 리뷰 아이템 -->
                    <c:choose>
                    	<c:when test="${commentList != null and fn:length(commentList) > 0}">
                    		<c:forEach var="comment" items="${commentList }">
                    <div class="movie__review__item">
                        <div class="movie__review__item__pic">
                            <img src="img/anime/review-1.jpg" alt="">
                        </div>
                        <div class="movie__review__item__text">
                            <h6> ${comment.user_id}<span>${comment.commentTime}</span></h6>
                            <p>${comment.comment}</p>
                            <input type="button" value="삭제" class="delete" id="deleteButton" hidden>
                        </div>
                        <!-- 컨텐츠 있으면 뽑아오기 -->
                 	</div>
                    <!-- 사용자 리뷰 입력 폼 -->
                
                	</c:forEach>
                	</c:when>
                	<c:otherwise>
                		<div class="anime__review__item__text">
                            <h6 align="center"> 댓글이 없습니다. </h6>
                       
                    	</div>
                	</c:otherwise>
                </c:choose>
                <div class="anime__details__form">
                    <div class="section-title">
                        <h5>Your Comment</h5>
                    </div>
                    <form name="commentForm" method="post"
                    action="${pageContext.request.contextPath}/movie/addComment.mo">
                    <input type="hidden" name="comment_id" value="${comment.comment_id }">
                        <textarea placeholder="Comment 를 작성해주세요">${comment.comment }</textarea>
                        <button type="submit"><i class="fa fa-location-arrow"></i> Review</button>
                    </form>
                </div>
            </div>
            <!-- 사이드바 영역 -->
            <div class="col-lg-4 col-md-4">
                <div class="anime__details__sidebar">
                    <div class="section-title">
                        <h5>you might like...</h5>
                    </div>
                    <!-- 추천작 리스트 -->
                    <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-1.jpg">
                        <div class="ep">18 / ?</div>
                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        <h5><a href="#">Boruto: Naruto next generations</a></h5>
                    </div>
                    <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-2.jpg">
                        <div class="ep">18 / ?</div>
                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                    </div>
                    <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-3.jpg">
                        <div class="ep">18 / ?</div>
                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        <h5><a href="#">Sword art online alicization war of underworld</a></h5>
                    </div>
                    <div class="product__sidebar__view__item set-bg" data-setbg="img/sidebar/tv-4.jpg">
                        <div class="ep">18 / ?</div>
                        <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        <h5><a href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </section>
    <!-- Anime Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="page-up">
            <!-- 페이지 상단으로 이동하는 버튼 -->
            <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
        </div>
        <div class="container">
            <div class="row">
                <!-- 로고 -->
                <div class="col-lg-3">
                    <div class="footer__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <!-- 푸터 내비게이션 -->
                    <div class="footer__nav">
                        <ul>
                            <li class="active"><a href="./index.html">Homepage</a></li>
                            <li><a href="./categories.html">Categories</a></li>
                            <li><a href="./blog.html">Our Blog</a></li>
                            <li><a href="#">Contacts</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <!-- 저작권 정보  절대 지우지말것 -->
                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | This template
                        is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com"
                            target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>

                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

    <!-- Search model Begin -->
    <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <!-- 검색 모달 닫기 스위치 -->
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <!-- 검색 폼 -->
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- Search model end -->

    <!-- Js Plugins -->
    <!-- const movies = [
    {
        title: "파묘",         이름
        director: "장재현",    감독
        rating: 4,            평점?
         image  : img/popular/popular-1.jpg
        votes: 1515,           투표
        type: "TV Series",      유형
        studio: "㈜쇼박스",        제작사
        date_aired: "2024.02.22",      방영일
        status: "Airing",               방영중
        genre: "미스터리,공포",         장르
        duration: 134분,               재생시간
        age_rating: "15세 관람가",      등급
        description: "미국 LA, 거액의 의뢰를 받은 무당 ‘화림’(김고은)과 ‘봉길’(이도현)은 기이한 병이 대물림되는 
                     집안의 장손을 만난다. 조상의 묫자리가 화근임을 알아챈 ‘화림’은 이장을 권하고, 돈 냄새를 맡은 최고의 풍수사 
                     ‘상덕’(최민식)과 장의사 ‘영근’(유해진)이 합류한다. “전부 잘 알 거야… 묘 하나 잘못 건들면 어떻게 되는지” 
                     절대 사람이 묻힐 수 없는 악지에 자리한 기이한 묘. ‘상덕’은 불길한 기운을 느끼고 제안을 거절하지만, 
                     ‘화림’의 설득으로 결국 파묘가 시작되고… 나와서는 안될 것이 나왔다.",  
    -->
    
    <script>
        let isMouseDown = false;
let startX;
let scrollLeft;

document.querySelector('.acter_muri').addEventListener('mousedown', (e) => {
    isMouseDown = true;
    startX = e.pageX - document.querySelector('.acter_muri').offsetLeft;
    scrollLeft = document.querySelector('.acter_muri').scrollLeft;
});

document.querySelector('.acter_muri').addEventListener('mouseleave', () => {
    isMouseDown = false;
});

document.querySelector('.acter_muri').addEventListener('mouseup', () => {
    isMouseDown = false;
});

document.querySelector('.acter_muri').addEventListener('mousemove', (e) => {
    if (!isMouseDown) return;
    e.preventDefault();
    const x = e.pageX - document.querySelector('.acter_muri').offsetLeft;
    const walk = (x - startX) * 2; // 조절할 수 있는 스크롤 속도
    document.querySelector('.acter_muri').scrollLeft = scrollLeft - walk;
});

        function toggleList() {
            var list = document.getElementById("list");
            if (list.style.display === "none") {
                list.style.display = "block";
            } else {
                list.style.display = "none";
            }
        }
        
    
    </script>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/player.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>

</body>

</html>