<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Product Edit</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
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
                            <h2>Manage <b>Product</b></h2>
                            <p>${data}</p>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>					
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Image</th>
                            <th>Price</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${admin}" var="o">
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options" value="${o.id}">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td name="id">${o.id}</td>
                                <td>${o.name}</td>
                                <td>
                                    <img src="${o.image1}">
                                </td>
                                <td>${o.price}</td>
                                <td>
                                    <a href="#editEmployeeModal${o.id}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="delete?id=${o.id}" class="delete"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <a href="#"><button type="button" class="btn btn-primary">Back to home</button>

        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="adminadd" method="post">
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
                                <label>Image 1</label>
                                <input name="image1" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image 2</label>
                                <input name="image2" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image 3</label>
                                <input name="image3" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image 4</label>
                                <input name="image4" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Image 5</label>
                                <input name="image5" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Price</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Description</label>
                                <textarea name="description" class="form-control" required></textarea>
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
        <!-- Edit Modal HTML -->
        <c:forEach items="${admin}" var="o">
            <form action="adminedit" method="post">
                <div id="editEmployeeModal${o.id}" class="modal fade">
                    <div class="modal-dialog">
                        <div class="modal-content">

                            <div class="modal-header">						
                                <h4 class="modal-title">Edit Employee</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <input name="id" type="hidden" value="${o.id}"  class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Name</label>
                                    <input name="name" type="text" value="${o.name}"  class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Image 1</label>
                                    <input name="image1"  type="text" value="${o.image1}" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Image 2</label>
                                    <input name="image2"  type="text" value="${o.image2}" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Image 3</label>
                                    <input name="image3" type="text" value="${o.image3}" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Image 4</label>
                                    <input name="image4" type="text" value="${o.image4}" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Image 5</label>
                                    <input name="image5" type="text" value="${o.image5}" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Price</label>
                                    <input name="price" type="text" value="${o.price}" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Description</label>
                                    <textarea name="description" class="form-control" required>${o.context}</textarea>
                                </div>					
                            </div>
                            <div class="modal-footer">
                                <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                <input type="submit" class="btn btn-info" value="Save">
                            </div>
                        </div>
                    </div>
                </div>
            </form>

        </c:forEach>
    </a>
    <script src="js/manager.js" type="text/javascript"></script>
    <script>
    </script>
</body>
</html>