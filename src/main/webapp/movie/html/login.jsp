<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/movie/html/header.jsp" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>로그인</title>

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
                        <h2>로그인</h2>
                        <p>영화 사이트에 오신걸 환영합니다</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb 끝 -->
	<hr/>
    <!-- 좌측 로그인 창 활성화 -->
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
               
        <!--  우측 회원가입 버튼 창 -->
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
                            <span style="margin-bottom: 200px;margin-top: 30px;">or</span>
                            <ul>
                              
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 로그인 창 끝 -->

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

      <!-- 돋보기 검색창을 눌렀을 떄 화면 창 -->
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
    <script src="${pageContext.request.contextPath}/movie/html/js/login.js"></script>

</body>

</html>