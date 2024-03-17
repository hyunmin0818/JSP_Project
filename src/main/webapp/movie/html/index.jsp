<%@page import="com.movie.web.dto.UserDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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
            <title>Bonobono Movie</title>

            <!-- Google Font -->
            <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap"
                rel="stylesheet">
            <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
                rel="stylesheet">

            <!-- Css Styles -->
            <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
            <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
            <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
            <link rel="stylesheet" href="css/plyr.css" type="text/css">
            <link rel="stylesheet" href="css/nice-select.css" type="text/css">
            <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
            <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
            <link rel="stylesheet" href="css/style.css" type="text/css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/movie/html/css/search.css" type="text/css">
           

            <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
                integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
                crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
                integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
                crossorigin="anonymous"></script>
        </head>
        
        
<%--  		<%UserDTO udto = (UserDTO)session.getAttribute("userinfo"); //세션 객체 선언%> 		 --%>
 		
 		
        <body>



            <!-- Page Preloder -->
            <div id="preloder">
                <div class="loader"></div>
            </div>

            <!-- Header Section Begin -->
            <header class="header">
                <div class="container">
                 
                 </div> 
                 </header> 
                        
                        


            <!-- Header End -->

            <!-- Hero Section Begin -->
            <section class="hero">
                <div class="container">
                    <div class="hero__slider owl-carousel">
                        <div class="hero__items set-bg" data-setbg="img/hero/pamyo.jpg">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="hero__text">
                                        <div class="whitetext label">Adventure</div>
                                        <h2 class ="whitetext h2_inPicture">파묘</h2>
                                        <p class ="h2_inPicture">험한 것이 나왔다 . . .</p>
                                        <a
                                            href="${pageContext.request.contextPath}/movie/html/SeatPreview-master/index.jsp"><span>Watch
                                                Now</span> <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="hero__items set-bg" data-setbg="img/hero/hero-1.jpg">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="hero__text">
                                        <div class="label">Adventure</div>
                                        <h2 class ="h2_inPicture" class ="h2_inPicture" class ="h2_inPicture" class ="h2_inPicture">Fate / Stay Night: Unlimited Blade Works</h2 class ="h2_inPicture" class ="h2_inPicture" class ="h2_inPicture" class ="h2_inPicture">
                                        <p class ="h2_inPicture">After 30 days of travel across the world...</p>
                                        <a class ="a_inPicture" href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="hero__items set-bg" data-setbg="img/hero/hero-1.jpg">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="hero__text">
                                        <div class="label">Adventure</div>
                                        <h2 class ="h2_inPicture">Fate / Stay Night: Unlimited Blade Works</h2>
                                        <p class ="p_inPicture">After 30 days of travel across the world...</p>
                                        <a class = "p_inPicture" href="#"><span>Watch Now</span> <i class="fa fa-angle-right"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- Hero Section End -->

            <!-- Product Section Begin -->
            <section class="product spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="trending__product">
                                <div class="row">
                                    <div class="col-lg-8 col-md-8 col-sm-8">
                                        <div class="section-title">
                                            <h4>현재 상영 중</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <div class="btn__all">
                                            <a href="./categories.jsp" class="primary-btn">View All <span
                                                    class="arrow_right"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/trending/trend-1.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/trending/trend-2.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="#">Gintama Movie 2: Kanketsu-hen - Yorozuya yo Eien</a>
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/trending/trend-3.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="#">Shingeki no Kyojin Season 3 Part 2</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/trending/trend-4.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="#">Fullmetal Alchemist: Brotherhood</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/trending/trend-5.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="#">Shiratorizawa Gakuen Koukou</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/trending/trend-6.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="#">Code Geass: Hangyaku no Lelouch R2</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="popular__product">
                                <div class="row">
                                    <div class="col-lg-8 col-md-8 col-sm-8">
                                        <div class="section-title">
                                            <h4>영화차트</h4>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-4 col-sm-4">
                                        <div class="btn__all">
                                            <a href="./categories.jsp" class="primary-btn">View All <span
                                                    class="arrow_right"></span></a>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/popular/popular-1.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="movie-details.jsp">파묘</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/popular/popular-2.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="#">Kizumonogatari III: Reiket su-hen</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/popular/popular-3.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="#">Shirogane Tamashii hen Kouhan sen</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/popular/popular-4.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="#">Rurouni Kenshin: Meiji Kenkaku Romantan</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/popular/popular-5.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="#">Mushishi Zoku Shou 2nd Season</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 col-md-6 col-sm-6">
                                        <div class="product__item">
                                            <div class="product__item__pic set-bg"
                                                data-setbg="img/popular/popular-6.jpg">
                                                
                                                <div class="comment"><i class="fa fa-comments"></i> 11</div>
                                                <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            </div>
                                            <div class="product__item__text">
                                                <ul>
                                                    <li>Active</li>
                                                    <li>Movie</li>
                                                </ul>
                                                <h5><a href="#">Monogatari Series: Second Season</a></h5>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6 col-sm-8">
                            <div class="product__sidebar">
                                <div class="product__sidebar__view">
                                    <div class="section-title">
                                        <h5>Top Views</h5>
                                    </div>
                                 
                                    <div class="filter__gallery">
                                        <div class="product__sidebar__view__item set-bg mix day years"
                                            data-setbg="img/sidebar/tv-1.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a class = "a_inPicture" href="#">Boruto: Naruto next generations</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix month week"
                                            data-setbg="img/sidebar/tv-2.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a class = "a_inPicture" href="#">The Seven Deadly Sins: Wrath of the Gods</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix week years"
                                            data-setbg="img/sidebar/tv-3.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a class = "a_inPicture" href="#">Sword art online alicization war of underworld</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix years month"
                                            data-setbg="img/sidebar/tv-4.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a class = "a_inPicture" href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix day"
                                            data-setbg="img/sidebar/tv-5.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a class = "a_inPicture" href="#">Fate stay night unlimited blade works</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix week years"
                                            data-setbg="img/sidebar/tv-3.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a class = "a_inPicture" href="#">Sword art online alicization war of underworld</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix years month"
                                            data-setbg="img/sidebar/tv-4.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a class ="a_inPicture" href="#">Fate/stay night: Heaven's Feel I. presage flower</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix day"
                                            data-setbg="img/sidebar/tv-5.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a class = "a_inPicture"href="#">Fate stay night unlimited blade works</a></h5>
                                        </div>
                                        <div class="product__sidebar__view__item set-bg mix day"
                                            data-setbg="img/sidebar/tv-5.jpg">
                                            
                                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                                            <h5><a class = "a_inPicture" href="#">Fate stay night unlimited blade works</a></h5>
                                        </div>
                                    </div>
                                </div>
                                <div class="product__sidebar__comment">
                                </div>
                            </div>
                        </div>
                    </div>
            </section>
            <!-- Product Section End -->

            <!-- Footer Section Begin -->
            <footer class="footer">
                <div class="page-up">
                    <a href="#" id="scrollToTopButton"><span class="arrow_carrot-up"></span></a>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-3">
                            <div class="footer__logo">
                                <a href="./index.jsp"><img src="img/logo3.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="footer__nav">
                                <ul>
                                    <li class="active"><a href="./index.jsp">홈</a></li>
                                    <li><a href="./default.jsp">고객센터</a></li>
                                    <li><a href="./blog.jsp">블로그</a></li>

                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3">
                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                Copyright &copy;
                                <script>document.write(new Date().getFullYear());</script> All rights reserved | This
                                template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a
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
                    <div class="search-close-switch"><i class="icon_close"></i></div>
                    <form class="search-model-form">
                        <input type="text" id="search-input" placeholder="Search here.....">
                    </form>
                </div>
            </div>
            <!-- Search model end -->

            <!-- Js Plugins -->
            
            <script>
		document.addEventListener('DOMContentLoaded', function() {
	    var form = document.querySelector('#cover form'); // 검색 폼 선택
	    var input = form.querySelector('input[type="text"]'); // 입력 필드 선택
	    form.addEventListener('submit', function(event) {
	        event.preventDefault(); // 기본 제출 동작 방지
	        var searchTerm = input.value.trim(); // 입력값 얻기 및 공백 제거
	        if (searchTerm !== '') {
	            // 여기에 검색 기능을 실행하는 코드를 추가할 수 있습니다.
	            alert('검색어: ' + searchTerm); // 예시로 검색어를 경고창으로 출력합니다.
	        } else {
	            alert('검색어를 입력하세요.');
	        }
	    });
	});
	</script>
            
            <script src="js/jquery-3.3.1.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/player.js"></script>
            <script src="js/jquery.nice-select.min.js"></script>
            <script src="js/mixitup.min.js"></script>
            <script src="js/jquery.slicknav.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <script src="js/main.js"></script>


        </body>

        </html>