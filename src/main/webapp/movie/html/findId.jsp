<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="zxx">
<%@ include file="/movie/html/header.jsp" %>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>아이디 찾기</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0" />

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
    <!-- 페이지 프리로더 -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

   <!-- Header 시작 -->
    <header class="header">
        <div class="container">
            
        </div>
    </header>



    <!-- Header 끝 -->

    <!-- Normal Breadcrumb 시작 -->
    
    <section class="normal-breadcrumb set-bg" data-setbg="img/cinema1.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>아이디/비밀번호 찾기</h2>
                        <p>보노보노 영화 사이트에 오신걸 환영합니다</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb 끝 -->
    
    <!-- 경계선 -->
	<hr style ="margin-bottom : 100px">
	
	
    <!-- 아이디 찾기 폼 시작 -->
          <div class="row d-flex justify-content-center">
    <section class="login" align ="center">
        <div class="container"  align ="center">
          
               
                    <div class="login__form" id ="logincenter">
                        <h3>아이디 찾기 <button type="submit" class="site-btn" id="forgot_id_button">?</button></h3>
                        <form action="#">
                            <div class="input__item">
                                <input type="text" placeholder="이름을 입력해주세요"> 
                                <span class="icon_id"></span>
                            </div>
                         
                      
                            <br>
                            
                            <div class="input__item">
                                <input type="text" placeholder="생년월일을 입력해주세요"> 
                              <span class="material-symbols-outlined">cake</span>
                            </div>
                         <br>   
                            <div class="input__item">
                                <input type="text" placeholder="이메일을 입력해주세요"> 
                               <span class="material-symbols-outlined">call</span>
                            </div>
 					 <br>
							<!-- 버튼 -->
                            <button type="submit" class="site-btn">아이디 찾기</button>
                            
                        </form>
                        
                     <br>
                     
                    </div>
                    
                    	<!--  ? 버튼 클릭시 출력 메시지 -->
                    <p class = "forgot_idpw_message" id="forgot_id_message">
                    </p>
                        
            
                 <br>
                    <a href="${pagecontext.request.contextpath}/movie/html/findPw.jsp" class="forget_pass" align="center">비밀번호 찾기</a> | 
                    <a href="${pagecontext.request.contextpath}/movie/html/login.jsp" class="forget_pass" align="center">로그인</a>
                </div>

                        <br><br> 
                   
                 
                </div>
            </div>
        </div>
    </section>

            <div class="login__social">
                <div class="row d-flex justify-content-center">

                </div>
            </div>
        </div>
    </section>
    <!-- 아이디 확인 창 끝 -->

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

      <!-- 검색창 활성화 -->
      <div class="search-model">
        <div class="h-100 d-flex align-items-center justify-content-center">
            <div class="search-close-switch"><i class="icon_close"></i></div>
            <form class="search-model-form">
                <input type="text" id="search-input" placeholder="Search here.....">
            </form>
        </div>
    </div>
    <!-- 검색창 끝 -->

    <!-- 자바스크립트 -->
    <script src="${pageContext.request.contextPath}/movie/html/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/movie/html/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/movie/html/js/player.js"></script>
    <script src="${pageContext.request.contextPath}/movie/html/js/jquery.nice-select.min.js"></script>
    <script src="${pageContext.request.contextPath}/movie/html/js/mixitup.min.js"></script>
    <script src="${pageContext.request.contextPath}/movie/html/js/jquery.slicknav.js"></script>
    <script src="${pageContext.request.contextPath}/movie/html/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/movie/html/js/main.js"></script>


</body>

</html>