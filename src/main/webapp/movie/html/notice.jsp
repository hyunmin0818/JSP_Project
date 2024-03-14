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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/notice.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/style.css" type="text/css">
</head>

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
                        <a href="${pageContext.request.contextPath}/movie/html/notice.jsp">게시판</a>
                        <!-- 현재 페이지의 카테고리 이름을 표시하는 부분 -->
                        <span>공지사항</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- UI Object -->
    <section class="product-page spad">
        <div class="container">
            <table cellspacing="0" border="1" summary="게시판의 글제목 리스트" class="tbl_type">
                <caption>게시판 리스트</caption>
                <colgroup>
                    <col width="30">
                    <col width="80">
                    <col>
                    <col width="115">
                    <col width="85">
                    <col width="60">
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col">&nbsp;</th>
                        <th scope="col">No</th>
                        <th scope="col">제목</th>
                        <th scope="col">글쓴이</th>
                        <th scope="col">날짜</th>
                        <th scope="col">조회수</th>
                    </tr>
                </thead>
                <tbody>
                    <div class="row">
                        <div class="col-lg-8">
                            <tr>
                                <td class="frm"><input type="checkbox" name="" id="chk_sel" value=""><label
                                        for="chk_sel">선택</label>
                                </td>
                                <td class="num">10</td>
                                <td class="title"><a href="#">새로운 게시판 글쓰기 새로운 게시판 글쓰기 새로운 게시판 글쓰기 새로운 게시판 글쓰기 새로운 게시판
                                        글쓰기 새로운 게시판
                                        글쓰기</a></td>
                                <td><a href="#">네이버맨</a></td>
                                <td class="date">2008/02/14</td>
                                <td class="hit">1234</td>
                            </tr>
                            <tr class="reply">
                                <td class="frm"><input type="checkbox" name="" id="chk_sel2" value=""><label
                                        for="chk_sel2">선택</label>
                                </td>
                                <td class="num">&nbsp;</td>
                                <td class="title" style="padding-left:10px;"><a href="#">블로그 개편 답글</a></td>
                                <td><a href="#">네이버맨</a></td>
                                <td class="date">2008/02/14</td>
                                <td class="hit">1234</td>
                            </tr>
                            <tr class="reply">
                                <td class="frm"><input type="checkbox" name="" id="chk_sel3" value=""><label
                                        for="chk_sel3">선택</label>
                                </td>
                                <td class="num">&nbsp;</td>
                                <td class="title" style="padding-left:20px;"><a href="#">블로그 개편 답글</a></td>
                                <td><a href="#">네이버맨</a></td>
                                <td class="date">2008/02/14</td>
                                <td class="hit">1234</td>
                            </tr>
                            <tr class="reply">
                                <td class="frm"><input type="checkbox" name="" id="chk_sel4" value=""><label
                                        for="chk_sel4">선택</label>
                                </td>
                                <td class="num">&nbsp;</td>
                                <td class="title" style="padding-left:30px;"><a href="#">블로그 개편 답글</a> <img
                                        src="img/ic_pic.gif" width="13" height="12" alt="첨부이미지" class="pic"> <a href="#"
                                        class="comment">[5]</a> <img src="img/ic_new.gif" width="10" height="9" alt="새글"
                                        class="new"></td>
                                <td><a href="#">네이버맨</a></td>
                                <td class="date">2008/02/14</td>
                                <td class="hit">1234</td>
                            </tr>
                            <tr>
                                <td class="frm"><input type="checkbox" name="" id="chk_sel5" value=""><label
                                        for="chk_sel5">선택</label>
                                </td>
                                <td class="num">9</td>
                                <td class="title"><a href="#">블로그 개편 작업 일정 1</a></td>
                                <td><a href="#">UIT랩</a></td>
                                <td class="date">2008/02/14</td>
                                <td class="hit">12345</td>
                            </tr>
                            <tr>
                                <td class="frm"><input type="checkbox" name="" id="chk_sel6" value=""><label
                                        for="chk_sel6">선택</label>
                                </td>
                                <td class="num">8</td>
                                <td class="title"><a href="#">블로그 개편 작업 일정 1</a></td>
                                <td><a href="#">UIT랩</a></td>
                                <td class="date">2008/02/14</td>
                                <td class="hit">12345</td>
                            </tr>
                            <tr>
                                <td class="frm"><input type="checkbox" name="" id="chk_sel7" value=""><label
                                        for="chk_sel7">선택</label>
                                </td>
                                <td class="num">7</td>
                                <td class="title"><a href="#">블로그 개편 작업 일정 1</a></td>
                                <td><a href="#">UIT랩</a></td>
                                <td class="date">2008/02/14</td>
                                <td class="hit">12345</td>
                            </tr>
                            <tr>
                                <td class="frm"><input type="checkbox" name="" id="chk_sel8" value=""><label
                                        for="chk_sel8">선택</label>
                                </td>
                                <td class="num">6</td>
                                <td class="title"><a href="#">블로그 개편 작업 일정 1</a></td>
                                <td><a href="#">UIT랩</a></td>
                                <td class="date">2008/02/14</td>
                                <td class="hit">12345</td>
                            </tr>
                            <tr>
                                <td class="frm"><input type="checkbox" name="" id="chk_sel9" value=""><label
                                        for="chk_sel9">선택</label>
                                </td>
                                <td class="num">5</td>
                                <td class="title"><a href="#">블로그 개편 작업 일정 1</a></td>
                                <td><a href="#">UIT랩</a></td>
                                <td class="date">2008/02/14</td>
                                <td class="hit">12345</td>
                            </tr>
                            <tr>
                                <td class="frm"><input type="checkbox" name="" id="chk_sel10" value=""><label
                                        for="chk_sel10">선택</label>
                                </td>
                                <td class="num">4</td>
                                <td class="title"><a href="./notice_open.html">블로그 개편 작업 일정 1</a></td>
                                <td><a href="#">UIT랩</a></td>
                                <td class="date">2008/02/14</td>
                                <td class="hit">12345</td>
                            </tr>
                </tbody>
            </table>
        </div>
        </div>
        <!-- //UI Object -->
        <!-- 페이지 네비게이션 -->
        <div class="product__pagination" style="text-align: center;">
            <a href="#"><i class="fa fa-angle-double-left"></i></a>
            <a href="#" class="current-page">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#"><i class="fa fa-angle-double-right"></i></a>
        </div>

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