<%@page import="com.movie.web.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Anime Template">
<meta name="keywords" content="Anime, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Mypage</title>

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
<%
    UserDTO udto =  (UserDTO)session.getAttribute("userinfo");
%>


<body>
	<!-- 페이지 프리로더 -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- 헤더 시작 -->
	<header class="header">
		<div class="container"></div>
	</header>
	<!-- 헤더 끝 -->

	<!-- Normal Breadcrumb 시작 -->
	<section class="normal-breadcrumb set-bg" data-setbg="img/cinema12.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="normal__breadcrumb__text">
						<h2>마이페이지</h2>
						<a
							href="${pageContext.request.contextPath}/mypage.ms?userid=${sessionScope.userinfo}">

							<p>${sessionScope.userinfo.getUsername()} 님의 마이페이지입니다</p>
						</a>

					</div>
				</div>
			</div>

		</div>

	</section>

	<hr>
	<!-- Normal Breadcrumb 끝 -->

	<!-- 마이페이지 창 활성화 -->
	<div class="login__social">
		<div class="row d-flex justify-content-center">
			<section class="login spad" align="center">
				<div class="container">
					<div class="login__form" id="logincenter">
						<form action="${pageContext.request.contextPath}/movie/html/loginOk_index.jsp">
							<!--입력창 비활성화 -->
							<br>
							<h5 align="left" class="blacktext">이름</h5>
							<br>
							<div class="input__item1">
								<h4 class="blacktext">${sessionScope.userinfo.getUsername()}</h4>
								<br>
							</div>
							<h5 align="left" class="blacktext">생년월일</h5>
							<br>

							<h4 class="blacktext">${sessionScope.userinfo.getUserbirth()}</h4>
							<br>
					</div>

					<h5 align="left" class="blacktext">이메일</h5>
					<br>
					<div class="input__item">
						<h4 class="blacktext">${sessionScope.userinfo.getEmail()}</h4>
						<br>
					</div>
					<br>
					<br>
					<br>				
					<br>			
					<button type="submit" class="site-btn"
						href="${pageContext.request.contextPath}/movie/returnPage">확인</button>
					<button type="button" class="site-btn whitetext"
						id="profile_modifybutton1"
						href="${pageContext.request.contextPath}/movie/updateMypage.ms">수정</button>
					<br> <br> <br> <br> <br> <br>
				</div>
		</div>
	</div>
	</div>


	</div>
	</div>
	</div>


	</section>
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

	<!-- 우측 상단 돋보기 검색 창 활성화 시 -->
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
	<!-- 검색창 끝 -->

	<!-- 자바스크립트 -->
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
	<script
		src="${pageContext.request.contextPath}/movie/html/js/profile_modify.js"></script>



</body>

</html>