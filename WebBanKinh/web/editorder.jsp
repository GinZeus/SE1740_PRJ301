<%-- 
    Document   : editorder
    Created on : Jul 14, 2023, 11:54:03 PM
    Author     : datng
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manageproduct.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="editorder" method="post">
                            <div class="modal-header">						
                                <h4 class="modal-title">Add Product</h4>
                                <a href="manageorder" type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</a>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>Order ID</label>
                                    <input value="${detail.order_id}" name="order_id" type="text" class="form-control" required readonly>
                                </div>
                                <div class="form-group">
                                    <label>User ID</label>
                                    <input value="${detail.user_id}" name="user_id" type="text" class="form-control" required readonly>
                                </div>
                                <div class="form-group">
                                    <label>Full Name</label>
                                    <input value="${detail.fullname}" name="name" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <input value="${detail.address}" name="address" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input value="${detail.email}" name="email" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Phone</label>
                                    <input value="${detail.phone_number}" name="phone" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Note</label>
                                    <input value="${detail.note}" name="note" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Status</label>
                                    <select name="status" class="form-select" aria-label="Default select example">
                                        <option value="1">Chờ xác nhận</option>
                                        <option value="2">Ðang giao</option>
                                        <option value="3">Ðã giao</option>
                                        <option value="4">Đã hủy</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Total money</label>
                                    <input value="${detail.total_money}" name="total_money" type="text" class="form-control" required readonly>
                                </div>


                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" value="Edit">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>



    </body>
</html>
