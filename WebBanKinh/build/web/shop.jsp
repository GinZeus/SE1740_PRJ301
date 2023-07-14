<%-- 
    Document   : shop
    Created on : Jun 18, 2023, 10:01:00 PM
    Author     : datng
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <title>Shop | Dat's Eyeglasses Store</title>

        <!-- Mobile Specific Metas
        ================================================== -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Construction Html5 Template">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
        <meta name="author" content="Themefisher">
        <meta name="generator" content="Themefisher Constra HTML Template v1.0">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon1.png" />

        <!-- Themefisher Icon font -->
        <link rel="stylesheet" href="plugins/themefisher-font/style.css">
        <!-- bootstrap.min css -->
        <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">

        <!-- Animate css -->
        <link rel="stylesheet" href="plugins/animate/animate.css">
        <!-- Slick Carousel -->
        <link rel="stylesheet" href="plugins/slick/slick.css">
        <link rel="stylesheet" href="plugins/slick/slick-theme.css">

        <!-- Main Stylesheet -->
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/Paging.css">

    </head>

    <body id="body">
        <!-- Start Top Header Bar -->
        <jsp:include page="header/headerlevel1.jsp"></jsp:include>
            <!-- End Top Header Bar -->

            <!-- Start Main Menu Section -->
        <jsp:include page="header/menu1.jsp"></jsp:include>
            <!-- End Main Menu Section -->

            <section class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content">
                                <h1 class="page-name">Shop</h1>
                                <ol class="breadcrumb">
                                    <li><a href="homecontroll">Trang chủ</a></li>
                                    <li><a href="shop">Shop</a></li>


                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="products section">
                <div class="container">
                    <div class="row">

                    <c:forEach items="${listAllP}" var="o">
                        <div class="col-md-4">
                            <div class="product-item">
                                <div class="product-thumb">
                                    <img class="img-responsive" src="${o.imageurl}" alt="product-img" />
                                    <div class="preview-meta">
                                        <ul>
                                            <li>
                                                <a href="detail?pid=${o.id}" >
                                                    <i class="tf-ion-ios-search-strong"></i>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" ><i class="tf-ion-ios-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="buy?pid=${o.id}&num=1"><i class="tf-ion-android-cart"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h4><a href="product-single.jsp">${o.name}</a></h4>
                                    <p class="price">$${o.price}</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>



                    <!-- Modal -->
                    <!--                    <div class="modal product-modal fade" id="product-modal">
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <i class="tf-ion-close"></i>
                                            </button>
                                            <div class="modal-dialog " role="document">
                                                <div class="modal-content">
                                                    <div class="modal-body">
                                                        <div class="row">
                                                            <div class="col-md-8 col-sm-6 col-xs-12">
                                                                <div class="modal-image">
                                                                    <img class="img-responsive" src="images/shop/products/modal-product.jpg" alt="product-img" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-4 col-sm-6 col-xs-12">
                                                                <div class="product-short-details">
                                                                    <h2 class="product-title">GM Pendant, Basalt Grey</h2>
                                                                    <p class="product-price">$200</p>
                                                                    <p class="product-short-description">
                                                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
                                                                    </p>
                                                                    <a href="cart.jsp" class="btn btn-main">Add To Cart</a>
                                                                    <a href="product-single.jsp" class="btn btn-transparent">View Product Details</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div> /.modal -->

                </div>
                <div class="center1">
                    <div class="pagination1">
                        <c:forEach begin="1" end="${endP}" var="i">
                            <a class="${tag==i?"active12":""}"? href="shop?index=${i}">${i}</a>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </section>

        <footer>
            <jsp:include page="footer/footerlevel1.jsp"></jsp:include>
        </footer>

        <!-- 
        Essential Scripts
        =====================================-->

        <!-- Main jQuery -->
        <script src="plugins/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.1 -->
        <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
        <!-- Bootstrap Touchpin -->
        <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
        <!-- Instagram Feed Js -->
        <script src="plugins/instafeed/instafeed.min.js"></script>
        <!-- Video Lightbox Plugin -->
        <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
        <!-- Count Down Js -->
        <script src="plugins/syo-timer/build/jquery.syotimer.min.js"></script>

        <!-- slick Carousel -->
        <script src="plugins/slick/slick.min.js"></script>
        <script src="plugins/slick/slick-animation.min.js"></script>

        <!-- Google Mapl -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
        <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

        <!-- Main Js File -->
        <script src="js/script.js"></script>



    </body>
</html>

