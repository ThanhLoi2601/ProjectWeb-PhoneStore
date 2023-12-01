<%-- 
    Document   : customer_comment
    Created on : Dec 1, 2023, 1:19:47 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comment</title>
        <link rel="stylesheet" href="styles/customer_comment.css">
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/css/bootstrap.min.css'>
        <script src='https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.bundle.min.js'></script>
    </head>
    <body>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%
            session.setAttribute("wn_Home", false);
            session.setAttribute("wn_Cart", false);
            session.setAttribute("wn_User", false);
            session.setAttribute("wn_InfShop", false);
            session.setAttribute("wn_Comment", true);
        %>
        <%@include file="customer_header.jsp" %>
        <div class="container d-flex justify-content-center mt-50 mb-50">

            <div class="row">
                <div class="col-md-10">
                    <c:forEach var="product" items="${lsProduct_cmt}">
                        <div class="card card-body">
                            <div
                                class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
                                <div class="mr-2 mb-3 mb-lg-0">

                                    <img src="${product.image}" width="150" height="150" alt="image">

                                </div>

                                <div class="media-body">
                                    <h6 class="media-title font-weight-semibold">
                                        <a href="#" data-abc="true">${product.name}</a>
                                    </h6>

                                    <ul class="list-inline list-inline-dotted mb-3 mb-lg-2">
                                        <li class="list-inline-item"><a href="#" class="text-muted" data-abc="true">Phones</a>
                                        </li>
                                    </ul>

                                    <p class="mb-3">Information: ${product.information} | Sale: ${product.sale} | Stock: ${product.stock} </p>

                                    <button type="button" class="btn btn-warning mt-3 text-white" id="show${product.productID}">
                                        <i class="fa fa-arrow-right mr-2"></i> Leave a comment
                                    </button>

                                    <div class="mt-3" id="commentForm${product.productID}" style="display: none;">
                                        <form>
                                            <div class="form-group">
                                                <label for="comment">Your Comment:</label>
                                                <textarea class="form-control" id="comment" rows="3"></textarea>
                                            </div>
                                            <button type="submit" class="btn btn-primary">Submit Comment</button>
                                        </form>
                                    </div>
                                </div>

                                <div class="mt-3 mt-lg-0 ml-lg-3 text-center">
                                    <h3 class="mb-0 font-weight-semibold">$${product.price}</h3>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
        <script>
            $(document).ready(function () {
            <c:forEach var="product" items="${lsProduct_cmt}">
                $("#show${product.productID}").on("click", function () {
                    $("#commentForm${product.productID}").toggle();
                });
            </c:forEach>
            });
        </script>
        <style>
            .card-body {
                display: flex;
                flex-direction: row;
                align-items: stretch;
            }

            .media {
                flex: 1;
            }
            <c:forEach var="product" items="${lsProduct_cmt}">
                #commentForm${product.productID} {
                    flex: 1;
                    width: 100%;
                }

                #commentForm${product.productID} form {
                    width: 100%;
                }
            </c:forEach>
        </style>
    </body>
</html>
