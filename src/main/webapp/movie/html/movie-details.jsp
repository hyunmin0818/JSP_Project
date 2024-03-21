<%@page import="com.movie.web.dto.UserDTO" %>
<%@page import="com.movie.web.dto.CommentDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ include file="header.jsp" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>BonoBono | 상세정보</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
          rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/owl.carousel.min.css"
          type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/style.css" type="text/css">
</head>


<body data-logged-in="<%=session.getAttribute(" isLoggedIn") != null%>">
<%
    System.out.println("Session logincheck: " + session.getAttribute(" isLoggedIn"));
    System.out.println("Session login-id: " + session.getAttribute(" loggedInUser_id"));
%>

<!-- 페이지 로딩시 보여지는 로딩 스피너 -->
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>

<!-- 히어로 섹션 시작 -->
<header class="header">
    <div class="container"></div>
</header>
<!-- 히어로 섹션 끝 -->

<!-- Breadcrumb 시작 -->
<div class="breadcrumb-option">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="breadcrumb__links">
                    <!-- 홈으로 이동하는 링크 -->
                    <a href="${pageContext.request.contextPath}/movie/html/index.jsp"><i class="fa fa-home"></i> Home</a>
                    <!-- 카테고리 페이지로 이동하는 링크 -->
                    <a >search</a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb 끝 -->

<!-- 영화 상세 정보 페이지 -->
<section class="anime-details spad">
    <div class="container">
    	<div class="section-title">
                        <h5>you might like...</h5>
                    </div>
        <c:choose>
        <%-- 영화 정보가 조회될 경우 --%>
        <c:when test="${movieList != null and fn:length(movieList) > 0 }">
        <c:forEach var="movie" items="${movieList}">
        <div class="anime__details__content">
            <div class="row" style="margin-top: 30px;">
                <!-- 영화 이미지와 관련 정보 -->
                <div class="col-lg-3">
                	
                    <div class="anime__details__pic set-bg" style="cursor: pointer;" data-setbg="${movie.posterUrl }" onclick="gourl('${pageContext.request.contextPath}/movie/clickPoster.mo?movieSeq=${ movie.getMovieSeq()}')">
                        <script> function gourl(url) {  window.location.href = url;  }</script>
                        <!-- 조회수-->
                    </div>
                </div>
                <!-- 영화 세부 정보 -->
                <div class="col-lg-9">
                    <div class="anime__details__text">
                        <div class="anime__details__title">
                            <!-- 영화 제목과 일본어 제목 -->
                            <a href="${pageContext.request.contextPath}/movie/clickPoster.mo?movieSeq=${ movie.getMovieSeq()}" onclick="updateViewsOnPage(${ movie.getMovieSeq()}">
                            <h3>${movie.title}</h3>
                            </a>
                            <span>${movie.titleEng}</span>
                        </div>
                        <!-- 영화 평점과 투표 수 -->
                        <div class="anime__details__rating"></div>
                        <!-- 영화 설명 -->
                        <p>${movie.plot}</p>
                        <!-- 영화 세부 정보 표 -->
                        <div class="anime__details__widget">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <ul>
                                        <li><span>유형:</span> ${movie.type}</li>
                                        <!--유형-->
                                        <li><span>회사:</span> ${movie.company}</li>
                                        <!--제작사-->
                                        <li><span>개봉일:</span> ${movie.releaseDate}</li>
                                        <!--방영일-->
                                        <li><span>국가:</span> ${movie.nation}</li>
                                        <!--국가-->
                                        <li><span>장르:</span> ${movie.genre}</li>
                                        <!--장르-->
                                    </ul>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <ul>
                                        <li><span>감독:</span> ${movie.directorNm}</li>
                                        <!--배우-->
                                        <li><span>배우:</span> ${movie.actorEnNm}</li>
                                        <!--평가-->
                                        <li><span>상영시간:</span> ${movie.runtime}</li>
                                        <!--재생시간-->
                                        <li><span>등급:</span> ${movie.rating}</li>
                                        <!--등급-->
                                        <li><span>제작사: </span> ${movie.company}</li>
                                        <!--조회수-->
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- 영화 관련 버튼 -->
                        <div class="anime__details__btn" >
                        <div style="position: relative;">
                                <div style="position: absolute;  top: 0; text-align: right; display: flex;">
                              
                                   <h3><i style="padding-left: 22px" class="fa fa-eye"></i>${movie.movieView}</h3>
                                    <%-- <h3><i style="padding-left: 22px" class="fa fa-comments"></i>${movie.commentCount}}</h3>  --%> 
                                 <%--<h3><i style="padding-left: 22px" class="fa fa-heart"></i>${movie.movie_likes}</h3>  --%>
                                                           
                                </div>
                            </div>
                           <a class="site-btn"  style=" float: right;" 
                           href="${pageContext.request.contextPath}/movie/clickPoster.mo?movieSeq=${ movie.getMovieSeq()}" onclick="updateViewsOnPage(${ movie.getMovieSeq()}"><i id="likeIcon" ></i>Join</a>
                        </div>
                    </div>
        	<hr style="  margin-top: 100px; ">
                </div>
                
            </div>
            
            </c:forEach>
            </c:when>
            <c:otherwise>
          			<%-- 영화 정보가 조회되지 않을 경우 --%>
                <hr style="border: none; border-top: 1px solid #08052e; width: 100%;">
               		 <span style="color: white">상세 정보가 없습니다.</span>
                </hr>
            </c:otherwise>
            </c:choose>
        </div>
        </div>
</section>
<!-- 영화 정보 끝 -->

<!-- Footer Section Begin -->
   <footer class="footer">
      <div class="page-up">
         <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
      </div>
      <div class="container">
         <div class="row">
            <div class="col-lg-3">
               <div class="footer__logo">
                  <a href="${pageContext.request.contextPath}/movie/html/index.jsp"><img src="img/logo2.png" alt=""></a>
               </div>
            </div>
            <div class="col-lg-6">
               <div class="footer__nav">
                 
               </div>
            </div>
            <div class="col-lg-3">
               <p>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  Copyright &copy;
                  <script>
                     document.write(new Date().getFullYear());
                  </script>
                  All rights reserved | This template is made with <i
                     class="fa fa-heart" aria-hidden="true"></i> by <a
                     href="https://colorlib.com" target="_blank">Colorlib</a>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
               </p>

            </div>
         </div>
      </div>
   </footer>
   <!-- Footer Section End -->

<!-- 우측 상단 검색창 활성화 시 화면 -->
<div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <!-- 검색 모달 닫기 스위치 -->
        <div class="search-close-switch">
            <i class="icon_close"></i>
        </div>
        <!-- 검색 폼 -->
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- 검색창 끝 -->

<!-- 자바스크립트 -->

<script src="${pageContext.request.contextPath}/movie/html/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/player.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/mixitup.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/main.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/ajaxForLikes.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/login.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/ajaxForView.js"></script>
<script>
    window.onload = function () {
        var deleteButtons = document.getElementsByClassName('deleteButton');
        for (var i = 0; i < deleteButtons.length; i++) {
            deleteButtons[i].style.display = 'show'; // 혹은 필요에 따라 다른 스타일 변경
        }
    };
</script>
<script>
    function deleteComment(comment_id) {
        // XMLHttpRequest 객체 생성
        var xhr = new XMLHttpRequest();
        // 요청을 초기화함
        xhr.open('POST', '/movie/deleteComment.mo', true);
        // 서버 응답을 처리할 이벤트 핸들러 정의
        xhr.onreadystatechange = function () {
            // 요청이 완료되고, 응답이 성공적으로 돌아왔을 때
            if (xhr.readyState == 4 && xhr.status == 200) {
                // 응답 결과를 처리 (예: 페이지 새로고침, 알림 표시 등)
                alert('댓글이 삭제되었습니다.');
                window.location.reload(); // 페이지를 새로고침하여 변경사항 반영
            }
        };
        // 요청 본문에서 보낼 데이터 설정
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        // 실제로 서버에 요청을 보냄
        xhr.send('comment_id=' + comment_id);
    }
</script>

</body>

</html>