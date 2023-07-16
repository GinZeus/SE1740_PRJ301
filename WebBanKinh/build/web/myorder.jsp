<%-- 
    Document   : myorder
    Created on : Jul 16, 2023, 8:50:17 PM
    Author     : datng
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Manage Product</title>
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto|Varela+Round'>
        <link rel='stylesheet' href='https://fonts.googleapis.com/icon?family=Material+Icons'>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'>
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
        <link rel="stylesheet" href="css/manageproduct.css">
    </head>
    <body>
        <!-- partial:index.partial.html -->
        <div class="container">
            <jsp:include page="header/headerlevel1.jsp"></jsp:include>
                <!-- End Top Header Bar -->

                <!-- Start Main Menu Section -->
            <jsp:include page="header/menu1.jsp"></jsp:include>
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="homecontroll" style="color: white; text-decoration: none"><h2>My <b>Order</b></h2></a>
                            </div>
                        </div>
                    </div>
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>

                                <th>Order ID</th>
                                <th>User ID</th>
                                <th>Full Name</th>
                                <th>Address</th>
                                <th>Email</th>
                                <th>Phone number</th>
                                <th>Note</th>
                                <th>Order Date</th>
                                <th>Status</th>
                                <th>Total Money</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${listMyOrder}" var="o">
                            <tr>
                                <td>${o.order_id}</td>
                                <td>${o.user_id}</td>
                                <td>${o.fullname}</td>
                                <td>${o.address}</td>
                                <td>${o.email}</td>
                                <td>${o.phone_number}</td>
                                <td>${o.note}</td>
                                <td>${o.date}</td>
                                <td>
                                    <c:if test="${o.status == 1 }">
                                        Chờ xác nhận
                                    </c:if>
                                    <c:if test="${o.status == 2 }">
                                        Ðang giao
                                    </c:if>
                                    <c:if test="${o.status == 3 }">
                                        Ðã giao
                                    </c:if>
                                    <c:if test="${o.status == 4 }">
                                        Đã hủy
                                    </c:if>
                                </td>
                                <td>${o.total_money}</td>

                            </tr>
                        </c:forEach>


                    </tbody>
                </table>
            </div>
        </div>
        <footer>
            <jsp:include page="footer/footerlevel1.jsp"></jsp:include>
        </footer>
        <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script><script  src="./script.js"></script>

    </body>
</html>
