<%-- 
    Document   : headerlevel1
    Created on : Jun 18, 2023, 11:09:55 PM
    Author     : datng
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header top</title>
    </head>
    <body>
        <section class="top-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-xs-12 col-sm-4">
                        <ul class="top-menu text-right list-inline">
                            <li>
                                <div class="contact-number">
                                    <i class="tf-ion-ios-telephone"></i>
                                    <span>0387-137-493</span>
                                </div>
                            </li>
                            <c:if test="${sessionScope.account.role==1}">
                                <li class="dropdown dropdown-slide">
                                    <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
                                            class="tf-ion-clipboard"></i>Quản lý</a>
                                    <div class="dropdown-menu">
                                        <div class="row">
                                            <!-- Basic -->
                                            <div class="col-lg-12 col-md-12 mb-sm-3">
                                                <ul>
                                                    <li><a href="manageproduct" class="btn btn-small btn-solid-border" style="width: 100%">Quản lý sản phẩm</a></li> 
                                                    <li><a href="manageaccount" class="btn btn-small btn-solid-border" style="width: 100%">Quản  lý tài khoản</a></li> 
                                                    <li><a href="manageorder" class="btn btn-small btn-solid-border" style="width: 100%">Quản lý đơn hàng</a></li> 
                                                </ul>
                                            </div>
                                        </div><!-- / .row -->
                                    </div><!-- / .dropdown-menu -->
                                </li>
                            </c:if>


                        </ul>

                    </div>
                    <div class="col-md-4 col-xs-12 col-sm-4">
                        <!-- Site Logo -->
                        <div class="logo text-center">
                            <a href="homecontroll">
                                <!-- replace logo here -->
                                <svg width="135px" height="29px" viewBox="0 0 155 29" version="1.1" xmlns="http://www.w3.org/2000/svg"
                                     xmlns:xlink="http://www.w3.org/1999/xlink">
                                <g id="Page-1" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" font-size="40"
                                   font-family="AustinBold, Austin" font-weight="bold">
                                <g id="Group" transform="translate(-108.000000, -297.000000)" fill="#000000">
                                <text id="AVIATO">
                                <tspan x="108.94" y="325">DATND</tspan>
                                </text>
                                </g>
                                </g>
                                </svg>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 col-xs-12 col-sm-4">
                        <!-- Cart -->
                        <ul class="top-menu text-right list-inline">
                            <li class="">
                                <a href="cart" ><i
                                        class="tf-ion-android-cart"></i>Giỏ hàng ${requestScope.size}</a>
                            </li><!-- / Cart -->

                            <!-- Search -->
                            <li class="dropdown search dropdown-slide">
                                <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
                                        class="tf-ion-ios-search-strong"></i>Tìm kiếm</a>
                                <ul class="dropdown-menu search-dropdown">
                                    <li>
                                        <form action="search" method="get"><input name="txt" type="search" class="form-control" placeholder="Tìm kiếm..."></form>
                                    </li>
                                </ul>
                            </li><!-- / Search -->



                            <!-- User -->
                            <li class="dropdown dropdown-slide">
                                <a href="#!" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown"><i
                                        class="tf-ion-android-person"></i>
                                    <c:if test="${sessionScope.account!=null}">
                                        ${sessionScope.account.user}
                                    </c:if>
                                </a>
                                <div class="dropdown-menu">
                                    <div class="row">

                                        <!-- Basic -->
                                        <div class="col-lg-12 col-md-12 mb-sm-3">
                                            <ul>
                                                <c:if test="${sessionScope.account==null}">
                                                    <li><a href="login" class="btn btn-small btn-solid-border" style="width: 100%">Đăng nhập</a></li>
                                                    <li><a href="signup.jsp" class="btn btn-small btn-solid-border" style="width: 100%">Đăng ký</a></li>
                                                    </c:if>
                                                    <c:if test="${sessionScope.account!=null}">
                                                    <li><a href="profile" class="btn btn-small btn-solid-border" style="width: 100%">Thông tin</a></li>
                                                    <li><a href="logout" class="btn btn-small btn-solid-border" style="width: 100%">Đăng xuất</a></li>
                                                    </c:if>


                                            </ul>
                                        </div>
                                    </div><!-- / .row -->
                                </div><!-- / .dropdown-menu -->
                            </li>


                            <!-- /User -->


                        </ul><!-- / .nav .navbar-nav .navbar-right -->
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
