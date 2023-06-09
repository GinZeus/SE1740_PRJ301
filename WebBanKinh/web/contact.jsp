<%-- 
    Document   : contact
    Created on : Jun 18, 2023, 9:45:50 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <title>Contact | Dat's Eyeglasses Store</title>

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
                            <h1 class="page-name">Contact Us</h1>
                            <ol class="breadcrumb">
                                <li><a href="home.jsp">Home</a></li>
                                <li class="active">Contact</li>
                            </ol>
                        </div>
                    </div>
                </div>
            </div>
        </section>




        <section class="page-wrapper">
            <div class="contact-section">
                <div class="container">
                    <div class="row">
                        <!-- Contact Form -->
                        <div class="contact-form col-md-6 " >
                            <form id="contact-form" method="post" action="" role="form">

                                <div class="form-group">
                                    <input type="text" placeholder="Your Name" class="form-control" name="name" id="name">
                                </div>

                                <div class="form-group">
                                    <input type="email" placeholder="Your Email" class="form-control" name="email" id="email">
                                </div>

                                <div class="form-group">
                                    <input type="text" placeholder="Subject" class="form-control" name="subject" id="subject">
                                </div>

                                <div class="form-group">
                                    <textarea rows="6" placeholder="Message" class="form-control" name="message" id="message"></textarea>	
                                </div>

                                <div id="mail-success" class="success">
                                    Thank you. The Mailman is on His Way :)
                                </div>

                                <div id="mail-fail" class="error">
                                    Sorry, don't know what happened. Try later :(
                                </div>

                                <div id="cf-submit">
                                    <input type="submit" id="contact-submit" class="btn btn-transparent" value="Submit">
                                </div>						

                            </form>
                        </div>
                        <!-- ./End Contact Form -->

                        <!-- Contact Details -->
                        <div class="contact-details col-md-6 " >
                            <div class="google-map">
                                <div id="map">
                                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.4855347082876!2d105.52448937492858!3d21.01324998063223!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345b465a4e65fb%3A0xaae6040cfabe8fe!2zVHLGsOG7nW5nIMSQ4bqhaSBI4buNYyBGUFQ!5e0!3m2!1svi!2s!4v1689092582099!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                                </div>
                            </div>
                            <ul class="contact-short-info" >
                                <li>
                                    <i class="tf-ion-ios-home"></i>
                                    <span>Hoa Lac, Thach That, Ha Noi, Viet Nam</span>
                                </li>
                                <li>
                                    <i class="tf-ion-android-phone-portrait"></i>
                                    <span>Phone: +84-387-137-493</span>
                                </li>
                                <li>
                                    <i class="tf-ion-android-globe"></i>
                                    <span>Fax: +84-387-137-493</span>
                                </li>
                                <li>
                                    <i class="tf-ion-android-mail"></i>
                                    <span>Email: datndhe176656@fpt.edu.vn</span>
                                </li>
                            </ul>
                            <!-- Footer Social Links -->
                            <div class="social-icon">
                                <ul>
                                    <li><a class="fb-icon" href="https://www.facebook.com/ddat.cp2003/"><i class="tf-ion-social-facebook"></i></a></li>
                                    <li><a href="https://github.com/GinZeus"><i class="tf-ion-social-github"></i></a></li>
                                    <li><a href="https://www.instagram.com/dat_coi257/"><i class="tf-ion-social-instagram-outline"></i></a></li>
                                    <li><a href="https://www.youtube.com/channel/UCn2UdqXEF0oML6yZzzagKgQ"><i class="tf-ion-social-youtube-outline"></i></a></li>
                                    <li><a href="https://www.pinterest.com/cuziluvu/"><i class="tf-ion-social-pinterest-outline"></i></a></li>
                                </ul>
                            </div>
                            <!--/. End Footer Social Links -->
                        </div>
                        <!-- / End Contact Details -->



                    </div> <!-- end row -->
                </div> <!-- end container -->
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
