<%-- 
    Document   : customer_thanks
    Created on : Dec 1, 2023, 4:55:49 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thanks page</title>
        <link rel="stylesheet" href="styles/customer_thanks.css">
        <link href="https://fonts.googleapis.com/css?family=Kaushan+Script|Source+Sans+Pro" rel="stylesheet">
    </head>
    <body style = "background: #fff">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%
            session.setAttribute("wn_Home", false);
            session.setAttribute("wn_Cart", true);
            session.setAttribute("wn_User", false);
            session.setAttribute("wn_InfShop", false);
            session.setAttribute("wn_Comment", false);
        %>
        <%@include file="customer_header.jsp" %>
        <div class=content>
            <div class="wrapper-1">
                <div class="wrapper-2">
                    <h1>Thank you !</h1>
                    <p>Thank you for purchasing our products. </p>
                    <p>you should receive a confirmation email soon </p>
                    <a href="CustomerServlet" class="go-home">
                        go home
                    </a>
                </div>
            </div>
        </div>
    </body>
</html>
