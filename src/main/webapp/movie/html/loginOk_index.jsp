<%@page import="java.util.List"%>
<%@page import="com.movie.web.dto.MovieDTO"%>
<%@page import="com.movie.web.dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta http-equiv="Content-Security-Policy" content="upgrade-insecure-requests">
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles test -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/style.css" type="text/css">

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</head>

<body>

  



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
                        <a href="${pageContext.request.contextPath}/movie/html/index.jsp">
                            <img src="img/logo2.png" id="logo2" alt="">
                        </a>
                    </div>
                </div>
                <!-- 네비게이션 메뉴 -->
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <!-- 홈페이지로 이동하는 링크 -->
                                <li class="active"><a href="${pageContext.request.contextPath}/movie/html/index.jsp">홈</a></li>
                                <!-- 카테고리 메뉴 -->
                                <li><a href="${pageContext.request.contextPath}/movie/html/categories.jsp">영화<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="${pageContext.request.contextPath}/movie/html//categories.jsp">현재 상영작</a></li>
                                        <li><a href="${pageContext.request.contextPath}/movie/html//categories.jsp">상영 예정작</a></li>
                                        <!-- <li><a href="./anime-watching.html">트레일러 </a></li> -->
                                       
                                    </ul>
                                </li>
                                
                             
                                <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">게시판<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">공지사항</a></li>
                                        <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">이벤트</a></li>
                                 
                                     
                                    </ul>
                                </li>



                                <li><a href="${pageContext.request.contextPath}/movie/html/default.jsp">고객문의<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="${pageContext.request.contextPath}/movie/html/defaut.jsp">고객센터</a></li>
                                        <li><a href="#">주변 영화관 찾기</a></li>
                                    </ul>
                                </li>


                            </ul>
                        </nav>
                    </div>
                </div>


				<div class="col-lg-2">
					<div class="header__right">
						<a href="#" class="search-switch"><span class="icon_search"></span></a>
						<span
							class="icon_profile arrow fa dropdown-toggle active arrow_carrot-down"
							id="dropdown-toggle" data-bs-toggle="dropdown"
							aria-expanded="false"></span>
						<ul class="dropup-center dropup dropdown-menu"
							aria-labelledby="dropdown-toggle">
							<li><a
								href="${pageContext.request.contextPath}/movie/mypage.ms"><span
									class="dropdown-item">마이페이지</span></a></li>
							<li><hr class="dropdown-divider"></hr></li>
							<li> <a href="${pageContext.request.contextPath}/movie/html/findTicket.jsp"><span class="dropdown-item" id="redtext">예매내역</span></a></li> 
                       <!--  <li> <a href="#"><span class="dropdown-item" id="redtext">팔로우</span></a></li>  -->
                        <li> <a href="${pageContext.request.contextPath}/movie/html/request.jsp"><span class="dropdown-item" id="redtext">내 문의내역</span></a></li> 
                        <!-- <li> <a href="#"><span class="dropdown-item" id="redtext">쿠폰함(미구현)</span></a></li>  -->
							<li><a href="${pageContext.request.contextPath}/movie/logout.ms"><span class="dropdown-item"
									id="redtext">로그아웃</span></a></li>
						</ul>
						<a href="${pageContext.request.contextPath}/movie/mypage.ms" id="youNeedLogin">${sessionscope.userinfo.user_id}</a>
					</div>
				</div>










			</div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>



    <!-- Header End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <!-- 히어로 슬라이더 -->
            <div class="hero__slider owl-carousel">
                <!-- 히어로 아이템 1 -->
               <div class="hero__items set-bg" data-setbg="img/hero/pamyo.jpg">
                   <div class="row">
                       <div class="col-lg-6">
                           <!-- 히어로 텍스트 -->
                           <div class="hero__text">
                               <!-- 라벨 -->   
                               <div class="label">Mystery</div>
                               <!-- 제목 -->
                               <h2>파묘</h2>
                                <!-- 내용 -->
                               <p>험한 것이 나왔다...</p>
                               <!-- 시청 버튼 -->  
                               <a href="${pageContext.request.contextPath}/movie/html/SeatPreview-master/index.jsp"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                           </div>
                       </div>
                   </div>
               </div>
               <!-- 히어로 아이템 2 -->
				<c:forEach var="movie" items="${movie.movieList}">
					<div class="hero__items set-bg"
						style="background-image: url('http://file.koreafilm.or.kr/thm/02/99/18/32/tn_DPF028732.jpg');">
						<div class="row">
							<div class="col-lg-6">
								<div class="hero__text">
									<div class="label">${movie.title}</div>
									<h2>${movie.title}</h2>
									<p>After 30 days of travel across the world...</p>
									<a href="#"><span>Watch Now</span> <i
										class="fa fa-angle-right"></i></a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<div class="hero__items set-bg" data-setbg="img/hero/hero-1.jpg">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="hero__text">
                                <div class="label">${movie.title}</div>
                                <h2>Fate / Stay Night: Unlimited Blade Works</h2>
                                <p>After 30 days of travel across the world...</p>
                                <a href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Product Section Begin -->
    <div class="container">
    <div class="row">
        <!-- DB에서 가져온 데이터를 여기에 반복적으로 표시 -->
	<c:forEach var="movie" items="${movieList}">
    <div class="col-lg-4 col-md-6 col-sm-6">
        <div class="product__item">
            <div class="product__item__pic set-bg"
                style="background-image: url('img/trending/${movie.PosterUrl}');">
                <div class="ep">${movie.episodes}</div>
                <div class="comment">
                    <i class="fa fa-comments"></i> ${movie.comments}
                </div>
                <div class="view">
                    <i class="fa fa-eye"></i> ${movie.views}
                </div>
            </div>
            <div class="product__item__text">
                <ul>
                    <li>Active</li>
                    <li>Movie</li>
                </ul>
                <h5>
                    <a href="#">${movie.title}</a>
                </h5>
            </div>
        </div>
    </div>
</c:forEach>
<%
    MovieDAO mdao = new MovieDAO();
    int totalCnt = mdao.getMovieCnt();

    String temp = request.getParameter("page");
    int pageIndex = 0;
    try {
    	pageIndex = temp == null ? 1 : Integer.parseInt(temp);
    } catch(NumberFormatException e) {
    	pageIndex = 1; // 잘못된 파라미터 값이 전달될 경우 기본값으로 설정
    }

    int pageSize = 10;
    int endRow = pageIndex * pageSize; // 여기서 수정이 필요했음
    int startRow = endRow - pageSize + 1;

    int startPage = ((pageIndex-1)/pageSize) * pageSize+1;
    int endPage = startPage + pageSize-1;
    int totalPage = (totalCnt-1)/pageSize + 1;

    endPage = endPage > totalPage ? totalPage : endPage;

    List<MovieDTO> movieList = mdao.getMovieList(startRow, endRow);

    for (MovieDTO movie : movieList) {
%>
        <div>
            <h2><%= movie.getTitle() %></h2>
            <p>포스터 url: <%= movie.getPosterUrl() %></p>
            <p>제작 연도: <%= movie.getProdYear() %></p>
            <p>장르: <%= movie.getGenre() %></p>
            <p>배우: <%= movie.getActorEnNm() %></p>
            <p>평점: <%= movie.getRating() %></p>
            <!-- 추가적으로 필요한 정보를 여기에 출력 -->
        </div>
<%
   
    }
%>

<!-- 페이지 처리 부분 -->
<div class="pagination-container">
<div>
    <% if(startPage > 1) { %>
        <a href="?page=<%=startPage-1%>">이전</a>
    <% } %>
    <% for(int i=startPage; i<=endPage; i++) { %>
        <a href="?page=<%=i%>"><%=i%></a>
    <% } %>
    <% if(endPage < totalPage) { %>
        <a href="?page=<%=endPage+1%>">다음</a>
    <% } %>
		</div>
</div>
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
                    <ul>
                        <li class="active"><a href="${pageContext.request.contextPath}/movie/html/index.jsp">홈</a></li>
                        <li><a href="${pageContext.request.contextPath}/movie/html/default.jsp">고객센터</a></li>
                        <li><a href="#">블로그</a></li>
                       
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>

              </div>
          </div>
      </div>
  </footer>
  <!-- Footer Section End -->

  <!-- Search model Begin -->
  <div class="search-model">
    <div class="h-100 d-flex align-items-center justify-content-center">
        <div class="search-close-switch"><i class="icon_close"></i></div>
        <form class="search-model-form">
            <input type="text" id="search-input" placeholder="Search here.....">
        </form>
    </div>
</div>
<!-- Search model end -->

<!-- Js Plugins -->

<script src="${pageContext.request.contextPath}/movie/html/js/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/player.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/jquery.nice-select.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/mixitup.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/jquery.slicknav.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/movie/html/js/main.js"></script>


</body>

</html>