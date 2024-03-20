<%@page import="com.movie.web.dto.CommentDTO"%>
<%@page import="com.movie.web.dao.CommentDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.movie.web.dto.MovieDTO"%>
<%@page import="com.movie.web.dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<%@ include file="/movie/html/header.jsp"%>
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"  rel="stylesheet">

<!-- Css Styles test -->
<link
   href="https://cdn.jsdelivr.net/npm/nouislider/distribute/nouislider.min.css"
   rel="stylesheet">
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
                     <div class="col-lg-4 col-md-4 col-sm-4"></div>
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
                            CommentDAO cdao = new CommentDAO();
                            
                            for (MovieDTO movie : movieList) {
                              
                                List<CommentDTO> comments = cdao.getCmByMovieSeq(movie.getMovieSeq());
                                // 댓글 수 계산
                                int commentCount = comments.size();
         
                        %>
                                <div class="col-lg-4 col-md-6 col-sm-6">
                                    <div class="product__item">
                                        <a href="${pageContext.request.contextPath}/movie/clickPoster.mo?movieSeq=<%=movie.getMovieSeq()%>" onclick="updateViewsOnPage(<%=movie.getMovieSeq()%>)">
                                            <div class="product__item__pic set-bg" data-setbg="<%=movie.getPosterUrl()%>" >
                                                <div class="comment">
                                                    <i class="fa fa-comments"></i><%=commentCount%>
                                                </div>
                                                <div class="view">
                                                    <i class="fa fa-eye"></i> <%=movie.getMovieView() %>
                                                </div>
                                            </div>
                                        </a>
                                        <div class="product__item__text">
                                            <ul>
                                                <li><%= movie.getGenre() %></li>
                                            </ul>
                                            <h5>
                                                <a href="movie-details.jsp?movieSeq=<%=movie.getMovieSeq()%>" onclick="updateViewsOnPage(<%=movie.getMovieSeq()%>)"><%= movie.getTitle() %></a>
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                        <%
                            }
                        %>


                        </div>
                     </div>
               <!-- 페이지 처리 부분 -->
               <div class="pagination-container"">
                  <div style="text-align: center;">
                     <%
                     if (startPage > 1) {
                     %>
                     <a href="?page=<%=startPage - 1%>"><i
                        class="fa fa-angle-double-left"></i></a>
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
                     <a href="?page=<%=endPage + 1%>"><i
                        class="fa fa-angle-double-right"></i></a>
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
                        <div class="slider-container">
                            <div id="slider-topview-range"></div>
                                <p> <span id="slider-range-value"></span></p>
                        </div>
                    </div>
                </div>
                <div class="product__sidebar__comment" id="topview-movies">
                    <!-- 여기에 댓글 관련 내용 추가 -->
                    <div class="product__sidebar__view__item" >
                        <h5><a href="#">${movies.title}</a></h5>
                    </div>
                </div>
            </div>
        </div>
   </section>


   <!-- Product Section Begin end -->

   <!-- Footer Section Begin -->
   <footer class="footer">
      <div class="page-up">
         <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
      </div>
      <div class="container">
         <div class="row">
            <div class="col-lg-3">
               <div class="footer__logo">
                  <a href="./index.jsp"><img src="img/logo2.png" alt=""></a>
               </div>
            </div>
            <div class="col-lg-6">
               <div class="footer__nav">
                  <ul>
                     <li class="active"><a href="./index.jsp">홈</a></li>
                     <li><a href="./default.jsp">고객센터</a></li>
                     <li><a href="./blog.jsp">블로그</a></li>

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
         <div class="search-close-switch">
            <i class="icon_close"></i>
         </div>
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
   <script  src="${pageContext.request.contextPath}/movie/html/js/jquery.nice-select.min.js"></script>
   <script  src="${pageContext.request.contextPath}/movie/html/js/mixitup.min.js"></script>
   <script  src="${pageContext.request.contextPath}/movie/html/js/jquery.slicknav.js"></script>
   <script src="${pageContext.request.contextPath}/movie/html/js/owl.carousel.min.js"></script>
   <script src="${pageContext.request.contextPath}/movie/html/js/main.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/nouislider/distribute/nouislider.min.js"></script>
   <script src="https://cdn.jsdelivr.net/npm/@babel/polyfill/dist/polyfill.min.js"></script>
   <script src="${pageContext.request.contextPath}/movie/html/js/date-slider.js"></script>

</body>

</html>