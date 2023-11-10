<%-- 
    Document   : admin_sales
    Created on : Nov 4, 2023, 3:20:20 PM
    Author     : DELL
--%>

<%@page import="java.util.Calendar"%>
<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        SimpleDateFormat monthFormat = new SimpleDateFormat("MMMM", new Locale("en", "VN"));
        SimpleDateFormat yearFormat = new SimpleDateFormat("yyyy");
        // Lấy thời gian hiện tại
        Calendar cal = Calendar.getInstance();

        String monthInWords = monthFormat.format(cal.getTime());
        pageContext.setAttribute("monthInWords", monthInWords);

        String year = yearFormat.format(cal.getTime());
        pageContext.setAttribute("year", year);
        // Trừ 1 tháng
        cal.add(Calendar.MONTH, -1);
        String oneMonthsAgo = monthFormat.format(cal.getTime());
        pageContext.setAttribute("oneMonthsAgo", oneMonthsAgo);

        // Trừ 2 tháng
        cal.add(Calendar.MONTH, -1);

        String twoMonthsAgo = monthFormat.format(cal.getTime());
        pageContext.setAttribute("twoMonthsAgo", twoMonthsAgo);
    %>

    <div class="app-content">
        <div class="app-content-header">
            <h1 class="app-content-headerText">Sales Chart</h1>
        </div>
        <link rel="stylesheet" href="styles/chart.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>
        <div class="container">
            <div class="donut-chart-block block"> 
                <h2 class="titular">PHONE SALES STATS</h2>
                <div class="donut-chart">
                    <div id="porcion1" class="recorte"><div class="quesito Iphone" data-rel="21"></div></div>
                    <div id="porcion2" class="recorte"><div class="quesito Samsung" data-rel="39"></div></div>
                    <div id="porcion3" class="recorte"><div class="quesito Xiaomi" data-rel="31"></div></div>
                    <div id="porcionFin" class="recorte"><div class="quesito Realme" data-rel="9"></div></div>

                    <p class="center-date">${monthInWords}<br><span class="scnd-font-color">${year}</span></p>        
                </div>
                <ul class="os-percentages horizontal-list">
                    <li>
                        <p class="Iphone os scnd-font-color">Iphone</p>
                        <p class="os-percentage">21<sup>%</sup></p>
                    </li>
                    <li>
                        <p class="Samsung os scnd-font-color">Samsung</p>
                        <p class="os-percentage">39<sup>%</sup></p>
                    </li>
                    <li>
                        <p class="Xiaomi os scnd-font-color">Xiaomi</p>
                        <p class="os-percentage">9<sup>%</sup></p>
                    </li>
                    <li>
                        <p class="Realme os scnd-font-color">Realme</p>
                        <p class="os-percentage">31<sup>%</sup></p>
                    </li>
                </ul>
            </div>
            <!-- LINE CHART BLOCK (LEFT-CONTAINER) -->
            <div class="line-chart-block block">
                <div class="line-chart">
                    <div class='grafico'>
                        <ul class='eje-y'>
                            <li data-ejeY='30'></li>
                            <li data-ejeY='20'></li>
                            <li data-ejeY='10'></li>
                            <li data-ejeY='0'></li>
                        </ul>
                        <ul class='eje-x'>
                            <li>${twoMonthsAgo}</li>
                            <li>${oneMonthsAgo}</li>
                            <li>${monthInWords}</li>
                        </ul>
                        <span data-valor='25'>
                            <span data-valor='8'>
                                <span data-valor='13'>
                                    <span data-valor='5'>   
                                        <span data-valor='23'>   
                                            <span data-valor='12'>
                                                <span data-valor='15'>
                                                </span></span></span></span></span></span></span>
                    </div>

                </div>
                <h2 class="titular">SALES BY YEAR ${year}</h2>
                <ul class="month-data clear">
                    <li>
                        <p>${twoMonthsAgo}<span class="scnd-font-color"> ${year}</span></p>
                        <p><span class="entypo-plus increment"> </span>21<sup>%</sup></p>
                    </li>
                    <li>
                        <p>${oneMonthsAgo}<span class="scnd-font-color"> ${year}</span></p>
                        <p><span class="entypo-plus increment"> </span>48<sup>%</sup></p>
                    </li>
                    <li>
                        <p>${monthInWords}<span class="scnd-font-color"> ${year}</span></p>
                        <p><span class="entypo-plus increment"> </span>35<sup>%</sup></p>
                    </li>
                </ul>
            </div>



            <div class="bar-chart-block block">
                <h2 class='titular'>Number of products sold</h2>
                <div class='grafico bar-chart'>
                    <ul class='eje-y'>
                        <li data-ejeY='60'></li>
                        <li data-ejeY='45'></li>
                        <li data-ejeY='30'></li>
                        <li data-ejeY='15'></li>
                        <li data-ejeY='0'></li>
                    </ul>
                    <ul class='eje-x'>
                        <li data-ejeX='37'><i>Iphone</i></li>
                        <li data-ejeX='56'><i>Samsung</i></li>
                        <li data-ejeX='25'><i>Xiaomi</i></li>
                        <li data-ejeX='18'><i>Realme</i></li>
                    </ul>
                </div>
                <h2 class='titular'>${monthInWords}<span class="scnd-font-color"> ${year}</span></h2>
            </div>

            <div class="bar-chart-block block">
                <h2 class='titular'>Number of products still stored</h2>
                <div class='grafico bar-chart'>
                    <ul class='eje-y'>
                        <li data-ejeY='60'></li>
                        <li data-ejeY='45'></li>
                        <li data-ejeY='30'></li>
                        <li data-ejeY='15'></li>
                        <li data-ejeY='0'></li>
                    </ul>
                    <ul class='eje-x'>
                        <li data-ejeX='37'><i>Iphone</i></li>
                        <li data-ejeX='56'><i>Samsung</i></li>
                        <li data-ejeX='25'><i>Xiaomi</i></li>
                        <li data-ejeX='18'><i>Realme</i></li>
                    </ul>
                </div>
                <h2 class='titular'>${monthInWords}<span class="scnd-font-color"> ${year}</span></h2>
            </div>

        </div>
    </div>
</html>
