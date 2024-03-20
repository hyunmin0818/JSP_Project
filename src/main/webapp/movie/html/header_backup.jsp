<%@page import="com.movie.web.dao.UserDAO"%>
<%@page import="com.movie.web.dto.UserDTO"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
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
	<%-- 사용자 로그인 상태 확인 --%>
	<%
	boolean isLoggedIn = false;
	String userId = null;
	if (session.getAttribute("userinfo") != null) {
		isLoggedIn = true;
		userId = ((UserDTO) session.getAttribute("userinfo")).getUser_id();
	}
	%>
	<%-- 로그인 상태에 따른 메뉴 표시 --%>
	<!-- Header Section Begin -->
	<header class="header">
		<div class="container">
			<div class="row">
				<%
				if (session != null && session.getAttribute("userinfo") != null) { //계정이 있을 경우 loginOk_index로 이동
				%>
				<div class="col-lg-2">
					<div class="header__logo">
						<a href="${pageContext.request.contextPath}/movie/html/loginOk_index.jsp">
							<!-- 	<a href="${pageContext.request.contextPath}/movie/html/index.jsp"> -->
							<img src="${pageContext.request.contextPath}/movie/html/img/logo2.png" id="logo2" alt="">
						</a>
					</div>
				</div>
				<%
				} else { //계정이 없을 경우 index로 이동
				%>
				<div class="col-lg-2">
					<div class="header__logo">
						<a href="${pageContext.request.contextPath}/movie/html/index.jsp">
							<img src="${pageContext.request.contextPath}/movie/html/img/logo2.png" id="logo2" alt="">
						</a>
					</div>
				</div>
				<%
				}
				%>
				<div class="col-lg-10">
					<div class="header__nav">
						<nav class="header__menu mobile-menu">

							<%
							if (session != null && session.getAttribute("userinfo") != null) { //계정이 있을 경우
							%>

							<div class="col-lg-15">
								<div class="header__right">


									<!-- 돋보기 검색 아이콘 -->
									<a href="#" class="search-switch"><span class="icon_search"></span></a>
									<!-- 사용자 아이콘 -->
									
									 <a href="${pageContext.request.contextPath}/movie/mypage.ms" style=" margin-right: 0px;">
									<span class="icon_profile" style=" cursor: pointer;"></span></a>
									<a href="${pageContext.request.contextPath}/movie/mypage.ms" id="youNeedLogin"><%=userId%></a>
									 |<a href="${pageContext.request.contextPath}/movie/logout.ms" id="youNeedLogout">로그아웃</a>
								</div>
								<!-- ${sessionscope.userinfo.user_id} -->
							</div>

							<%--a href="${pageContext.request.contextPath}/movie/logout.ms?index.jsp" --%>
							<!--id="youNeedLogin">로그아웃</a> -->
					</div>
					<div id="mobile-menu-wrap"></div>
				</div>
	</header>



	<%
	} else { //계정이 없을 경우
	%>

	<div class="col-lg-15">
		<div class="header__right">

			<!-- 돋보기 아이콘 -->
			<a href="#" class="search-switch"><span class="icon_search"></span></a>
			<!-- 사용자 아이콘 -->
			<a href="${pageContext.request.contextPath}/movie/html/mypage.jsp"> </a>

			<a href="${pageContext.request.contextPath}/movie/html/login.jsp"
				id="youNeedLogin">로그인</a>| <a
				href="${pageContext.request.contextPath}/movie/html/join.jsp"
				id="youNeedJoin">회원가입 </a>
		</div>
	</div>



	</div>
	<div id="mobile-menu-wrap"></div>
	</div>
	</header>

	<%
	}
	%>

	<!-- Header End -->
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