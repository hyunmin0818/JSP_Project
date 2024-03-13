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
                        <a href="./index.html">
                            <img src="img/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li><a href="./index.html">Homepage</a></li>
                                <li><a href="./categories.html">Categories <span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="./categories.html">Categories</a></li>
                                        <li><a href="./anime-details.html">Anime Details</a></li>
                                        <li><a href="./anime-watching.html">Anime Watching</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                        <li><a href="./signup.html">Sign Up</a></li>
                                        <li><a href="./login.html">Login</a></li>
                                    </ul>
                                </li>
                                <li><a href="./blog.html">Our Blog</a></li>
                                <li><a href="#">Contacts</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                    <div class="header__right">
                        <a href="#" class="search-switch"><span class="icon_search"></span></a>
                        <a href="./login.html"><span class="icon_profile"></span></a>
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
                        <h2>아이디/비밀번호 찾기</h2>
                        <p>영화 사이트에 오신걸 환영합니다</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Login Section Begin -->
    <div class="login__social">
        <div class="row d-flex justify-content-center">
    <section class="login" align ="center">
        <div class="container"  align ="center">
          
               
                    <div class="login__form" id ="logincenter">
                        <h3>아이디 찾기 <button type="submit" class="site-btn" id="forgot_id_button">?</button></h3>
                        <form action="#">
                            <div class="input__item">
                                <input type="text" placeholder="이름을 입력해주세요"> 
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="법정생년월일 6자리를 입력해주세요">
                                <span class="icon_lock"></span>
                            </div>

                            <div class="input__item">
                                <input type="text" placeholder="휴대번호 뒤 7~8자리를 입력해주세요">
                                <span class="icon_mail"></span>
                            </div>
                            
 

                            <button type="submit" class="site-btn">아이디 찾기</button>
                            
                        </form>
                        
                     <br>
                     
                    </div>
                    
                    <p class = "whitetext forgot_idpw_message" id="forgot_id_message">
                    </p>
                        
            
                 <br>
                    <a href="./findPw.html" class="forget_pass" align="center">비밀번호 찾기</a><br><br>
                    <a href="./login.html" class="forget_pass" align="center">로그인</a>
                </div>
            <div class="login__social" align="center">
                <div class="row d-flex justify-content-center">
                    <!-- <div class="col-lg-6"> -->
                        <div class="login__social__links" align="center">
                            <span>or</span>
                            <ul align="center">
                                <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With
                                Facebook</a></li>
                                <li><a href="#" class="google"><i class="fa fa-google"></i> Sign in With Google</a></li>
                                <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a>

                                </li>
                            </ul>
                        </div>
                        <br><br> 
                    <!-- </div> -->
                 
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
                        <a href="./index.html"><img src="img/logo2.png" alt=""></a>
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
    <script src="${pageContext.request.contextPath}/movie/html/js/findIdPw_button_click_information.js"></script> <!-- '?' 버튼 기능 추가-->


</body>

</html>