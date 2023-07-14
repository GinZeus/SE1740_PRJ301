<%-- 
    Document   : manage_order
    Created on : Jul 14, 2023, 4:57:29 PM
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
        <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css'><link rel="stylesheet" href="css/manageproduct.css">
        <script type="text/javascript">
            function confirmDelete(id) {
                if (confirm("Xóa Order id=" + id + "?")) {

                    window.location = "deleteorder?oid=" + id;

                }
            }
        </script>
    </head>
    <body>
        <!-- partial:index.partial.html -->
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <a href="homecontroll" style="color: white; text-decoration: none"><h2>Manage <b>Order</b></h2></a>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Account</span></a>

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
                        <c:forEach items="${listAllOrder}" var="o">
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
                                <td>
                                    <a href="loadorder?oid=${o.order_id}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a onclick="confirmDelete(${o.order_id})" href="#" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>

                                </td>
                            </tr>
                        </c:forEach>


                    </tbody>
                </table>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addaccount" method="post">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Account</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>User</label>
                                <input name="user" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Pass</label>
                                <input name="pass" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Fullname</label>
                                <input name="name" type="text" class="form-control" required></input>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input name="email" type="text" class="form-control" required></input>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input name="address" type="text" class="form-control" required></input>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input name="phone" type="text" class="form-control" required></input>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div><!--
         Edit Modal HTML -->        
        <!--        <div id="editEmployeeModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form>
                                <div class="modal-header">
                                    <h4 class="modal-title">Edit Employee</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Address</label>
                                        <textarea class="form-control" required></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input type="text" class="form-control" required>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                    <input type="submit" class="btn btn-info" value="Save">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>-->
        <!--
                 Delete Modal HTML 
                <div id="deleteEmployeeModal" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <form>
                                <div class="modal-header">
                                    <h4 class="modal-title">Delete Employee</h4>
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                </div>
                                <div class="modal-body">
                                    <p>Are you sure you want to delete these Records?</p>
                                    <p class="text-warning"><small>This action cannot be undone.</small></p>
                                </div>
                                <div class="modal-footer">
                                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                    <input type="submit" class="btn btn-danger" value="Delete">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>-->
        <!-- partial -->
        <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js'></script>
        <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script><script  src="./script.js"></script>

    </body>
</html>

