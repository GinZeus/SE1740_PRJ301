<%-- 
    Document   : checkout
    Created on : Jun 18, 2023, 9:43:24 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <title>Dat's Eyeglasses Store | Vietnam's number 1 online eyeglasses store</title>

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

    </head>

    <body id="body">
        <!-- Start Top Header Bar -->
        <jsp:include page="header/headerlevel1.jsp"></jsp:include>
            <!-- End Top Header Bar -->

            <!-- Start Main Menu Section -->
        <jsp:include page="header/menu1.jsp"></jsp:include>
            <!-- <!-- End Main Menu Section -->
            <section class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content">
                                <h1 class="page-name">Checkout</h1>
                                <ol class="breadcrumb">
                                    <li><a href="home.jsp">Home</a></li>
                                    <li class="active">Checkout</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <div class="page-wrapper">
                <div class="checkout shopping">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="block billing-details">
                                    <h4 class="widget-title">Thông tin đơn hàng</h4>
                                    <form class="checkout-form" action="checkout">
                                        <div class="form-group" hidden>
                                            <input hidden name="id" type="text" class="form-control" id="full_name" value="${sessionScope.account.id}">
                                    </div>
                                    <div class="form-group">
                                        <label for="full_name">Họ và tên</label>
                                        <input name="name" type="text" class="form-control" id="full_name" value="${sessionScope.account.fullname}">
                                    </div>
                                    <div class="form-group">
                                        <label for="user_address">Địa chỉ</label>
                                        <input name="address" type="text" class="form-control" id="user_address" value="${sessionScope.account.address}">
                                    </div>
                                    <div class="checkout-country-code clearfix">
                                        <div class="form-group">
                                            <label for="user_post_code">Email</label>
                                            <input type="text" class="form-control" id="user_post_email" name="email" value="${sessionScope.account.email}">
                                        </div>
                                        <div class="form-group" >
                                            <label for="user_city">Phone</label>
                                            <input type="text" class="form-control" id="user_phone" name="phone" value="${sessionScope.account.phone}">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="user_country">Note</label>
                                        <input type="text" class="form-control" id="user_note" placeholder="" name="note">
                                    </div>
                                    <button type="submit" class="btn btn-main mt-20">Đặt hàng</button>
                                </form>
                            </div>
                            <div class="block">
                                <h4 class="widget-title">Phương thức thanh toán</h4>
                                <div class="checkout-product-details">
                                    <div class="payment">
                                        <div class="card-details">
                                            <form  class="checkout-form">
                                                <input name="gender" type="radio" value="card" />Chuyển khoản<br/>
                                                <input name="gender" type="radio" value="money" checked/>Tiền mặt<br/>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--                        <div class="col-md-4">
                                                    <div class="product-checkout-details">
                                                        <div class="block">
                                                            <h4 class="widget-title">Order Summary</h4>
                                                            <div class="media product-card">
                                                                <a class="pull-left" href="product-single.html">
                                                                    <img class="media-object" src="images/shop/cart/cart-1.jpg" alt="Image" />
                                                                </a>
                                                                <div class="media-body">
                                                                    <h4 class="media-heading"><a href="product-single.html">Ambassador Heritage 1921</a></h4>
                                                                    <p class="price">1 x $249</p>
                                                                    <span class="remove" >Remove</span>
                                                                </div>
                                                            </div>
                                                            <div class="discount-code">
                                                                <p>Have a discount ? <a data-toggle="modal" data-target="#coupon-modal" href="#!">enter it here</a></p>
                                                            </div>
                                                            <ul class="summary-prices">
                                                                <li>
                                                                    <span>Subtotal:</span>
                                                                    <span class="price">$190</span>
                                                                </li>
                                                                <li>
                                                                    <span>Shipping:</span>
                                                                    <span>Free</span>
                                                                </li>
                                                            </ul>
                                                            <div class="summary-total">
                                                                <span>Total</span>
                                                                <span>$250</span>
                                                            </div>
                                                            <div class="verified-icon">
                                                                <img src="images/shop/verified.png">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>-->
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal -->
<!--        <div class="modal fade" id="coupon-modal" tabindex="-1" role="dialog">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <form>
                            <div class="form-group">
                                <input class="form-control" type="text" placeholder="Enter Coupon Code">
                            </div>
                            <button type="submit" class="btn btn-main">Apply Coupon</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>-->

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
