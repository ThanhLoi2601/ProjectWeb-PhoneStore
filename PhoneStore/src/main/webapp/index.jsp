<%-- 
    Document   : index
    Created on : Oct 23, 2023, 11:00:31 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.setAttribute("Home", false);
            session.setAttribute("Gif", false);
            session.setAttribute("Order", true);
            session.setAttribute("Cart", false);
            session.setAttribute("User", false);
            session.setAttribute("InfShop", false);
        %>
        <%@include file="header.jsp" %>
        <c:import url="Home.jsp" >
    </body>
</html>
