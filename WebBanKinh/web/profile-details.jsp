<%-- 
    Document   : profile-details
    Created on : Jun 18, 2023, 9:57:13 PM
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
            <!-- End Main Menu Section -->
            <section class="page-header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="content">
                                <h1 class="page-name">Profile</h1>
                                <ol class="breadcrumb">
                                    <li><a href="home.jsp">Home</a></li>
                                    <li class="active">Profile</li>
                                </ol>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <section class="user-dashboard page-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                        
                            <div class="dashboard-wrapper dashboard-user-profile">
                                <div class="media">
                                    <div class="pull-left text-center" href="#!">
                                        <img class="media-object user-img" src="https://nhanvietluanvan.com/wp-content/uploads/2023/05/c6e56503cfdd87da299f72dc416023d4-736x620.jpg" alt="Image">

                                    </div>
                                    <div class="media-body">
                                        <ul class="user-profile-list">
                                            <c:if test="${sessionScope.account!=null}">
                                                <li><span>Full Name:</span>${sessionScope.account.fullname}</li>
                                                <li><span>Email:</span>${sessionScope.account.email}</li>
                                                <li><span>Address:</span>${sessionScope.account.address}</li>
                                                <li><span>Phone:</span>${sessionScope.account.phone}</li>
                                            </c:if>
                                    </ul>
                                </div>
                            </div>
                        </div>
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