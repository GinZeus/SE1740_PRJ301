<%-- 
    Document   : cart
    Created on : Jun 18, 2023, 9:42:14 PM
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
        <title>Shopping Cart | Dat's Eyeglasses Store</title>

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
                                <h1 class="page-name">Cart</h1>
                                <ol class="breadcrumb">
                                    <li><a href="home.jsp">Home</a></li>
                                    <li class="active">Cart</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <div class="page-wrapper">
                <div class="cart shopping">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">
                                <div class="block">
                                    <div class="product-list">
                                        <form method="post">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th class="">No</th>
                                                        <th class="">Tên SP</th>
                                                        <th class="">Số lượng</th>
                                                        <th class="">Giá</th>
                                                        <th class="">Tổng</th>
                                                        <th class="">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                <c:set var="o" value="${requestScope.cart}"/>
                                                <c:set var="tt" value="0"/>
                                                <c:forEach items="${o.items}" var="i">
                                                    <c:set var="tt" value="${tt+1}"/>
                                                    <tr>
                                                        <td class="">${tt}</td>
                                                        <td class="">
                                                            <div class="product-info">
                                                                <img width="80" src="${i.product.imageurl}" alt="" />
                                                                <a href="#!">${i.product.name}</a>
                                                            </div>
                                                        </td>
                                                        <td style="text-align: center">
                                                            <a href="process?num=-1&id=${i.product.id}">-</a>
                                                            ${i.quantity}
                                                            <a href="process?num=1&id=${i.product.id}">+</a>
                                                        </td>
                                                        <td>
                                                            $${i.price}
                                                        </td>
                                                        <td>
                                                            ${(i.price*i.quantity)}
                                                        </td>
                                                        <td style="text-align: center">
                                                            <form action="process" method="post">
                                                                <input type="hidden" name="id" value="${i.product.id}"/>
                                                                <input type="submit" value="Return item"/>
                                                            </form>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                        <h3>Tổng tiền: $ ${o.totalMoney}</h3>
                                        <hr/>
                                        <a href="checkout.jsp" class="btn btn-main pull-right">Thanh toán</a>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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

