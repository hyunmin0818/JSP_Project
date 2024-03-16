<%@page import="com.movie.web.dto.UserDTO" %>
    <%@page import="com.movie.web.dto.CommentDTO" %>
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
            <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
                <%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
                            href="${pageContext.request.contextPath}/movie/html/css/bootstrap.min.css" type="text/css">
                        <link rel="stylesheet"
                            href="${pageContext.request.contextPath}/movie/html/css/font-awesome.min.css"
                            type="text/css">
                        <link rel="stylesheet"
                            href="${pageContext.request.contextPath}/movie/html/css/elegant-icons.css" type="text/css">
                        <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/plyr.css"
                            type="text/css">
                        <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/nice-select.css"
                            type="text/css">
                        <link rel="stylesheet"
                            href="${pageContext.request.contextPath}/movie/html/css/owl.carousel.min.css"
                            type="text/css">
                        <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/slicknav.min.css"
                            type="text/css">
                        <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/style.css"
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
                                <div class="row">
                                    <div class="col-lg-2">
                                        <div class="header__logo">
                                            <a href="./index.jsp">
                                                <img src="img/logo2.png" id="logo2" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-8">
                                        <div class="header__nav">
                                            <nav class="header__menu mobile-menu">
                                                <ul>

                                                    <!-- <li class="active"><a href="./index.jsp">홈</a></li>
                                        <li><a href="./categories.jsp">영화</span></a>
                                        <ul class="dropdown">
                                                <li><a href="./categories.jsp">현재 상영작</a></li>
                                                <li><a href="./categories.jsp">상영 예정작</a></li>

                                            </ul>
                                        </li>-->

                                                    <!--           <li><a href="./anime-details.html">극장정보</a></li>

                                <li><a href="./categories.html">예매<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="#">예매하기</a></li>
                                        <li><a href="#">예매내역</a></li>
                                        <li><a href="#">빠른예매</a></li>
                                        <li><a href="#">상영시간표</a></li>    
                                    </ul>   
                                     -->

                                                    <!-- <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">게시판<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">공지사항</a></li>
                                        <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">이벤트</a></li> -->
                                                    <!--                  <li><a href="#">리뷰</a></li> -->


                                                </ul>
                                                </li>



                                                <!-- <li><a href="${pageContext.request.contextPath}/movie/html/default.jsp">고객문의<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="${pageContext.request.contextPath}/movie/html/default.jsp">고객센터</a></li>
                                        <li><a href="#">주변 영화관 찾기</a></li>
                                    </ul>
                                </li> -->


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
                                            <span class="icon_profile arrow fa dropdown-toggle active arrow_carrot-down"
                                                id="dropdown-toggle" data-bs-toggle="dropdown"
                                                aria-expanded="false"></span>
                                            <ul class="dropup-center dropup dropdown-menu"
                                                aria-labelledby="dropdown-toggle">
                                                <li> <a href="./login.jsp"><span class="dropdown-item">로그인</span></a>
                                                </li>
                                                <li>
                                                    <hr class="dropdown-divider">
                                                </li>
                                                <li> <a href="./join.jsp"><span class="dropdown-item">회원가입</span></a>
                                                </li>
                                            </ul>
                                            <a href="/movie/html/login.jsp" id="youNeedLogin">로그인</a>|
                                            <a href="./join.jsp" id="youNeedJoin">회원가입 </a>
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
                        <div class="css-yy4d6f e1yew28617" style="position: relative;  height: 550px;">
                            <div class="css-stilcut"
                                style="background: url(https://an2-img.amz.wtchn.net/image/v2/UdinY7L06PQParoTrP1TAQ.jpg?jwt=ZXlKaGJHY2lPaUpJVXpJMU5pSjkuZXlKdmNIUnpJanBiSW1SZk1Ua3lNSGd4TURnd2NUZ3dJbDBzSW5BaU9pSXZkakl2YzNSdmNtVXZhVzFoWjJVdk1UQTJORGszTURBd056VTBOVGd4SW4wLk1RY1RhRC1YcXVPQ0VheG1SMmdiSFIzWEZ1RHpVRlVMU2ZOUEFXXzhxSlk) no-repeat center;"> 


                                <div class="css-sdsdsd">

                                    <h1 class="css-Title"> ${movie.title}</h1>
                                    <div class="css-qnwpahr">${moviet.title}</div>
                                    <div class="css-roqhddlf">${movie.releasedate}· ${movie.genre } · ${movie.nation}</div>
                                    <div class="css-qkdduddlfwkdfmrnrrk">${movie.runtime} · ${movie.rating}</div>
                                    <div class="css-tkd">${movie.awards1}${movie.awards2}</div>

                                </div>
                            </div>
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
									<div class="anime__details__pic set-bg"
										data-setbg="${movieinfo.posterUrl }">
										<!--이미지-->
										<div class="comment">
											<i class="fa fa-comments"></i> 6
										</div>
										<!-- 댓글-->
										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
										<!-- 조회수-->
									</div>
								</div>
								<!-- 영화 세부 정보 -->
								<div class="col-lg-9">
									<div class="anime__details__text">
										<div class="anime__details__title">
											<!-- 영화 제목과 일본어 제목 -->
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
											<a href="#" class="follow-btn"><i class="fa fa-heart-o"></i>
												Follow</a>

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
						<!-- <hr style=" border: none; border-top: 1px solid #08052e; width: 100%;   ">

                                    <input type="button" onclick="toggleList()"
                                        style="background-color: #e53637; margin-left: 50%; border-radius: 20px; "
                                        value="   +   ">
                                    <ul id="list" style="display: none;">  
                                        <div class="dd" style="padding-top: 20px;"></div>

                                        <div class="css-jxv74f-StyledWrapper">
                                            <figure class="css-nb4a5b-StyledImageWrapper e147tj4w2">
                                                <div class="acter__item__pic set-bg"
                                                    style="width: 100%;object-fit: contain;"
                                                    data-setbg="https://blog.kakaocdn.net/dn/D3ET1/btqBOD2CbD0/XoSIXDT0x7XNnjF4diokz0/img.jpg">
                                                </div>
                                                 스틸컷 만약 null이여도 안보임 
                                            </figure>
                                        </div>

                                        <div class="container">
                                            <div class="col-lg-8">
                                                <div class="row">
                                                    <div class="col-lg-8 col-md-8 col-sm-8">
                                                        <div class="section-title">
                                                            <h4>영화상 </h4>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="acter_muri">

                                                
                                                <div class="acter__item">
                                                  
                                                    <div class="acter__item__pic set-bg"
                                                        data-setbg="https://blog.kakaocdn.net/dn/D3ET1/btqBOD2CbD0/XoSIXDT0x7XNnjF4diokz0/img.jpg">

                                                    </div>
                                                   

                                                </div>
                                                <div class="acter__item__text">
                                                    <h5>이도현 / 봉길ㄴㄴㄴㄴㄴㄴㄴㄴ</h5>
                                                </div>

                                            </div>
                                        </div>
                                    </ul> -->
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
										<c:when
											test="${commentList != null and fn:length(commentList) > 0}">
											<c:forEach var="comment" items="${commentList }">
												<div class="movie__review__item">
													<div class="movie__review__item__pic">
														<img src="img/anime/review-1.jpg" alt="">
													</div>
													<div class="movie__review__item__text">
														<h6>
															${comment.user_id}<span>${comment.comment_time}</span>
														</h6>
														<p>${comment.comment }</p>
														<input type="button" value="삭제" class="delete"
															id="deleteButton" hidden>
													</div>
													<!-- 컨텐츠 있으면 뽑아오기 -->
												</div>
												<!-- 사용자 리뷰 입력 폼 -->

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
											<input type="hidden" name="movieSeq" value="${movieList[0].movieSeq}">
											<input type="hidden" name="comment_id"
												value="${comment.comment_id }">
											<textarea name="comment"placeholder="Comment 를 작성해주세요">${comment.comment }</textarea>
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
									<div class="product__sidebar__view__item set-bg"
										data-setbg="img/sidebar/tv-1.jpg">

										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
										<h5>
											<a href="#">Boruto: Naruto next generations</a>
										</h5>
									</div>
									<div class="product__sidebar__view__item set-bg"
										data-setbg="img/sidebar/tv-2.jpg">

										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
										<h5>
											<a href="#">The Seven Deadly Sins: Wrath of the Gods</a>
										</h5>
									</div>
									<div class="product__sidebar__view__item set-bg"
										data-setbg="img/sidebar/tv-3.jpg">

										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
										<h5>
											<a href="#">Sword art online alicization war of
												underworld</a>
										</h5>
									</div>
									<div class="product__sidebar__view__item set-bg"
										data-setbg="img/sidebar/tv-4.jpg">

										<div class="view">
											<i class="fa fa-eye"></i> 9141
										</div>
										<h5>
											<a href="#">Fate/stay night: Heaven's Feel I. presage
												flower</a>
										</h5>
									</div>
								</div>
							</div>
						</div></section>
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
                                                    src="img/logo2.png" alt=""></a>
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
                                        <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                            Copyright &copy;
                                            <script>document.write(new Date().getFullYear());</script> All rights
                                            reserved | This template is made with <i class="fa fa-heart"
                                                aria-hidden="true"></i> by <a href="https://colorlib.com"
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
                        <!-- const movies 
                       <!--  <script>
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


                        </script> -->
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