<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Shop HTK</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="Free HTML5 Website Template by gettemplates.co" />
        <meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
        <meta name="author" content="gettemplates.co" />

        <!-- 
        //////////////////////////////////////////////////////

        FREE HTML5 TEMPLATE 
        DESIGNED & DEVELOPED by FreeHTML5.co
                
        Website: 		http://freehtml5.co/
        Email: 			info@freehtml5.co
        Twitter: 		http://twitter.com/fh5co
        Facebook: 		https://www.facebook.com/fh5co

        //////////////////////////////////////////////////////
        -->

        <!-- Facebook and Twitter integration -->
        <meta property="og:title" content=""/>
        <meta property="og:image" content=""/>
        <meta property="og:url" content=""/>
        <meta property="og:site_name" content=""/>
        <meta property="og:description" content=""/>
        <meta name="twitter:title" content="" />
        <meta name="twitter:image" content="" />
        <meta name="twitter:url" content="" />
        <meta name="twitter:card" content="" />

        <!-- <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet"> -->
        <!-- <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i" rel="stylesheet"> -->

        <!-- Animate.css -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- Icomoon Icon Fonts-->
        <link rel="stylesheet" href="css/icomoon.css">
        <!-- Bootstrap  -->
        <link rel="stylesheet" href="css/bootstrap.css">

        <!-- Flexslider  -->
        <link rel="stylesheet" href="css/flexslider.css">

        <!-- Owl Carousel  -->
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">

        <!-- Theme style  -->
        <link rel="stylesheet" href="css/style.css">

        <!-- Modernizr JS -->
        <script src="js/modernizr-2.6.2.min.js"></script>
        <!-- FOR IE9 below -->
        <!--[if lt IE 9]>
        <script src="js/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>

        <div class="fh5co-loader"></div>

        <div id="page">
            <nav class="fh5co-nav" role="navigation">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-xs-2">
                            <div id="fh5co-logo"><a href="home">Shop-HKT</a></div>
                        </div>
                        <div class="col-md-6 col-xs-6 text-center menu-1">
                            <ul>
                                <li class="has-dropdown">
                                    <a href="product">Shop</a>
                                </li>
                                <li><a href="about">About</a></li>
                                <li class="has-dropdown">
                                    <a href="services">Services</a>
                                </li>
                                <li><a href="contact">Contact</a></li>
                                    <c:choose>
                                        <c:when test="${user!=null}">
                                        <li ><a href="#">Hi ${user.username}</a></li>
                                        <li ><a href="logout" >Log out</a></li>
                                        </c:when>
                                        <c:otherwise>
                                        <li><a href="login">Log In</a> | <a href="register">Register</a></li>
                                        </c:otherwise>
                                    </c:choose>
                            </ul>
                        </div>
                        <div class="col-md-3 col-xs-4 text-right hidden-xs menu-2">
                            <ul>
                                <li class="search">
                                    <div class="input-group">
                                        <input type="text" placeholder="Search...">
                                        <span class="input-group-btn">
                                            <button class="btn btn-primary" type="button"><i class="icon-search"></i></button>
                                        </span>
                                    </div>
                                </li>
                                <li ><a href="#" class="cart"><span><small>0</small><i class="icon-shopping-cart"></i></span></a></li>

                            </ul>
                        </div>
                    </div>

                </div>
            </nav>

            <aside id="fh5co-hero" class="js-fullheight">
                <div class="flexslider js-fullheight">
                    <ul class="slides">
                        <li style="background-image: url(${one.image1});">
                            <div class="overlay-gradient"></div>
                            <div class="container">
                                <div class="col-md-6 col-md-offset-3 col-md-pull-3 js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <div class="desc">
                                            <span class="price">${one.price}</span>
                                            <h2>${one.name}</h2>
                                            <p>${one.context}</p>
                                            <p><a href="single?id=${one.id}" class="btn btn-primary btn-outline btn-lg">Purchase Now</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(${two.image1});">
                            <div class="container">
                                <div class="col-md-6 col-md-offset-3 col-md-pull-3 js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <div class="desc">
                                            <span class="price">${two.price}</span>
                                            <h2>${two.name}</h2>
                                            <p>${two.context}</p>
                                            <p><a href="single?id=${two.id}" class="btn btn-primary btn-outline btn-lg">Purchase Now</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(${three.image1});">
                            <div class="container">
                                <div class="col-md-6 col-md-offset-3 col-md-pull-3 js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <div class="desc">
                                            <span class="price">${three.price}</span>
                                            <h2>${three.name}</h2>
                                            <p>${three.context}</p>
                                            <p><a href="single?id=${three.id}" class="btn btn-primary btn-outline btn-lg">Purchase Now</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li style="background-image: url(${four.image1});">
                            <div class="container">
                                <div class="col-md-6 col-md-offset-3 col-md-pull-3 js-fullheight slider-text">
                                    <div class="slider-text-inner">
                                        <div class="desc">
                                            <span class="price">${four.price}</span>
                                            <h2>${four.name}</h2>
                                            <p>${four.context}</p>
                                            <p><a href="single?id=${four.id}" class="btn btn-primary btn-outline btn-lg">Purchase Now</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </aside>

            <div id="fh5co-services" class="fh5co-bg-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-sm-4 text-center">
                            <div class="feature-center animate-box" data-animate-effect="fadeIn">
                                <span class="icon">
                                    <i class="icon-credit-card"></i>
                                </span>
                                <h3>Credit Card</h3>
                                <p>Cổng thanh toán hỗ trợ nhiều ngân hàng phát hành thẻ nhất Việt Nam với hầu hết là kết nối trực tiếp, giúp tiết kiệm tối đa chi phí cho Merchant và mang lại trải nghiệm giao dịch mượt mà và an toàn nhất cho khách hàng.</p>
                                <p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 text-center">
                            <div class="feature-center animate-box" data-animate-effect="fadeIn">
                                <span class="icon">
                                    <i class="icon-wallet"></i>
                                </span>
                                <h3>Save Money</h3>
                                <p>Việt Nam đang bước vào giai đoạn bùng nổ thanh toán điện tử với hàng chục Ví điện tử ra đời, liên tiếp tung ra nhiều tính năng tiện ích và các chương trình khuyến mại để thu hút người tiêu dùng. </p>
                                <p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p>
                            </div>
                        </div>
                        <div class="col-md-4 col-sm-4 text-center">
                            <div class="feature-center animate-box" data-animate-effect="fadeIn">
                                <span class="icon">
                                    <i class="icon-paper-plane"></i>
                                </span>
                                <h3>Free Delivery</h3>
                                <p>Giao hàng thương mại điện tử, Vận tải cho doanh nghiệp, Kho bãi và xử lý hàng hóa,Miễn phí thu hộ, Miễn phí giao lại, Miễn phí trả hàng,tâm huyết để mang đến những dịch vụ giao nhận xuất sắc nhất.</p>
                                <p><a href="#" class="btn btn-primary btn-outline">Learn More</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="fh5co-product">
                <div class="container">
                    <div class="row animate-box">
                        <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                            <h2>Sản Phẩm</h2>
                            <p>Một số sản phẩm nổi bật mà chúng tôi muốn mang đến cho bạn tham khảo với mức giá ưu đãi nhất.</p>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${ListAll}" var="o">
                            <div class="col-md-4 text-center animate-box">
                                <div class="product">
                                    <div class="product-grid" style="background-image:url(${o.image1});">
                                        <div class="inner">
                                            <p>
                                                <a href="single?id=${o.id}" class="icon"><i class="icon-shopping-cart"></i></a>
                                                <a href="single?id=${o.id}" class="icon"><i class="icon-eye"></i></a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="desc">
                                        <h3><a href="single?id=${o.id}">${o.name}</a></h3>
                                        <span class="price">$ ${o.price}</span>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>

            <div id="fh5co-testimonial" class="fh5co-bg-section">
                <div class="container">
                    <div class="row animate-box">
                        <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                            <h2>Đánh Giá Từ Khách Hàng</h2>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="row animate-box">
                                <div class="owl-carousel owl-carousel-fullwidth">
                                    <c:forEach items="${reaect}" var="r">
                                    <div class="item">
                                        <div class="testimony-slide active text-center">
                                            <figure>
                                                <img src="${r.avatar}" alt="user">
                                            </figure>
                                            <span>${r.name}</span>
                                            <blockquote>
                                                <p>&ldquo;${r.reaect}&rdquo;</p>
                                            </blockquote>
                                        </div>
                                    </div>
                                  </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div id="fh5co-counter" class="fh5co-bg fh5co-counter" style="background-image:url(images/img_bg_5.jpg);">
                <div class="container">
                    <div class="row">
                        <div class="display-t">
                            <div class="display-tc">
                                <div class="col-md-3 col-sm-6 animate-box">
                                    <div class="feature-center">
                                        <span class="icon">
                                            <i class="icon-eye"></i>
                                        </span>

                                        <span class="counter js-counter" data-from="0" data-to="22070" data-speed="5000" data-refresh-interval="50">1</span>
                                        <span class="counter-label">Creativity Fuel</span>

                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6 animate-box">
                                    <div class="feature-center">
                                        <span class="icon">
                                            <i class="icon-shopping-cart"></i>
                                        </span>

                                        <span class="counter js-counter" data-from="0" data-to="450" data-speed="5000" data-refresh-interval="50">1</span>
                                        <span class="counter-label">Happy Clients</span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6 animate-box">
                                    <div class="feature-center">
                                        <span class="icon">
                                            <i class="icon-shop"></i>
                                        </span>
                                        <span class="counter js-counter" data-from="0" data-to="700" data-speed="5000" data-refresh-interval="50">1</span>
                                        <span class="counter-label">All Products</span>
                                    </div>
                                </div>
                                <div class="col-md-3 col-sm-6 animate-box">
                                    <div class="feature-center">
                                        <span class="icon">
                                            <i class="icon-clock"></i>
                                        </span>

                                        <span class="counter js-counter" data-from="0" data-to="5605" data-speed="5000" data-refresh-interval="50">1</span>
                                        <span class="counter-label">Hours Spent</span>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div id="fh5co-started">
                <div class="container">
                    <div class="row animate-box">
                        <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                            <h2>Liên Hệ</h2>
                            <p>Để lại email để nhận những thông báo về sản phẩm mới nhất của chúng tôi.</p>
                        </div>
                    </div>
                    <div class="row animate-box">
                        <div class="col-md-8 col-md-offset-2">
                            <form class="form-inline" action="home" method="post">
                                <div class="col-md-6 col-sm-6">
                                    <div class="form-group">
                                        <label for="email" class="sr-only">Email</label>
                                        <input type="email" name="email"class="form-control" id="email" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-6">
                                    <button type="submit" class="btn btn-default btn-block">Subscribe</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <footer id="fh5co-footer" role="contentinfo">
                <div class="container">
                    <div class="row row-pb-md">
                        <div class="col-md-4 fh5co-widget">
                            <h3>Shop HKT</h3>
                            
                        </div>
                        <div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
                            <ul class="fh5co-footer-links">
                                <li><a href="#">About</a></li>
                                <li><a href="#">Help</a></li>
                                <li><a href="#">Contact</a></li>
                                <li><a href="#">Terms</a></li>
                                <li><a href="#">Meetups</a></li>
                            </ul>
                        </div>

                        <div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
                            <ul class="fh5co-footer-links">
                                <li><a href="#">Shop</a></li>
                                <li><a href="#">Privacy</a></li>
                                <li><a href="#">Testimonials</a></li>
                                <li><a href="#">Handbook</a></li>
                                <li><a href="#">Held Desk</a></li>
                            </ul>
                        </div>

                        <div class="col-md-2 col-sm-4 col-xs-6 col-md-push-1">
                            <ul class="fh5co-footer-links">
                                <li><a href="#">Find Designers</a></li>
                                <li><a href="#">Find Developers</a></li>
                                <li><a href="#">Teams</a></li>
                                <li><a href="#">Advertise</a></li>
                                <li><a href="#">API</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="row copyright">
                        <div class="col-md-12 text-center">
                            <p>
                                <small class="block">Email:hoanle396@gmail.com | SĐT:+84345648638 | Adress:470,Trần Đại Nghĩa, Quận Ngũ Hành Sơn </small> 
                                <small class="block">2021 &copy; All Rights Reserved.</small>

                            </p>
                            <p>
                            <ul class="fh5co-social-icons">
                                <li><a href="#"><i class="icon-twitter"></i></a></li>
                                <li><a href="#"><i class="icon-facebook"></i></a></li>
                                <li><a href="#"><i class="icon-linkedin"></i></a></li>
                                <li><a href="#"><i class="icon-dribbble"></i></a></li>
                            </ul>
                            </p>
                        </div>
                    </div>

                </div>
            </footer>
        </div>

        <div class="gototop js-top">
            <a href="#" class="js-gotop"><i class="icon-arrow-up"></i></a>
        </div>

        <!-- jQuery -->
        <script src="js/jquery.min.js"></script>
        <!-- jQuery Easing -->
        <script src="js/jquery.easing.1.3.js"></script>
        <!-- Bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Waypoints -->
        <script src="js/jquery.waypoints.min.js"></script>
        <!-- Carousel -->
        <script src="js/owl.carousel.min.js"></script>
        <!-- countTo -->
        <script src="js/jquery.countTo.js"></script>
        <!-- Flexslider -->
        <script src="js/jquery.flexslider-min.js"></script>
        <!-- Main -->
        <script src="js/main.js"></script>

    </body>
</html>

