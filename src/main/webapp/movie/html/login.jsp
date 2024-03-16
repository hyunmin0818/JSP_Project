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
    <title>Anime | Template</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/style.css" type="text/css">
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
                                    id="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"></span>
                                <ul class="dropup-center dropup dropdown-menu" aria-labelledby="dropdown-toggle">
                                    <li> <a href="./login.jsp"><span class="dropdown-item">로그인</span></a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li> <a href="./signup.jsp"><span class="dropdown-item">회원가입</span></a></li>
                                </ul>
                                <a href="./login.jsp" id="youNeedLogin">로그인</a>|
                                <a href="./join.jsp" id="youNeedJoin">회원가입 </a>
                            </div>
                        </div>



                    </div>
                    <div id="mobile-menu-wrap"></div>
                </div>
            </header>



            <!-- Header End -->

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="img/cinema1.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>로그인</h2>
                        <p>영화 사이트에 오신걸 환영합니다</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->
	<hr/>
    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>로그인</h3>
						<c:if test="${not empty param.flag}">
							<c:if test="${not param.flag}">
								<script>
									alert("아이디나 비밀번호를 확인하세요");
								</script>
							</c:if>
						</c:if>
						<form action="${pageContext.request.contextPath}/SubmitOk.ms" method="post">
                            <div class="input__item">
                                <input type="text" placeholder="아이디" id="user_id" name="user_id" value="">
                                <span class="icon_id"></span>
                            </div>
                            <div class="input__item">
                                <input type="password" placeholder="비밀번호" id="userpassword" name="userpassword">
                                <span class="icon_lock"></span>
                            </div>
                           
                            
                            <div class="findIdPw_link" align="center"> 
                                <label><input type="checkbox" id="check_saveId"> <a class="whitetext" id="saveId">아이디 저장</a></label><t>|</t>
                                <a href="./findIdPw.jsp" >아이디 찾기 </a>| 
                               
                                <a href="./findPw.jsp" class="blacktext">비밀번호 찾기</a>
                            </div>
                            <button type="submit" class="site-btn">로그인</button>                 
                         
                          
                        </form>
                        
                        
                    </div>
                    
                    
                </div>
               
        
                <div class="col-lg-6">
                    <div class="login__register" align="center" style="margin-top: 80px;">
                        <h3>계정이 없습니까?</h3>
                        <a href="join.jsp" class="primary-btn" >회원가입</a><br>
                    </div>
                  
          
                </div>
                
            </div>
            <div class="login__social">
             

                <div class="row d-flex justify-content-center">
                    <div class="col-lg-6">
                        <div class="login__social__links">
                            <span style="margin-bottom: 200px;">or</span>
                            <ul>
                              
                            </ul>
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
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="footer__nav">
                        <ul>
                            <li class="active"><a href="./index.html">Homepage</a></li>
                            <li><a href="./categories.html">Categories</a></li>
                            <li><a href="./blog.html">Our Blog</a></li>
                            <li><a href="#">Contacts</a></li>
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
    <script src="${pageContext.request.contextPath}/movie/html/js/login.js"></script>

</body>

</html>