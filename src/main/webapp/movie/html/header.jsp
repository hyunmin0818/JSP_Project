<%@page import="com.movie.web.dao.UserDAO"%>
<%@page import="com.movie.web.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    userId = ((UserDTO)session.getAttribute("userinfo")).getUser_id();
}
%>
	<%-- 로그인 상태에 따른 메뉴 표시 --%>
	<!-- Header Section Begin -->
	<header class="header">
    <div class="container">
        <div class="row">
            <div class="col-lg-2">
                <div class="header__logo">
                    <a href="molvie/html/loginOk_index.jsp">
                        <img src="img/logo2.png" id="logo2" alt="">
                    </a>
                </div>
            </div>
            <div class="col-lg-10"> <!-- 수정 -->
                <div class="header__right">
                    <% if (isLoggedIn) { %>
                    <!-- 로그인 상태일 때 보여질 내용 -->
                    <a href="#" class="search-switch"><span class="icon_search"></span></a>
                    <span class="icon_profile arrow fa dropdown-toggle active arrow_carrot-down" id="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"></span>
                    <ul class="dropup-center dropup dropdown-menu" aria-labelledby="dropdown-toggle">
                        <li><a href="${pageContext.request.contextPath}/movie/mypage.ms"><span class="dropdown-item">마이페이지</span></a></li>
                        <li><hr class="dropdown-divider"></hr></li>
                        <li><a href="${pageContext.request.contextPath}/movie/logout.ms"><span class="dropdown-item" id="redtext">로그아웃</span></a></li>
                    </ul>
                    
                    <a href="#" id="youNeedLogin">${sessionscope.userinfo.user_id}</a>
                    <% } else { %>
                    <!-- 비로그인 상태일 때 보여질 내용 -->
                    <a href="#" class="search-switch"><span class="icon_search"></span></a>
                    <a href="./login.jsp" id="youNeedLogin">로그인</a> | <a href="movie/html/join.jsp" id="youNeedJoin">회원가입</a>
                    <% } %>
                </div>
            </div>
        </div>
    </div>
</header>


                        <script src="${pageContext.request.contextPath}/movie/html/js/jquery-3.3.1.min.js"></script>
                        <script src="${pageContext.request.contextPath}/movie/html/js/bootstrap.min.js"></script>
                        <script src="${pageContext.request.contextPath}/movie/html/js/player.js"></script>
                        <script
                            src="${pageContext.request.contextPath}/movie/html/js/jquery.nice-select.min.js"></script>
                        <script src="${pageContext.request.contextPath}/movie/html/js/mixitup.min.js"></script>
                        <script src="${pageContext.request.contextPath}/movie/html/js/jquery.slicknav.js"></script>
                        <script src="${pageContext.request.contextPath}/movie/html/js/owl.carousel.min.js"></script>
                        <script src="${pageContext.request.contextPath}/movie/html/js/main.js"></script>

</body>
</html>