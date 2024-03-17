<%@page import="com.movie.web.dto.UserDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.movie.web.dto.MovieDTO"%>
<%@page import="com.movie.web.dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/movie/html/header.jsp" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta http-equiv="Content-Security-Policy"
	content="upgrade-insecure-requests">
<title>Anime | Template</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
	rel="stylesheet">

<!-- Css Styles test -->
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
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/movie/html/css/search.css"
	type="text/css">

<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
	integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
	integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
	crossorigin="anonymous"></script>
</head>

<body>





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
								<div class="label"></div>
								<!-- 제목 -->
								<h2 class="whitetext">파묘</h2>
								<!-- 내용 -->
								<p class="whitetext"> 험한 것이 나왔다...</p>
								<!-- 시청 버튼 -->
								<a
									href="${pageContext.request.contextPath}/movie/html/movie-details.jsp"><span>Watch
										Now</span> <i class="fa fa-angle-right"></i></a>
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
									<p class="whitetext">After 30 days of travel across the world...</p>
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
								<h2 class ="Whitetext">Fate / Stay Night: Unlimited Blade Works</h2>
								<p class="whitetext">After 30 days of travel across the world...</p>
								<a href="#"><span>Watch Now</span> <i
									class="fa fa-angle-right"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Product Section Begin -->
   <section class="product spad">
      <div class="container">
         <div class="row">
            <div class="col-lg-8">
               <div class="trending__product">
                  <div class="row">
                     <div class="col-lg-8 col-md-8 col-sm-8">
                        <div class="section-title">
                           <h4>현재 상영 중</h4>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-4 col-sm-4">
                       
                     </div>
                  </div>
                  <div class="row">

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

                     int pageSize = 12;
                     int endRow = pageIndex * pageSize; // 여기서 수정이 필요했음
                     int startRow = endRow - pageSize + 1;

                     int startPage = ((pageIndex - 1) / pageSize) * pageSize + 1;
                     int endPage = startPage + pageSize - 1;
                     int totalPage = (totalCnt - 1) / pageSize + 1;

                     endPage = endPage > totalPage ? totalPage : endPage;

                     List<MovieDTO> movieList = mdao.getMovieList(startRow, endRow);

                     for (MovieDTO movie : movieList) {
                     %>
                     <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
                           <div class="product__item__pic set-bg"
                              data-setbg="<%=movie.getPosterUrl()%>">
                              <div class="comment">
                                 <i class="fa fa-comments"></i> 11
                              </div>
                              <div class="view">
                                 <i class="fa fa-eye"></i> 9141
                              </div>
                           </div>
                           <div class="product__item__text">
                              <ul>
                                 <li><%=movie.getGenre()%></li>
                              </ul>
                              <h5>
                                 <a href="#"><%=movie.getTitle()%></a>
                              </h5>
                           </div>
                        </div>
                     </div>
                     <%
                     }
                     %>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-8">
                            <div class="product__sidebar">
                                <div class="product__sidebar__view">
                                    <div class="section-title">
                                        <h5>Top Views</h5>
                                    </div>
                                 
                                    <div class="filter__gallery">
                                        <div class="product__sidebar__view__item set-bg mix day years"
                                            data-setbg="img/sidebar/tv-1.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#" class ="whitetext">Boruto: Naruto next generations</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix month week"
                                            data-setbg="img/sidebar/tv-2.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#" class ="whitetext">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix week years"
                                            data-setbg="img/sidebar/tv-3.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#" class="whitetext">Sword art online alicization war of underworld</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix years month"
                                            data-setbg="img/sidebar/tv-4.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#" class ="whitetext">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix day"
                                            data-setbg="img/sidebar/tv-5.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#" class ="whitetext">Fate stay night unlimited blade works</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix week years"
                                            data-setbg="img/sidebar/tv-3.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#" class ="whitetext">Sword art online alicization war of underworld</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix years month"
                                            data-setbg="img/sidebar/tv-4.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#" class ="whitetext">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix day"
                                            data-setbg="img/sidebar/tv-5.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#" class ="whitetext">Fate stay night unlimited blade works</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix day"
                                            data-setbg="img/sidebar/tv-5.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a href="#" class ="whitetext">Fate stay night unlimited blade works</a></h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="product__sidebar__comment">
                                </div>
                            </div>
         </div>
   </section>

	<!-- 페이지 처리 부분 -->
	<div class="pagination-container">
		<div>		
			<%
			if (startPage > 1) {
			%>
			<a href="?page=<%=startPage - 1%>">이전</a>
			<%
			}
			%>
			<%
			for (int i = startPage; i <= endPage; i++) {
			%>
			<a href="?page=<%=i%>"><%=i%></a>
			<%
			}
			%>
			<%
			if (endPage < totalPage) {
			%>
			<a href="?page=<%=endPage + 1%>">다음</a>
			<%
			}
			%>
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
						<a href="${pageContext.request.contextPath}/movie/html/index.jsp"><img
							src="img/logo2.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="footer__nav">
						<ul>
							<li class="active"><a
								href="${pageContext.request.contextPath}/movie/html/index.jsp">홈</a></li>
							<li><a
								href="${pageContext.request.contextPath}/movie/html/default.jsp">고객센터</a></li>
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
	<!-- Search model end -->

	<!-- Js Plugins -->
	<script>
	document.addEventListener('DOMContentLoaded', function() {
	    var form = document.querySelector('#cover form'); // 검색 폼 선택
	    var input = form.querySelector('input[type="text"]'); // 입력 필드 선택
	    form.addEventListener('submit', function(event) {
	        event.preventDefault(); // 기본 제출 동작 방지
	        var searchTerm = input.value.trim(); // 입력값 얻기 및 공백 제거
	        if (searchTerm !== '') {
	            // 여기에 검색 기능을 실행하는 코드를 추가할 수 있습니다.
	            alert('검색어: ' + searchTerm); // 예시로 검색어를 경고창으로 출력합니다.
	        } else {
	            alert('검색어를 입력하세요.');
	        }
	    });
	});
	</script>
	<script
		src="${pageContext.request.contextPath}/movie/html/js/jquery-3.3.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/movie/html/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/movie/html/js/player.js"></script>
	<script
		src="${pageContext.request.contextPath}/movie/html/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/movie/html/js/mixitup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/movie/html/js/jquery.slicknav.js"></script>
	<script
		src="${pageContext.request.contextPath}/movie/html/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/movie/html/js/main.js"></script>
</body>

</html>