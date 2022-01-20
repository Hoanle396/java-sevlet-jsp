
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <style>
            .table>tbody>tr>td, .table>tfoot>tr>td{
                vertical-align: middle;
            }
            @media screen and (max-width: 600px) {
                table#cart tbody td .form-control{
                    width:20%;
                    display: inline !important;
                }
                .actions .btn{
                    width:36%;
                    margin:1.5em 0;
                }

                .actions .btn-info{
                    float:left;
                }
                .actions .btn-danger{
                    float:right;
                }

                table#cart thead { display: none; }
                table#cart tbody td { display: block; padding: .6rem; min-width:320px;}
                table#cart tbody tr td:first-child { background: #333; color: #fff; }
                table#cart tbody td:before {
                    content: attr(data-th); font-weight: bold;
                    display: inline-block; width: 8rem;
                }



                table#cart tfoot td{display:block; }
                table#cart tfoot td .btn{display:block;}

            }
        </style>
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container">
            <table id="cart" class="table table-hover table-condensed">
                <thead>
                    <tr>
                        <th style="width:70%">Product</th>
                        <th style="width:10%">Price</th>
                        <th style="width:22%" class="text-center">Subtotal</th>
                        <th style="width:10%"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${cart}" var="o">
                    <tr>
                        <td data-th="Product">
                            <div class="row">
                                <div class="col-sm-2 hidden-xs"><img src="${o.image1}" alt="..." class="img-responsive"/></div>
                                <div class="col-sm-10">
                                    <h4 class="nomargin">${o.name}</h4>
                                </div>
                            </div>
                        </td>
                        <td data-th="Price">$ ${o.price}</td>
                        <td data-th="Subtotal" class="text-center">${o.price}</td>
                        <td class="actions" data-th="">
                            <button class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>								
                        </td>
                    </tr>
                    </c:forEach>
                </tbody>
                <tfoot>
                    <tr class="visible-xs">
                        <td class="text-center"><strong>Total </strong></td>
                    </tr>
                    <tr>
                        <td><a href="product" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
                        <td colspan="2" class="hidden-xs"></td>
                        <td class="hidden-xs text-center"><strong>Total </strong></td>
                        <td><a href="#" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
                    </tr>
                </tfoot>
            </table>
        </div>
    </body>
</html>
