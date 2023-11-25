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
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages': ['table']});
        google.charts.setOnLoadCallback(drawTable);

        function drawTable() {
            var data = new google.visualization.DataTable();
            data.addColumn('string', 'Name');
            data.addColumn('number', 'Salary');
            data.addColumn('boolean', 'Full Time Employee');
            data.addRows([
                ['Mike', {v: 10000, f: '$10,000'}, true],
                ['Jim', {v: 8000, f: '$8,000'}, false],
                ['Alice', {v: 12500, f: '$12,500'}, true],
                ['Bob', {v: 7000, f: '$7,000'}, true]
            ]);

            var table = new google.visualization.Table(document.getElementById('table_div'));

            table.draw(data, {showRowNumber: true, width: '100%', height: '100%'});
        }
    </script>
    <script type="text/javascript">
        google.charts.load("current", {packages: ["corechart"]});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Task', 'Hours per Day'],
                ['Work', 11],
                ['Eat', 2],
                ['Commute', 2],
                ['Watch TV', 2],
                ['Sleep', 7]
            ]);

            var options = {
                title: 'My Daily Activities',
                pieHole: 0.4
            };

            var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
            chart.draw(data, options);
        }
    </script>
    <div class="app-content">
        <div class="app-content-header">
            <h1 class="app-content-headerText">Statistics</h1>
        </div>
        <div class="app-content-actions">
            <div class="filter-button-wrapper">
                <button class="action-button filter jsFilter"><span>Filter</span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-filter"><polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3"/></svg></button>
                <div class="filter-menu" style="right: -150px;">
                    <label>Start Date</label>
                    <input value="2023-11-25" type="date" name="start_date" style="width: 200px;"/>
                    <label>End Date</label>
                    <input placeholder="End Date..." type="date" name="end_date" style="width: 200px;"/>
                    <div class="filter-menu-buttons">
                        <button class="filter-button reset">
                            Today
                        </button>
                        <button class="filter-button apply">
                            Apply
                        </button>
                    </div>
                </div>
            </div>
        </div>
        <div class="products-row" id="donutchart" style="height: 550px;"></div>
        <div class="products-row" id="table_div" style="height: 200px;"></div>
    </div>
</html>
