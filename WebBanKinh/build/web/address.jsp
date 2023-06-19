<%-- 
    Document   : address
    Created on : Jun 18, 2023, 9:39:16 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <title>Address | Dat's Eyeglasses Store</title>

        <!-- Mobile Specific Metas
        ================================================== -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Construction Html5 Template">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
        <meta name="author" content="Themefisher">
        <meta name="generator" content="Themefisher Constra HTML Template v1.0">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon.png" />

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
                            <h1 class="page-name">Address</h1>
                            <ol class="breadcrumb">
                                <li><a href="home.jsp">Home</a></li>
                                <li class="active">Address</li>
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
                    <jsp:include page="header/headerprofile.jsp"></jsp:include>
                        <div class="dashboard-wrapper user-dashboard">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>Company</th>
                                            <th>Name</th>
                                            <th>Address</th>
                                            <th>Country</th>
                                            <th class="col-md-2 col-sm-3">Phone</th>
                                            <th></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Nokia</td>
                                            <td>Adam Smith</td>
                                            <td>9/4 C Babor Road, Mohammad Pur, Dhaka</td>
                                            <td>Bangladesh</td>
                                            <td>+884 5452 6452</td>
                                            <td>
                                                <div class="btn-group" role="group">
                                                    <button type="button" class="btn btn-default"><i class="tf-pencil2" aria-hidden="true"></i></button>
                                                    <button type="button" class="btn btn-default"><i class="tf-ion-close" aria-hidden="true"></i></button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Samsung</td>
                                            <td>Adam Smith</td>
                                            <td>9/4 C Babor Road, Mohammad Pur, Dhaka</td>
                                            <td>Bangladesh</td>
                                            <td>+884 5452 6452</td>
                                            <td>
                                                <div class="btn-group" role="group">
                                                    <button type="button" class="btn btn-default"><i class="tf-pencil2" aria-hidden="true"></i></button>
                                                    <button type="button" class="btn btn-default"><i class="tf-ion-close" aria-hidden="true"></i></button>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Motorola</td>
                                            <td>Adam Smith</td>
                                            <td>9/4 C Babor Road, Mohammad Pur, Dhaka</td>
                                            <td>Bangladesh</td>
                                            <td>+884 5452 6452</td>
                                            <td>
                                                <div class="btn-group" role="group">
                                                    <button type="button" class="btn btn-default"><i class="tf-pencil2" aria-hidden="true"></i></button>
                                                    <button type="button" class="btn btn-default"><i class="tf-ion-close" aria-hidden="true"></i></button>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
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
