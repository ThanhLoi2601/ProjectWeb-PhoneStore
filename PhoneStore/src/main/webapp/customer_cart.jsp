<%-- 
    Document   : cart
    Created on : Nov 28, 2023, 3:55:13 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Shopping</title>
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" href="styles/cart.css"/>
    </head>
    <body>
        <%
            session.setAttribute("wn_Home", false);
            session.setAttribute("wn_Cart", true);
            session.setAttribute("wn_User", false);
            session.setAttribute("wn_InfShop", false);
            //cart
        %>
        <%@include file="customer_header.jsp" %>
        <div class="wrapper">
            <h1>My Shopping Cart</h1>
            <div class="project">
                <div class="shop">
                    <c:forEach var="lineItem" items="${cart.lslineItems}">
                    <div class="box">
                        <img src="${lineItem.item.image}">
                        <div class="content">
                            <h3>${lineItem.item.name}</h3>
                            <h4>Price: $${lineItem.item.price}</h4>
                            <p class="unit">Quantity: <input name="" value="${lineItem.quanlity}"></p>
                            <button class="btn-change">Change</button>
                            <p class="btn-area"><i aria-hidden="true" class="fa fa-trash"></i> <span class="btn2">Remove</span></p>
                        </div>
                    </div>
                    </c:forEach>
                </div>
                <div class="right-bar">
                    <p><span>Subtotal</span> <span>$120</span></p>
                    <hr>
                    <p><span>Tax (5%)</span> <span>$6</span></p>
                    <hr>
                    <p><span>Shipping</span> <span>$15</span></p>
                    <hr>
                    <p><span>Total</span> <span>$141</span></p><a href="#"><i class="fa fa-shopping-cart"></i>Checkout</a>
                </div>
            </div>
        </div>
    </body>

</html>
