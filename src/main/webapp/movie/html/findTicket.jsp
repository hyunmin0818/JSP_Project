<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
                        <a href="${pageContext.request.contextPath}/movie/html/loginOk_index.jsp">
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
                                <li class="active"><a href="${pageContext.request.contextPath}/movie/html/loginOk_index.jsp">홈</a></li>
                                <!-- 카테고리 메뉴 -->
                                <li><a href="${pageContext.request.contextPath}/movie/html/categories.jsp">영화<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="${pageContext.request.contextPath}/movie/html//categories.jsp">현재 상영작</a></li>
                                        <li><a href="${pageContext.request.contextPath}/movie/html//categories.jsp">상영 예정작</a></li>
                                        <!-- <li><a href="./anime-watching.html">트레일러 </a></li> -->
                                       
                                    </ul>
                                </li>
                                
                               <!--  <li><a href="./anime-details.html">극장정보</a></li> -->

                                <!-- <li><a href="./categories.html">예매<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="#">예매하기</a></li>
                                        <li><a href="#">예매내역</a></li>
                                        <li><a href="#">빠른예매</a></li>
                                        <li><a href="#">상영시간표</a></li>    
                                    </ul>    -->
                                    
                                    
                                <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">게시판<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">공지사항</a></li>
                                        <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">이벤트</a></li>
                                 
                                       
                                        <!-- 카테고리 관련 페이지로 이동하는 링크
                                        <li><a href="./categories.html">차트/상영예정작</a></li>
                                        <li><a href="./blog-details.html">예매</a></li>
                                        <li><a href="./anime-details.html">상세정보</a></li>
                                        <li><a href="./anime-watching.html">티저</a></li>
                                        <li><a href="./signup.html">회원가입</a></li>
                                        <li><a href="./login.html">로그인</a></li> -->
                                    </ul>
                                </li>



                                <li><a href="${pageContext.request.contextPath}/movie/html/default.jsp">고객문의<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="${pageContext.request.contextPath}/movie/html/defaut.jsp">고객센터</a></li>
                                        <li><a href="#">주변 영화관 찾기</a></li>
                                    </ul>
                                </li>


                              <!-- 대형 영화 사이트 참고한 양식 (스토어, 이벤트, 혜택)-->
                              <!-- 시간이 남으면 추가해보는걸로 -->


                                <!-- <li><a href="#">스토어</a></li>      

                                <li><a href="./categories.html">이벤트<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="#">이벤트</a></li>
                                        <li><a href="#">당첨자</a></li>
                                    </ul>
                                </li>



                                <li><a href="./blog.html">혜택</a></li> -->


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

	<!-- Normal Breadcrumb Begin -->
	<section class="normal-breadcrumb set-bg" data-setbg="img/cinema.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="normal__breadcrumb__text">
						<h2>예매정보</h2>
						<p>admin(DB값으로 수정해주세요) 님의 예매정보입니다</p>
						<!-- 이름 하드코딩했습니다 DB값으로 수정부탁드려요-->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Normal Breadcrumb End -->

	<!-- Login Section Begin -->
	<div class="login__social">
		<div class="row d-flex justify-content-center">
			<section class="login spad" align="center">
				<!-- <h3 align="center" >나의 정보</h3><br> -->
				<!-- <p>마이페이지!!!!!!!!!!!!!!!!!!!!!!!!!</p> -->

				<div class="container">
					<div class="row">

						<div class="col-lg-6">
							<div class="login__form" id="logincenter">
								<!-- <h3>Login</h3> -->

								<img src="./img/wonka.png" id="member_profile" />

							</div>

						</div>


						<div class="col-lg-6">
							<div class="login__form" id="logincenter">
								<h3 align="center">나의 예매정보</h3>
								<br>
								<form action="./loginOk_index.html">
									<h5 align="left" class="whitetext">영화제목 :</h5>
									<div class="input__item1">
										<h5 class="whitetext">영화제목(DB)</h5>
										<br>

										<!--입력창 비활성화 -->
										<!-- <input type="text" class ="blacktext" placeholder="이름을 입력해주세요" value ="Nickname(이름 DB값으로 수정해주세요)" disabled> 
                                <span class="icon_mail"></span> -->


									</div>


									<!--  <h5 align="left" class="whitetext">프로필 사진</h5><br>  
                            <div class="input__item">
                                <input type="file" placeholder="프로필 사진" value ="Nickname(이름 DB값으로 수정해주세요)" disabled> 
                                <span class="icon_mail"></span>
                            </div>  !!!!!!!!!!!!)프로필 수정 때 사용\ !!!!!!!!!!!!!-->


									<h5 align="left" class="whitetext">극장정보 :</h5>
									<br>
									<div class="input__item1">
										<h5 class="whitetext">극장(DB)</h5>
									
										<!--  <div class="input__item"></div>
                            <input type="text" placeholder="법정생년월일 6자리를 입력해주세요" value ="0123456(생년월일 DB값으로 수정해주세요)" disabled>
                            <span class="icon_lock"></span> -->
									</div>


									<h5 align="left" class="whitetext">예매시간 :</h5>
									<br>
									<div class="input__item1"></div>
									<h5 class="whitetext">예매시간(DB)</h5>
									<br>
									<!--  <div class="input__item"></div>
                                <input type="text" placeholder="법정생년월일 6자리를 입력해주세요" value ="0123456(생년월일 DB값으로 수정해주세요)" disabled>
                                <span class="icon_lock"></span> -->
							</div>

							<h5 align="left" class="whitetext">티켓정보 :</h5>
							<br>

							<div class="input__item">
								<h5 class="whitetext">
									티켓정보(DB)
									</p>
									<!--  <div class="input__item">
                                
                                 <input type="text" placeholder="휴대번호 뒤 7~8자리를 입력해주세요.(01X제외)"value ="999-9999-9999(휴대전화 DB값으로 수정해주세요)" disabled>
                                <span class="icon_mail"></span>
                            </div> -->
							</div>

							<h5 align="left" class="whitetext">좌석 :</h5>
							<br>

							<div class="input__item">
								<h5 class="whitetext">좌석(DB)</h5>
								<br>
							</div>


							<h5 align="left" class="whitetext">가격 :</h5>
							<br>

							<div class="input__item">
								<h5 class="whitetext">가격(DB)</h5>
								<br>
							</div>

							<br>
							<br>
							<br>

							<!-- <h5 align="left" class="whitetext">예매정보 조회</h5><br>
                            <div class="input__item">
                                <input type="text" placeholder="예매정보 조회" value ="영화예매정보조회 (DB)" disabled>
                                <span class="icon_mail"></span>
                            </div> -->
							<br>



							<button type="submit" class="site-btn">확인</button>

							<!-- </form> -->
							<button type="button" class="site-btn" id="profile_modifybutton1"
								href="mypage_modify.html">수정</button>

							<button type="button" class="site-btn" id="cancelTicket">예매취소</button>
							<br> <br> <br> <br> <br>
						</div>


					</div>
				</div>
		</div>
	</div>
	</div>
	</div>
	</div>
	</div>


	</section>
	<!-- Login Section End -->

	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="page-up">
			<a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="footer__logo">
						<a href="${pageContext.request.contextPath}/movie/html/loginOk_index.jsp"><img
							src="img/logo2.png" alt=""></a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="footer__nav">
						<ul>
							<li class="active"><a
								href="${pageContext.request.contextPath}/movie/html/loginOk_index.jsp">홈</a></li>
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