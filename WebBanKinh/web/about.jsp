<%-- 
    Document   : about
    Created on : Jun 18, 2023, 9:35:52 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <title>About us | Dat's Eyeglasses Store</title>

        <!-- Mobile Specific Metas
        ================================================== -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Construction Html5 Template">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
        <meta name="author" content="Themefisher">
        <meta name="generator" content="Themefisher Constra HTML Template v1.0">

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon11.png" />

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

        <section class="about section">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <img class="img-responsive" src="images/about/about.jpg">
                    </div>
                    <div class="col-md-6">
                        <h2 class="mt-40">About Our Shop</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius enim, accusantium repellat ex autem numquam iure officiis facere vitae itaque.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam qui vel cupiditate exercitationem, ea fuga est velit nulla culpa modi quis iste tempora non, suscipit repellendus labore voluptatem dicta amet?</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam qui vel cupiditate exercitationem, ea fuga est velit nulla culpa modi quis iste tempora non, suscipit repellendus labore voluptatem dicta amet?</p>
                        <a href="contact.html" class="btn btn-main mt-20">Download Company Profile</a>
                    </div>
                </div>
                <div class="row mt-40">
                    <div class="col-md-3 text-center">
                        <img src="images/about/awards-logo.png">
                    </div>
                    <div class="col-md-3 text-center">
                        <img src="images/about/awards-logo.png">
                    </div>
                    <div class="col-md-3 text-center">
                        <img src="images/about/awards-logo.png">
                    </div>
                    <div class="col-md-3 text-center">
                        <img src="images/about/awards-logo.png">
                    </div>
                </div>
            </div>
        </section>
        <section class="team-members ">
            <div class="container">
                <div class="row">
                    <div class="title"><h2>Team Members</h2></div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="team-member text-center">
                            <img class="img-circle" src="images/team/team-1.jpg">
                            <h4>Jonathon Andrew</h4>
                            <p>Founder</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="team-member text-center">
                            <img class="img-circle" src="images/team/team-2.jpg">
                            <h4>Adipisci Velit</h4>
                            <p>Developer</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="team-member text-center">
                            <img class="img-circle" src="images/team/team-3.jpg">
                            <h4>John Fexit</h4>
                            <p>Shop Manager</p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="team-member text-center">
                            <img class="img-circle" src="images/team/team-1.jpg">
                            <h4>John Fexit</h4>
                            <p>Shop Manager</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <div class="section video-testimonial bg-1 overly-white text-center mt-50">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2>Video presentation</h2>
                        <a class="play-icon" href="https://www.youtube.com/watch?v=oyEuk8j8imI&amp;rel=0" data-toggle="lightbox">
                            <i class="tf-ion-ios-play"></i>
                        </a>
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
