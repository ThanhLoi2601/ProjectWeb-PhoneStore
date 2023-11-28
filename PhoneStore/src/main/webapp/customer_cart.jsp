<%-- 
    Document   : cart
    Created on : Nov 28, 2023, 3:55:13 AM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        %>
        <%@include file="customer_header.jsp" %>
        <div class="wrapper">
            <h1>My Shopping Cart</h1>
            <div class="project">
                <div class="shop">
                    <div class="box">
                        <img src="1.jpg">
                        <div class="content">
                            <h3>Women Lipsticks</h3>
                            <h4>Price: $40</h4>
                            <p class="unit">Quantity: <input name="" value="2"></p>
                            <button class="btn-change">Change</button>
                            <p class="btn-area"><i aria-hidden="true" class="fa fa-trash"></i> <span class="btn2">Remove</span></p>
                        </div>
                    </div>
                    <div class="box">
                        <img src="2.jpg">
                        <div class="content">
                            <h3>Man's Watches</h3>
                            <h4>Price: $40</h4>
                            <p class="unit">Quantity: <input name="" value="1"></p>
                            <p class="btn-area"><i aria-hidden="true" class="fa fa-trash"></i> <span class="btn2">Remove</span></p>
                        </div>
                    </div>

                    <div class="box">
                        <img src="3.jpg">
                        <div class="content">
                            <h3>Samsung Mobile</h3>
                            <h4>Price: $250</h4>
                            <p class="unit">Quantity: <input name="" value="0"></p>
                            <p class="btn-area"><i aria-hidden="true" class="fa fa-trash"></i> <span class="btn2">Remove</span></p>
                        </div>
                    </div>
                    <div class="box">
                        <img src="3.jpg">
                        <div class="content">
                            <h3>Samsung Mobile</h3>
                            <h4>Price: $250</h4>
                            <p class="unit">Quantity: <input name="" value="0"></p>
                            <p class="btn-area"><i aria-hidden="true" class="fa fa-trash"></i> <span class="btn2">Remove</span></p>
                        </div>
                    </div>
                    <div class="box">
                        <img src="3.jpg">
                        <div class="content">
                            <h3>Samsung Mobile</h3>
                            <h4>Price: $250</h4>
                            <p class="unit">Quantity: <input name="" value="0"></p>
                            <p class="btn-area"><i aria-hidden="true" class="fa fa-trash"></i> <span class="btn2">Remove</span></p>
                        </div>
                    </div>
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
