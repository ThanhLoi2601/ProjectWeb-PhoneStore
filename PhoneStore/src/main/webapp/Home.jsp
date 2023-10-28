<%-- 
    Document   : Home
    Created on : Oct 23, 2023, 10:58:46 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <%
            session.setAttribute("Home", true);
            session.setAttribute("Gif", false);
            session.setAttribute("Order", false);
            session.setAttribute("Cart", false);
            session.setAttribute("User", false);
            session.setAttribute("InfShop", false);
        %>
        <%@include file="header.jsp" %>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;0,800;1,400;1,500;1,600;1,700;1,800&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
        <link rel="stylesheet" href="styles/Home.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
        <section class="hero">
            <h1>Welcome To Our Store!! <i class="fa-solid fa-heart" style="color: #ff0000;"></i></h1>
            <div class="btn-group">
                <button class="btn-filled-dark"><span class="material-symbols-outlined">
                        shopping_cart
                    </span>Shop All Products</button>
            </div>

        </section>
        <section>
            <h2><i class="fa-solid fa-angles-right"></i> SHOP BY PHONES <i class="fa-solid fa-angles-right fa-rotate-180"></i></h2>

            <ul class="shop-phones">
                <li class="card-large card-light" id="sup-1">
                    <div class="card-image"><img src="img/icons8-xiaomi-384.png"></div>
                    <ul>XIAOMI
                        <li><i class="fa-regular fa-circle-check"></i><a> Super smooth</a></li>
                        <li><i class="fa-regular fa-circle-check"></i><a> Takes super sharp photos</a></li>
                        <li><i class="fa-regular fa-circle-check"></i><a> Trendy design</a></li>
                        <li><i class="fa-regular fa-circle-check"></i><a> Huge battery capacity</a></li>
                        <li><i class="fa-regular fa-circle-check"></i><a> Fast charging time</a></li>
                        <button class="btn-outline-light">Shop All<span class="material-symbols-outlined">
                                arrow_forward
                            </span></button>

                    </ul>


                </li>

                <li class="card-large card-dark" id="sup-2">
                    <div class="card-image"><img src="img/realme_logo.png"> </div>
                    <ul>REALME
                        <li><i class="fa-regular fa-square-check"></i><a> 1 billion color screen</a></li>
                        <li><i class="fa-regular fa-square-check"></i><a> Establish Advanced camera</a></li>
                        <li><i class="fa-regular fa-square-check"></i><a> Only 63 minutes to fully charge</a></li>
                        <li><i class="fa-regular fa-square-check"></i><a> Modern design</a></li>
                        <button class="btn-outline-dark">Shop All<span class="material-symbols-outlined">
                                arrow_forward
                            </span></button>
                    </ul>

                </li>

                <li class="card-large card-dark" id="sup-3">
                    <div class="card-image"><img src="img/icons8-iphone-14-100.png"></div>
                    <ul>IPHONE
                        <li><i class="fa-regular fa-circle-check"></i><a> Splashproof and dustproof</a></li>
                        <li><i class="fa-regular fa-circle-check"></i><a> Trendy</a></li>
                        <li><i class="fa-regular fa-circle-check"></i><a> Luxurious</a></li>
                        <li><i class="fa-regular fa-circle-check"></i><a> IOS system</a></li>
                        <li><i class="fa-regular fa-circle-check"></i><a> Ultra-sharp camera</a></li>

                        <button class="btn-outline-dark">Shop All<span class="material-symbols-outlined">
                                arrow_forward
                            </span></button>
                    </ul>

                </li>

                <li class="card-large card-light" id="sup-4">
                    <div class="card-image"><img src="img/samsung_logo.png"></div>
                    <ul>SAMSUNG
                        <li><i class="fa-regular fa-square-check"></i><a> Sustainable design</a></li>
                        <li><i class="fa-regular fa-square-check"></i><a> Dark God's Eye Camera</a></li>
                        <li><i class="fa-regular fa-square-check"></i><a> Snapdragon processors</a></li>
                        <li><i class="fa-regular fa-square-check"></i><a> The future of display technology</a></li>
                        <button class="btn-outline-light">Shop All<span class="material-symbols-outlined">
                                arrow_forward
                            </span></button>
                    </ul>

                </li>
            </ul>
        </section>

        <section>
            <h2><i class="fa-solid fa-angles-right"></i> OUR PROMOTIONS <i class="fa-solid fa-angles-right fa-rotate-180"></i></h2>

            <ul class="services">
                <li class="card-large card-dark card-wide" id="serv-groom">
                    <div class="card-image"><img src="img/discount_freeship.png"></div>
                    <ul>
                        Free shipping<span class="subtitle">We will provide free shipping for the following orders</span>
                        <li><a>From</a><span>$30</span></li>
                        <li><a>Quantity</a><span>over 1</span></li>
                        <li><a>Area</a><span>Nationwide</span></li>
                        <button class="btn-filled-dark"><i class="fa-regular fa-circle-down"></i></i>Add To Cart</button>

                    </ul>


                </li>
                <li class="card-large card-dark card-wide" id="serv-board">
                    <div class="card-image"><img src="img/discount_30.png"></div>
                    <ul>
                        30% discount<span class="subtitle">30% discount is applied when the order meets the following conditions</span>
                        <li><a>Quantity</a><span>over 2</span></li>
                        <li><a>Product Reviews</a><span>over 3</span></li>
                        <button class="btn-filled-dark"><i class="fa-regular fa-circle-down"></i>Add To Cart</button>
                    </ul>

                </li>
            </ul>
        </section>

        <section id="locate">

            <div>
                <h2>Location &amp; Contact</h2>
                <p>Our knowledgeable and friendly staff is always ready to assist you in making the best choices for your phone.</p>
                <div class="btn-group">
                    <button class="btn-filled-dark"><span class="material-symbols-outlined">
                            pin_drop
                        </span><a style="color: white" href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90%E1%BA%A1i+h%E1%BB%8Dc+S%C6%B0+ph%E1%BA%A1m+K%E1%BB%B9+thu%E1%BA%ADt+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh/@10.8506377,106.7693382,17z/data=!3m1!4b1!4m6!3m5!1s0x31752763f23816ab:0x282f711441b6916f!8m2!3d10.8506324!4d106.7719131!16s%2Fm%2F02pz17z?entry=ttu">
                            Find a Store</a></button>
                    <button class="btn-outline-dark btn-hover-color"><span class="material-symbols-outlined">
                            contact_support
                        </span> <a href="https://www.facebook.com/profile.php?id=100008830505221">Contact Us</a></button>
                </div>
            </div>
        </section>
    </body>
</html>
