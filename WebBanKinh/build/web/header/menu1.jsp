<%-- 
    Document   : menu1
    Created on : Jun 19, 2023, 10:23:01 AM
    Author     : datng
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
    </head>
    <body>
        <section class="menu">
            <nav class="navbar navigation">
                <div class="container">
                    <div class="navbar-header">
                        <h2 class="menu-title">Main Menu</h2>
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                                aria-expanded="false" aria-controls="navbar">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>

                    </div><!-- / .navbar-header -->

                    <!-- Navbar Links -->
                    <div id="navbar" class="navbar-collapse collapse text-center">
                        <ul class="nav navbar-nav">

                            <!-- Home -->
                            <li class="dropdown ">
                                <a href="homecontroll">Trang chủ</a>
                            </li><!-- / Home -->


                            <!-- Product -->
                            <li class="dropdown dropdown-slide">
                                <a href="shop" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
                                   role="button" aria-haspopup="true" aria-expanded="false">Sản phẩm<span
                                        class="tf-ion-ios-arrow-down"></span></a>
                                <div class="dropdown-menu">
                                    <div class="row">

                                        <!-- Basic -->
                                        <div class="col-lg-12 col-md-12 mb-sm-3">
                                            <ul>
                                                <a href="shop"><li class="dropdown-header">Shop</li></a>
                                                <li role="separator" class="divider"></li>
                                                <c:forEach items="${listC}" var="o">
                                                <li><a href="category?cid=${o.cid}" class="${tagCate==o.cid ? "active1" : ""}">${o.cname}</a></li>
                                                </c:forEach>

                                            </ul>
                                        </div>
                                    </div><!-- / .row -->
                                </div><!-- / .dropdown-menu -->
                            </li><!-- / Product -->
                            
                             <!-- Brand -->
                            <li class="dropdown dropdown-slide">
                                <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
                                   role="button" aria-haspopup="true" aria-expanded="false">Thương hiệu<span
                                        class="tf-ion-ios-arrow-down"></span></a>
                                <div class="dropdown-menu">
                                    <div class="row">

                                        <!-- Basic -->
                                        <div class="col-lg-12 col-md-12 mb-sm-3">
                                            <ul>
                                                <a href="shop"><li class="dropdown-header">Brand</li></a>
                                                <li role="separator" class="divider"></li>
                                                <c:forEach items="${listB}" var="o">
                                                    <li><a href="brand?bid=${o.bid}" class="${tagBrand==o.bid ? "active1" : ""}">${o.bname}</a></li>
                                                </c:forEach>

                                            </ul>
                                        </div>
                                    </div><!-- / .row -->
                                </div><!-- / .dropdown-menu -->
                            </li><!-- / Brand -->
                            


                            <!-- Pages -->
                            <li class="dropdown full-width dropdown-slide">
                                <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
                                   role="button" aria-haspopup="true" aria-expanded="false">Pages <span
                                        class="tf-ion-ios-arrow-down"></span></a>
                                <div class="dropdown-menu">
                                    <div class="row">

                                        <!-- Introduction -->
                                        <div class="col-sm-3 col-xs-12">
                                            <ul>
                                                <li class="dropdown-header">Introduction</li>
                                                <li role="separator" class="divider"></li>
                                                <li><a href="contact.html">Contact Us</a></li>
                                                <li><a href="about.html">About Us</a></li>
                                                <li><a href="404.html">404 Page</a></li>
                                                <li><a href="coming-soon.html">Coming Soon</a></li>
                                                <li><a href="faq.html">FAQ</a></li>
                                            </ul>
                                        </div>

                                        <!-- Contact -->
                                        <div class="col-sm-3 col-xs-12">
                                            <ul>
                                                <li class="dropdown-header">Dashboard</li>
                                                <li role="separator" class="divider"></li>
                                                <li><a href="dashboard.html">User Interface</a></li>
                                                <li><a href="order.html">Orders</a></li>
                                                <li><a href="address.html">Address</a></li>
                                                <li><a href="profile-details.html">Profile Details</a></li>
                                            </ul>
                                        </div>

                                        <!-- Utility -->
                                        <div class="col-sm-3 col-xs-12">
                                            <ul>
                                                <li class="dropdown-header">Utility</li>
                                                <li role="separator" class="divider"></li>
                                                <li><a href="login.html">Login Page</a></li>
                                                <li><a href="signin.html">Signin Page</a></li>
                                                <li><a href="forget-password.html">Forget Password</a></li>
                                            </ul>
                                        </div>

                                        <!-- Mega Menu -->
                                        <div class="col-sm-3 col-xs-12">
                                            <a href="shop.html">
                                                <img class="img-responsive" src="images/shop/header-img.jpg" alt="menu image" />
                                            </a>
                                        </div>
                                    </div><!-- / .row -->
                                </div><!-- / .dropdown-menu -->
                            </li><!-- / Pages -->



                            <!-- Blog -->
                            <li class="dropdown dropdown-slide">
                                <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
                                   role="button" aria-haspopup="true" aria-expanded="false">Blog <span
                                        class="tf-ion-ios-arrow-down"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                    <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                    <li><a href="blog-full-width.html">Blog Full Width</a></li>
                                    <li><a href="blog-grid.html">Blog 2 Columns</a></li>
                                    <li><a href="blog-single.html">Blog Single</a></li>
                                </ul>
                            </li><!-- / Blog -->

                            <!-- Shop -->
                            <li class="dropdown dropdown-slide">
                                <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="350"
                                   role="button" aria-haspopup="true" aria-expanded="false">Elements <span
                                        class="tf-ion-ios-arrow-down"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="typography.html">Typography</a></li>
                                    <li><a href="buttons.html">Buttons</a></li>
                                    <li><a href="alerts.html">Alerts</a></li>
                                </ul>
                            </li><!-- / Blog -->
                        </ul><!-- / .nav .navbar-nav -->

                    </div>
                    <!--/.navbar-collapse -->
                </div><!-- / .container -->
            </nav>
        </section>
    </body>
</html>
