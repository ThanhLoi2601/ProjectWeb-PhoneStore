<%-- 
    Document   : header
    Created on : Oct 22, 2023, 10:52:42 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header</title>
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css'>
        <link rel="stylesheet" href="styles/header.css">
    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-custom navbar-mainbg">
                <a class="navbar-brand navbar-logo" href="#"><b><i class="fa-solid fa-shop"></i>MOBILE STORE</b></a>
                <button class="navbar-toggler" type="button" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars text-white"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <div class="hori-selector"><div class="left"></div><div class="right"></div></div>
                        <li class="nav-item active">
                            <a class="nav-link" href="javascript:void(0);"><i class="fa-solid fa-mobile"></i>Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0);"><i class="fa-solid fa-gift"></i>Promotion</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0);"><i class="fa-regular fa-file-lines"></i>Purchase Order</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0);"><i class="fa-solid fa-cart-shopping"></i>Cart</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0);"><i class="fa-solid fa-user"></i>Log in/Sign up</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="javascript:void(0);"><i class="fa-solid fa-circle-info"></i>Shop</a>
                        </li>
                    </ul>
                </div>
            </nav>
            <script src='https://code.jquery.com/jquery-3.4.1.min.js'></script>
            <script src='https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js'></script>
            <script src='https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js'></script>
            <script  src="js/header.js"></script>
        </header>
    </body>
</html>
