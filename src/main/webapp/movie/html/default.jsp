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

                                <li class="active"><a href="./index.jsp">홈</a></li>    
                                <li><a href="./categories.jsp">영화<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="./categories.jsp">현재 상영작</a></li>
                                        <li><a href="./categories.jsp">상영 예정작</a></li>
                                        <!-- <li><a href="./anime-watching.html">트레일러 </a></li> -->
                                    </ul>
                                </li>

                      <!--           <li><a href="./anime-details.html">극장정보</a></li>

                                <li><a href="./categories.html">예매<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="#">예매하기</a></li>
                                        <li><a href="#">예매내역</a></li>
                                        <li><a href="#">빠른예매</a></li>
                                        <li><a href="#">상영시간표</a></li>    
                                    </ul>   
                                     -->
                                    
                                <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">게시판<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">공지사항</a></li>
                                        <li><a href="${pageContext.request.contextPath}/movie/html/notice.jsp">이벤트</a></li>
                       <!--                  <li><a href="#">리뷰</a></li> -->
                                 
                                       
                                    </ul>
                                </li>



                                <li><a href="${pageContext.request.contextPath}/movie/html/default.jsp">고객문의<span class="arrow_carrot-down"></span></a>
                                    <ul class="dropdown">
                                        <li><a href="${pageContext.request.contextPath}/movie/html/default.jsp">고객센터</a></li>
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
                      <span class="icon_profile arrow fa dropdown-toggle active arrow_carrot-down" id="dropdown-toggle"
                            data-bs-toggle="dropdown" aria-expanded="false"></span>   
                       <ul class="dropup-center dropup dropdown-menu" aria-labelledby="dropdown-toggle">
                         <li>  <a href="./login.jsp"><span class="dropdown-item">로그인</span></a></li>
                          <li><hr class="dropdown-divider"></li>      
                       <li> <a href="./signup.jsp"><span class="dropdown-item">회원가입</span></a></li> 
                      </ul>
                      <a href ="./login.jsp" id ="youNeedLogin">로그인</a>|
                      <a href ="./join.jsp" id ="youNeedJoin">회원가입 </a>
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
                        <a href="${pageContext.request.contextPath}/movie/html/index.jsp"><i class="fa fa-home"></i> Home</a>
                        <!-- 카테고리 페이지로 이동하는 링크 -->
                        <a href="${pageContext.request.contextPath}/movie/html/default.jsp">고객센터</a>
                        <!-- 현재 페이지의 카테고리 이름을 표시하는 부분 -->
                        <span>문의</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Anime Section Begin -->
    <section class="anime-details spad">
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <form action="#" method="post">
                        <div class="col-lg-9">
                            <div class="anime__default">
                                <div class="anime__details__title">
                                    <!-- 고객센터 문의내역-->
                                    <h3>제목</h3><input type="text" id="title" style="width: 1000px;">
                                <!-- 상세내용 -->
                                상세 내용:
                                <textarea style="width: 1000px; height: 400px; overflow: auto;" id="plot"></textarea>
                                <div class="anime__details__pic set-bg" data-setbg=""> <!--이미지-->
                                <!--     -->
                                <div class="anime__details__btn">
                                    <input type="submit" class="reservation" onclick="submitForm(event)">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
    </section>
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
                    <a href="${pageContext.request.contextPath}/movie/html/index.jsp"><img src="img/logo2.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="footer__nav">
                    <ul>
                        <li class="active"><a href="${pageContext.request.contextPath}/movie/html/index.jsp">홈</a></li>
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
    <script>
        // 이미지를 미리보기하기 위한 JavaScript 함수
        function previewImage(event) {
            // FileReader 객체 생성
            var reader = new FileReader();
            // 파일 로드가 완료되었을 때 실행될 콜백 함수 정의
            reader.onload = function () {
                // 선택한 이미지를 CSS 배경 이미지로 설정하기 위한 준비
                var backgroundImage = "url('" + reader.result + "')";
                // 선택한 이미지를 표시할 요소 선택
                var element = document.querySelector('.anime__details__pic');
                // 요소의 배경 이미지를 선택한 이미지로 설정
                element.style.backgroundImage = backgroundImage;
            };
            // FileReader를 사용하여 선택한 파일을 읽기 시작
            reader.readAsDataURL(event.target.files[0]);
        }
    </script>
<script>
    // 양식 제출 전 값을 할당했는지 확인하는 jQuery 함수
    function submitForm(event) {
        // 각 입력 필드의 값을 가져와 변수에 할당
        let title = $('#title').val();                     // 네임
        let plot = $('#plot').val();                              

        if (title == "" || title == null) { 
            alert("이름 필드값을 입력해주세요");
            event.preventDefault();
            return false; // 양식 제출 방지
        }
        if (plot == "" || plot == null) {
            alert("영화 줄거리 필드값을 입력해주세요");
            event.preventDefault();
            return false; 
        }

    }
</script>
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