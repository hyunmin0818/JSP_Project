<%@page import="com.movie.web.dao.CommentDAO"%>
<%@page import="com.movie.web.dto.MovieDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.movie.web.dao.MovieDAO"%>
<%@page import="com.movie.web.dto.UserDTO" %>
<%@page import="com.movie.web.dto.CommentDTO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
    <title>영화 | 상세정보</title>

    <!-- Google Font -->
    <link
            href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
            rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
            rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/movie/html/css/bootstrap.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/movie/html/css/font-awesome.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/movie/html/css/elegant-icons.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/movie/html/css/plyr.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/movie/html/css/nice-select.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/movie/html/css/owl.carousel.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/movie/html/css/slicknav.min.css"
          type="text/css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/movie/html/css/style.css"
          type="text/css">
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
                    <a href="./indexOk_index.jsp"><i class="fa fa-home"></i> Home</a>
                    <!-- 카테고리 페이지로 이동하는 링크 -->
                    <a href="">Categories</a>
                    <!-- 현재 페이지의 카테고리 이름을 표시하는 부분 -->
                    <span>${movie.genre}</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb End -->
<!-- Anime Section Begin -->
<c:choose>
    <c:when test="${not empty movieInfo}">
        <c:forEach var="movieinfo" items="${movieInfo}">
<div class="css-yy4d6f e1yew28617" style="position: relative; height: 550px;">
 
    <div class="css-stilcut" data-setbg ="${movieinfo.stillUrl}">

        <div class="css-sdsdsd">
   
            <h1 class="css-Title">${movieinfo.title}</h1>
            <div class="css-qnwpahr">${movieinfo.title}</div>
            <div class="css-roqhddlf">${movieinfo.releaseDate}·${movieinfo.genre } · ${movieinfo.nation}</div>
            <div class="css-qkdduddlfwkdfmrnrrk">${movieinfo.runtime}· ${movieinfo.rating}</div>
            <div class="css-tkd">${movieinfo.awards1}${movieinfo.awards2}</div>
        </div>
    </div>
   </c:forEach>
</c:when>
 <c:otherwise>
                <hr
                        style="border: none; border-top: 1px solid #08052e; width: 100%;">
                <span style="color: white">상세 정보가 없습니다.</span>
                </hr>
            </c:otherwise>
            </c:choose>
</div>
<section class="anime-details spad">
    <div class="container">

        <c:choose>
        <c:when test="${not empty movieInfo}">
        <c:forEach var="movieinfo" items="${movieInfo}">
        <div class="anime__details__content">
   

            <div class="row" style="margin-top: 30px;">

                <!-- 영화 이미지와 관련 정보 -->
                <div class="col-lg-3">
                    <div class="anime__details__pic set-bg" data-setbg="${movieinfo.posterUrl }">
                        <!--이미지-->
                    </div>
                </div>
                <!-- 영화 세부 정보 -->
                <div class="col-lg-9">
                    <div class="anime__details__text">
                        <div class="anime__details__title">
                            <!-- 영화 제목과 일본어 제목 -->
                            <div style="position: relative;">
                                <div style="position: absolute; left: 80%; top: 0;">
                                    <h3><i style="padding-left: 22px" class="fa fa-eye"></i>${movieinfo.movieView}</h3>
                                </div>
                            </div>
                            <h3>${movieinfo.title}</h3>
                            <span>${movieinfo.titleEng}</span>
                        </div>
                        <!-- 영화 평점과 투표 수 -->
                        <div class="anime__details__rating"></div>
                        <!-- 영화 설명 -->
                        <p>${movieinfo.plot}</p>
                        <!-- 영화 세부 정보 표 -->
                        <div class="anime__details__widget">
                            <div class="row">
                                <div class="col-lg-6 col-md-6">
                                    <ul>
                                        <li><span>유형:</span> ${movieinfo.type}</li>
                                        <!--유형-->
                                        <li><span>회사:</span> ${movieinfo.company}</li>
                                        <!--제작사-->
                                        <li><span>개봉일:</span> ${movieinfo.releaseDate}</li>
                                        <!--방영일-->
                                        <li><span>국가:</span> ${movieinfo.nation}</li>
                                        <!--국가-->
                                        <li><span>장르:</span> ${movieinfo.genre}</li>
                                        <!--장르-->
                                    </ul>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <ul>
                                        <li><span>감독:</span> ${movieinfo.directorNm}</li>
                                        <!--배우-->
                                        <li><span>배우:</span> ${movieinfo.actorEnNm}</li>
                                        <!--평가-->
                                        <li><span>상영시간:</span> ${movieinfo.runtime}</li>
                                        <!--재생시간-->
                                        <li><span>등급:</span> ${movieinfo.rating}</li>
                                        <!--등급-->
                                        <li><span>제작사: </span> ${movieinfo.company}</li>
                                        <!--조회수-->
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- 영화 관련 버튼 -->
                        <div class="anime__details__btn">
                            <input type="hidden" name="movieSeq" value="${movieinfo.movieSeq}">
                            <input type="hidden" name="user_id" value="${userinfo.user_id}">
                            <button id="likeButton" class="follow-btn"><i id="likeIcon" class="fa fa-heart-o"> </i> Like
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
            </c:when>
            <c:otherwise>
                <hr
                        style="border: none; border-top: 1px solid #08052e; width: 100%;">
                <span style="color: white">상세 정보가 없습니다.</span>
                </hr>
            </c:otherwise>
            </c:choose>

        </div>
        <!-- 리뷰 목록 -->
        <div class="row">
            <div class="col-lg-8 col-md-8">
                <div class="anime__details__review">
                    <div class="section-title">
                    <%
                     MovieDAO mdao = new MovieDAO();
                     int totalCnt = mdao.getMovieCnt();

                     String temp = request.getParameter("page");
                     int pageIndex = 0;
                     try {
                        pageIndex = temp == null ? 1 : Integer.parseInt(temp);
                     } catch (NumberFormatException e) {
                        pageIndex = 1; // 잘못된 파라미터 값이 전달될 경우 기본값으로 설정
                     }

                     int pageSize = 1;
                     int endRow = pageIndex * pageSize; // 여기서 수정이 필요했음
                     int startRow = endRow - pageSize + 1;

                     int startPage = ((pageIndex - 1) / pageSize) * pageSize + 1;
                     int endPage = startPage + pageSize - 1;
                     int totalPage = (totalCnt - 1) / pageSize + 1;

                     endPage = endPage > totalPage ? totalPage : endPage;

                       List<MovieDTO> movieList = mdao.getMovieList(startRow, endRow);
                            CommentDAO cdao = new CommentDAO();
                            
                            for (MovieDTO movie : movieList) {
                              
                                List<CommentDTO> comments = cdao.getCmByMovieSeq(movie.getMovieSeq());
                                // 댓글 수 계산
                                int commentCount = comments.size();
         
                        %>
                        <h5>Reviews <i style="padding-left: 90%" class="fa fa-comments"></i><%=commentCount%></h5>
                         <%
                            }
                           %>
                        <!-- 댓글-->
                    </div>
                    <!-- 리뷰 아이템 -->
                    <c:choose>
                        <c:when test="${commentList != null and fn:length(commentList) > 0}">
                            <c:forEach var="comment" items="${commentList }">
                                <div class="anime__review__item">
                                    <div class="anime__review__item__pic">
                                        <img src="https://d2u3dcdbebyaiu.cloudfront.net/uploads/atch_img/665/708d0162261869f0558a0a1cabea0b50_res.jpeg"
                                             alt="">
                                    </div>
                                    <div class="anime__review__item__text">
                                        <input type="hidden" name="movieSeq" value="${movieinfo.movieSeq}">
                                        <h6>${comment.user_id}<span>${comment.comment_time}</span>
                                        </h6>
                                        <p>${comment.comment}</p>

                                        <!-- 로그인한 사용자 ID와 리뷰 작성자 ID가 일치할 경우에만 삭제 버튼을 표시 -->
                                       <c:if test="${comment.user_id == loggedInUser_id}">
                                            <input type="button" value="삭제" class="deleteButton" onclick="deleteComment(${comment.comment_id})">
                                        </c:if>
                                    </div>
                                </div>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <div class="anime__review__item__text">
                                <h6 align="center">댓글이 없습니다.</h6>

                            </div>
                        </c:otherwise>
                    </c:choose>
                    <div class="anime__details__form">
                        <div class="section-title">
                            <h5>Your Comment</h5>
                        </div>
                        <form name="commentForm" method="post"
                              action="${pageContext.request.contextPath}/movie/addComment.mo">
                            <input type="hidden" name="movieSeq" value="${movieInfo[0].movieSeq}">
                            <input type="hidden" name="comment_id" value="${comment.comment_id }">
                            <textarea name="comment" placeholder="Comment 를 작성해주세요">${comment.comment }</textarea>
                            <button type="submit" style="float: right;">
                                <i class="fa fa-location-arrow"></i> Review
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!-- 사이드바 영역 -->
            <div class="col-lg-4 col-md-4">
                <div class="anime__details__sidebar">
                    <div class="section-title">
                        <h5>you might like...</h5>
                    </div>
                    <!-- 추천작 리스트 -->
                    <c:forEach items="${similarMovies}" var="genremovie" varStatus="status">
                      <c:if test="${status.index >= 1 && status.index <= 4}">
                            <!-- 영화 정보 출력 -->
                           <div class="product__sidebar__view__item set-bg" data-setbg="${genremovie.stillUrl}" onclick="updateViewsOnPage(${genremovie.movieSeq})">
                                 <h5 ><a>${ genremovie.title}</a></h5>
                                  <div class="product__item__text">
                                            <li>${genremovie.genre}</li>
                                     </div>
                             
                              
                                 <div class="view"><i class="fa fa-eye"></i> ${movie.movieView} </div>
                            </div>
                     </c:if>
               </c:forEach>
                </div>
            </div>
        </div>
</section>
<!-- Anime Section End -->

<!-- Footer Section Begin -->
<footer class="footer">
    <div class="page-up">
        <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="footer__logo">
                    <a href="${pageContext.request.contextPath}/movie/html/index.jsp"><img
                            src="${pageContext.request.contextPath}/movie/html/img/logo2.png"
                            alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="footer__nav">
                    <ul>
                        <li class="active"><a
                                href="${pageContext.request.contextPath}/movie/html/index.jsp">홈</a>
                        </li>
                        <li><a
                                href="${pageContext.request.contextPath}/movie/html/default.jsp">고객센터</a>
                        </li>
                        <li><a href="#">블로그</a></li>

                    </ul>
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

<!-- Search model Begin -->
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
<!-- Search model end -->

<!-- Js Plugins -->
<script>
    function updateViewsOnPage(movieSeq) {
        // updateViewsOnPage() 함수를 호출하여 영화 시퀀스를 전달
        // 이동할 URL 설정
        var url = '${pageContext.request.contextPath}/movie/clickPoster.mo?movieSeq=' + movieSeq ;
        // 페이지 이동
        window.location = url;
    }
</script>
<script src="${pageContext.request.contextPath}/movie/html/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/player.js"></script>
<script
        src="${pageContext.request.contextPath}/movie/html/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/mixitup.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/main.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/ajaxForLikes.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/ajaxForView.js"></script>


<script>window.onload = function () {
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