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
            <h2>Our Services</h2>

            <ul class="services">
                <li class="card-large card-dark card-wide" id="serv-groom">
                    <div class="card-image"><img src="https://ouch-cdn2.icons8.com/T11rfGmMKgcStJyAFKNgtOfE79cadabx0DVMnvzA9Pk/rs:fit:368:313/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDQx/LzFlYWU4MWY3LWQ1/ZjYtNDM2Ny1hZjM5/LWVmNTFmMGM5Njk4/MS5wbmc.png"></div>
                    <ul>
                        Dog Grooming<span class="subtitle">Tail-wagging transformations are our specialty.</span>
                        <li><a href="#">Coat Care</a><span>$80</span></li>
                        <li><a href="#">Nail Care</a><span>$16</span></li>
                        <li><a href="#">Doggie Deluxe Spa Day</a><span>$160</span></li>
                        <button class="btn-filled-dark"><span class="material-symbols-outlined">
                                calendar_month
                            </span>Book Now</button>

                    </ul>


                </li>
                <li class="card-large card-dark card-wide" id="serv-board">
                    <div class="card-image"><img src="https://ouch-cdn2.icons8.com/F5Ea1suZtMYimKDkJr0CJLO_1bju6-bTyT1EuDKEg8s/rs:fit:368:254/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvMjcx/LzVjMzE4NWM0LWZh/NTMtNGQ1OS05ZTM2/LTZjYzBhNGU3ODg0/NC5wbmc.png"></div>
                    <ul>
                        Dog Boarding<span class="subtitle">Where fun and care never take a day off.</span>
                        <li><a href="#">Doggie Daycare</a><span>$80</span></li>
                        <li><a href="#">Short Term Boarding</a><span>$80</span></li>
                        <button class="btn-filled-dark"><span class="material-symbols-outlined">
                                calendar_month
                            </span>Book Now</button>
                    </ul>

                </li>
            </ul>
        </section>

        <section id="locate">

            <div>
                <h2>Location &amp; Hours</h2>
                <p>Our knowledgeable and friendly staff is always ready to assist you in making the best choices for your furry, feathered, or finned friends.</p>
                <div class="btn-group">
                    <button class="btn-filled-dark"><span class="material-symbols-outlined">
                            pin_drop
                        </span>Find a Store</button>
                    <button class="btn-outline-dark btn-hover-color"><span class="material-symbols-outlined">
                            contact_support
                        </span> Contact Us</button>
                </div>
            </div>
        </section>

        <footer>

            <ul>
                Products
                <li><a href="#">Food &amp; Treats</a></li>
                <li><a href="#">Toys</a></li>
                <li><a href="#">Beds &amp; Furniture</a></li>
                <li><a href="#">Outdoor Supplies</a></li>
                <li><a href="#">Clothing</a></li>
                <li><a href="#">Aquariums</a></li>
                <li><a href="#">Rocks &amp; Decorations</a></li>
            </ul>

            <ul>
                Shop by Pet
                <li><a href="#">Dogs</a></li>
                <li><a href="#">Cats</a></li>
                <li><a href="#">Birds</a></li>
                <li><a href="#">Fish</a></li>
            </ul>


            <ul>
                Our Services
                <li><a href="#">Grooming</a></li>
                <li><a href="#">Boarding</a></li>
            </ul>
            <ul>
                Our Company
                <li><a href="#">Locations &amp; Hours</a></li>
                <li><a href="#">About Us</a></li>
            </ul>


        </footer>
        <!-- partial -->
        <script  src="js/Home.js"></script>
    </body>
</html>
