<%-- 
    Document   : manage_product
    Created on : Jul 10, 2023, 5:32:36 PM
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
        <link rel="stylesheet" href="css/manageproduct.css">
        <meta name="theme-name" content="aviato" />

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
        <script type="text/javascript">
            function confirmDelete(id) {
                if (confirm("Xóa sản phẩm id=" + id + "?")) {
                    
                  window.location= "deleteproduct?pid=" + id;
                        
                }
            }
        </script>
    </head>
    <body>
        <!-- partial:index.partial.html -->
        <div class="container">
            <jsp:include page="header/headerlevel1.jsp"></jsp:include>
            <jsp:include page="header/menu1.jsp"></jsp:include>
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <a href="homecontroll" style="color: white; text-decoration: none"><h2>Manage <b>Products</b></h2></a>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                            
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            
                            <th>ID</th>
                            <th>Name</th>
                            <th>Category ID</th>
                            <th>Brand ID</th>
                            <th>Price</th>
                            <th>Image</th>
                            <th>Create Time</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${listAllP}" var="o">
                         <tr>
                            <td>${o.id}</td>
                            <td>${o.name}</td>
                            <td>${o.category_id}</td>
                            <td>${o.brand_id}</td>
                            <td>${o.price}</td>
                            <td><img src="${o.imageurl}" alt="alt" style="width: 50px; height: 50px"/></td>
                            <td>${o.createTime}</td>
                            <td>
                                    <c:if test="${o.status == 0 }">
                                        Còn hàng
                                    </c:if>
                                    <c:if test="${o.status == 1 }">
                                        Hết hàng
                                    </c:if>
                                </td>
                            <td>
                                <a href="loadproduct?pid=${o.id}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                <a onclick="confirmDelete(${o.id})" href="#" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                <a href="enterinfo?pid=${o.id}" class="addinfo" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="AddInfo">&#xe146;</i></a>
                            </td>
                        </tr>
                    </c:forEach>
                       
                        
                    </tbody>
                </table>
                <div class="clearfix">
                    
                    <ul class="pagination">
                        <c:forEach begin="1" end="${endP}" var="i">
                            <li class="${tag==i?"active":""}"class="page-item"><a href="manageproduct?index=${i}" class="page-link">${i}</a></li>
                        </c:forEach>
                        
                    </ul>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addproduct" method="post">
                        <div class="modal-header">
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <label>Name</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required></input>
                            </div>
                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="o">
                                        <option value="${o.cid}">${o.cname}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Brand</label>
                                <select name="brand" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listB}" var="o">
                                        <option value="${o.bid}">${o.bname}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <footer>
            <jsp:include page="footer/footerlevel1.jsp"></jsp:include>
        </footer><!--
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
