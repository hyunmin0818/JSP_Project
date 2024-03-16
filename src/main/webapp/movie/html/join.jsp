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
    <title>BonoBono Movie</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />
	
    
    

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"> 
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css"> 
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css"> 
    <link rel="stylesheet" href="css/plyr.css" type="text/css"> 
     <link rel="stylesheet" href="css/nice-select.css" type="text/css">
     <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css"> 
     <link rel="stylesheet" href="css/slicknav.min.css" type="text/css"> 
     <link rel="stylesheet" href="css/style.css" type="text/css"> 
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
                        <h2 class ="h2_blacktext">회원가입</h2>
                        <p id ="p_blacktext">보노보노 영화 사이트에 오신 걸 환영합니다</p>  
                    </div>
                </div>
            </div>
             
        </div>
       
    </section>
    <!-- Normal Breadcrumb End -->
 <hr />
    <!-- Login Section Begin -->
  
        
    <section class="login" align ="center">
        <!-- <h3 align="center" >나의 정보</h3><br> -->
        <!-- <p>마이페이지!!!!!!!!!!!!!!!!!!!!!!!!!</p> -->
       
        <div class="container">
            <div class="row" >
             
                    <div class="login__form" id ="logincenter">
                        <!-- <h3 align="center" >회원가입</h3><br> -->
                        <form action="${pageContext.request.contextPath}/movie/joinOk.ms" method="post">               <!--입력창 활성화 -->
                            <div>
                            <h5 align="left" class="blacktext">아이디 <button type="button" class="site-btn" id ="check_id_btn" align="left">중복확인</button><a id="check_id_message"></a></h5>
                            
                            </div>
                            <div class="input__item">
                               
                                <input type="text" class ="blacktext" placeholder="아이디를 입력해주세요" id="user_id" name="user_id">
                                <span class="icon_id"></span>
                                
                            </div>

                            <h5 align="left" class="blacktext">비밀번호<a id="check_pw_message"></a></h5><br>
                            <div class="input__item">
                               
                                <input type="password" class ="blacktext" placeholder="비밀번호를 입력해주세요" id="userpassword" name="userpassword"> 
                                <span class="icon_lock"></span>
                            </div>

                            <h5 align="left" class="blacktext">비밀번호 확인<a id="check_pw_message2"></a></h5><br>
                            <div class="input__item">
                               
                                <input type="password" class ="blacktext" placeholder="비밀번호를 다시 입력해주세요" id="userpassword2"> 
                              <span class="icon_lock"></span>
                            </div>

                            <h5 align="left" class="blacktext">이름</h5><br>
                            <div class="input__item">
                               
                                <input type="text" class ="blacktext" placeholder="이름을 입력해주세요" id="username" name="username"> 
                                <span class="material-symbols-outlined">signature</span>
                            </div>
           
                        


                            <h5 align="left" class="blacktext">생년월일</h5><br>  
                            <div class="input__item">
                                <input type="text" placeholder="법정생년월일 6자리를 입력해주세요" id="userbirth" name="userbirth">
                                <span class="material-symbols-outlined">cake</span>
                            </div>

                            <h5 align="left" class="blacktext">휴대번호</h5><br>
                            <div class="input__item">
                                
                                <input type="text" placeholder="휴대번호 뒤 7~8자리를 입력해주세요" id="userphone" name= "userphone">
                                <span class="material-symbols-outlined">call</span>
                            </div>
                            <h5 align="left" class="blacktext">이메일</h5><br>
                            <div class="input__item">
                                <input type="text" placeholder="이메일 정보를 입력해주세요" id="email" name="email">
                                <span class="icon_mail"></span>
                            </div>
 
						<br>
                            <button type="submit" class="site-btn" id="join_button">가입</button>
                        </form>
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
                    <ul>
                        <li><!--<li class="active">--><a href="${pageContext.request.contextPath}/movie/html/index.jsp">홈</a></li>
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
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/player.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/profile_modify.js"></script>
    <script src="js/check_id.js"></script>


</body>

</html>