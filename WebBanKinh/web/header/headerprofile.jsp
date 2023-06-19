<%-- 
    Document   : headerprofile
    Created on : Jun 19, 2023, 8:35:49 PM
    Author     : datng
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .dashboard-menu a:hover{
                background-color: black;
                color: white;
            }
        </style>
    </head>
    <body>
        <ul class="list-inline dashboard-menu text-center">
            <li><a href="dashboard.jsp">Dashboard</a></li>
            <li><a href="order.jsp">Orders</a></li>
            <li><a href="address.jsp">Address</a></li>
            <li><a href="profile-details.jsp">Profile Details</a></li>
        </ul>
    </body>
</html>
