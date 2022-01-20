

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE HTML>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Shop HKT</title>
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


            <header id="fh5co-header" class="fh5co-cover fh5co-cover-sm" role="banner" style="background-image:url(https://cdn.shortpixel.ai/client/q_lossless,ret_img,w_800,h_600/https://shopgiayreplica.com/wp-content/uploads/2020/07/giay-jordan-4-retro-white-cement-replica-800x600.jpg);">
                <div class="overlay"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-md-8 col-md-offset-2 text-center">
                            <div class="display-t">
                                <div class="display-tc animate-box" data-animate-effect="fadeIn">
                                    <h1>Product</h1>
                                    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>

            <div id="fh5co-product">
                <div class="container">
                    <div class="row animate-box">
                        <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                         
                            <h2>Products.</h2>
                        </div>
                    </div>
                    <div class="row">
                        <c:forEach items="${lit}" var="o">
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
                                    <span class="price">${o.price}</span>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
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
                            <form class="form-inline" action="single" method="post">
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