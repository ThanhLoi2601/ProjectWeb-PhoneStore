<%-- 
    Document   : Product_details
    Created on : Oct 23, 2023, 10:59:47 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Details</title>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/tailwindcss/2.0.2/tailwind.min.css'>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css'>
    </head>
    <body>
        <section class="text-gray-700 body-font">
            <div class="container mx-auto flex px-5 py-24 md:flex-row flex-col items-center">
                <div class="lg:flex-grow md:w-1/2 lg:pr-24 md:pr-16 flex flex-col md:items-start md:text-left mb-16 md:mb-0 items-center text-center">
                    <h1 class="title-font sm:text-4xl text-3xl mb-4 font-medium text-gray-900">PHONE_NAME
                        <br class="hidden lg:inline-block">Price: ₹ Price_in_INR
                    </h1>
                    <p class="mb-8 leading-relaxed"><i class="fa-solid fa-star" style="color: #caee17;"></i> Rating
                        <br class="hidden lg:inline-block"><i class="fa-solid fa-users"></i> Number_of_Ratings</p>

                    <form class="flex justify-center">
                        <button class="inline-flex text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded text-lg"><i class="fa-solid fa-money-bill">&nbsp; Buy</i></button>
                        <button class="ml-4 inline-flex text-gray-700 bg-gray-200 border-0 py-2 px-6 focus:outline-none hover:bg-gray-300 rounded text-lg"><i class="fa-solid fa-cart-arrow-down">&nbsp; Add to Cart</i></button>
                    </form>
                </div>
                <div class="lg:max-w-lg lg:w-full md:w-1/2 w-5/6">
                    <img class="object-cover object-center rounded" alt="hero" src="img/redmi_buy.png">
                </div>
            </div>
        </section>
        <section class="text-gray-700 body-font border-t border-gray-200">
            <div class="container px-5 py-24 mx-auto">
                <div class="flex flex-col text-center w-full mb-20">
                    <h2 class="text-xs text-indigo-500 tracking-widest font-medium title-font mb-1">PHONE_NAME</h2>
                    <h1 class="sm:text-3xl text-2xl font-medium title-font text-gray-900">Product Details</h1>
                </div>
                <div class="flex flex-wrap -m-4">
                    <div class="p-4 md:w-1/3">
                        <div class="flex rounded-lg h-full bg-gray-100 p-8 flex-col">
                            <div class="flex items-center mb-3">
                                <div class="w-8 h-8 mr-3 inline-flex items-center justify-center rounded-full bg-indigo-500 text-white flex-shrink-0">
                                    <i class="fa-regular fa-calendar-days"></i>
                                </div>
                                <h2 class="text-gray-900 text-lg title-font font-medium">Date of manufacture</h2>
                            </div>
                            <div class="flex-grow">
                                <p class="leading-relaxed text-base">The phone was manufactured on Date_of_manufacture.</p>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="p-4 md:w-1/3">
                        <div class="flex rounded-lg h-full bg-gray-100 p-8 flex-col">
                            <div class="flex items-center mb-3">
                                <div class="w-8 h-8 mr-3 inline-flex items-center justify-center rounded-full bg-indigo-500 text-white flex-shrink-0">
                                    <i class="fa-solid fa-database"></i>
                                </div>
                                <h2 class="text-gray-900 text-lg title-font font-medium">ROM</h2>
                            </div>
                            <div class="flex-grow">
                                <p class="leading-relaxed text-base">The phone can store ROM.</p>
                            </div>
                        </div>
                    </div>
                    <div class="p-4 md:w-1/3">
                        <div class="flex rounded-lg h-full bg-gray-100 p-8 flex-col">
                            <div class="flex items-center mb-3">
                                <div class="w-8 h-8 mr-3 inline-flex items-center justify-center rounded-full bg-indigo-500 text-white flex-shrink-0">
                                    <i class="fa-solid fa-rocket"></i>
                                </div>
                                <h2 class="text-gray-900 text-lg title-font font-medium">RAM</h2>
                            </div>
                            <div class="flex-grow">
                                <p class="leading-relaxed text-base">The capacity of RAM is RAM.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="text-gray-700 body-font border-t border-gray-200">
            <div class="container px-5 py-24 mx-auto flex flex-wrap">
                <div class="lg:w-1/2 w-full mb-10 lg:mb-0 rounded-lg overflow-hidden">
                    <img alt="feature" class="object-cover object-center h-full w-full" src="img/redmi_inf.png">
                </div>
                <div class="flex flex-col flex-wrap lg:py-6 -mb-10 lg:w-1/2 lg:pl-12 lg:text-left text-center">
                    <div class="flex flex-col mb-10 lg:items-start items-center">
                        <div class="w-12 h-12 inline-flex items-center justify-center rounded-full bg-indigo-100 text-indigo-500 mb-5">
                            <i class="fa-solid fa-camera"></i>
                        </div>
                        <div class="flex-grow">
                            <h2 class="text-gray-900 text-lg title-font font-medium mb-3">Back Camera</h2>
                            <p class="leading-relaxed text-base">Back camera specifications: Rare_Camera.</p>
                        </div>
                    </div>
                    <div class="flex flex-col mb-10 lg:items-start items-center">
                        <div class="w-12 h-12 inline-flex items-center justify-center rounded-full bg-indigo-100 text-indigo-500 mb-5">
                            <i class="fa-solid fa-camera-rotate"></i>
                        </div>
                        <div class="flex-grow">
                            <h2 class="text-gray-900 text-lg title-font font-medium mb-3">Front Camera</h2>
                            <p class="leading-relaxed text-base">Front camera specifications: Front_Camera.</p>
                        </div>
                    </div>
                    <div class="flex flex-col mb-10 lg:items-start items-center">
                        <div class="w-12 h-12 inline-flex items-center justify-center rounded-full bg-indigo-100 text-indigo-500 mb-5">
                            <i class="fa-solid fa-battery-half"></i>
                        </div>
                        <div class="flex-grow">
                            <h2 class="text-gray-900 text-lg title-font font-medium mb-3">Battery</h2>
                            <p class="leading-relaxed text-base">Battery capacity is Battery.</p>
                        </div>
                    </div>
                    <div class="flex flex-col mb-10 lg:items-start items-center">
                        <div class="w-12 h-12 inline-flex items-center justify-center rounded-full bg-indigo-100 text-indigo-500 mb-5">
                            <i class="fa-solid fa-microchip"></i>
                        </div>
                        <div class="flex-grow">
                            <h2 class="text-gray-900 text-lg title-font font-medium mb-3">Processor</h2>
                            <p class="leading-relaxed text-base">There are Processor.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="text-gray-700 body-font border-t border-gray-200">
            <div class="container px-5 py-24 mx-auto">
                <div class="flex flex-col text-center w-full mb-20">
                    <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900">Product Reviews</h1>
                    <p class="lg:w-2/3 mx-auto leading-relaxed text-base">Below are the opinions collected from customers.</p>
                </div>
                <div class="flex flex-wrap -m-2">
                    <div class="p-2 lg:w-1/3 md:w-1/2 w-full">
                        <div class="h-full flex items-center border-gray-200 border p-4 rounded-lg">
                            <img alt="user" class="w-16 h-16 bg-gray-100 object-cover object-center flex-shrink-0 rounded-full mr-4" src="img/user.png">
                            <div class="flex-grow">
                                <h2 class="text-gray-900 title-font font-medium">User/Anonymous</h2>
                                <p class="text-gray-500">Ý kiến</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
