<%-- 
    Document   : admin_invoice
    Created on : Nov 5, 2023, 9:07:10 PM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel="stylesheet" href="styles/ad_invoice.css">
    <link rel="stylesheet" href="styles/Admin.css">

    <div class="app-content">
        <div class="app-content-header">
            <h1 class="app-content-headerText">Invoices</h1>
        </div>
        <div>
            <div class="row">
                <div class="col-sm-6 col-md-4 col-lg-3">

                    <div class="panel panel-default panel-signing">
                        <div class="panel-heading">
                            <div class="signing-remove">
                                <button class="glyphicon glyphicon-remove-circle"></button>
                            </div><!-- /.signing-remove -->

                            <div class="signing-name"><a href="#signingModal" data-toggle="modal">Invoice 1</a></div><!-- /.signing-name -->
                        </div><!-- /.panel-heading -->

                        <div class="signing-info text-center">
                            <div class="signing-date"><a data-toggle="modal"><span class="glyphicon glyphicon-calendar"></span> 5/23/2018</a></div>
                            <div class="signing-time"><a data-toggle="modal"><span class="glyphicon glyphicon-time"></span> 8:00 AM</a></div>
                        </div><!-- /.signing-info -->

                        <button class="btn btn-default btn-block btn-signing-details text-uppercase" type="button" data-toggle="collapse" data-target="#signing-details-1" aria-expanded="false" aria-controls="signing-details-1">
                            <span class="glyphicon glyphicon-menu-down"></span> More Details
                        </button><!-- /.btn -->

                        <div id="signing-details-1" class="signing-details-collapse collapse" >
                            <div class="panel-body panel-signing-details">
                                <dl class="dl-bordered dl-no-margin">
                                    <dt>Amount</dt>
                                    <dd>$1,000.00</dd>
                                    <dt>Discount</dt>
                                    <dd>22%</dd>
                                    <dt>Invoice Number</dt>
                                    <dd><a href="#createInvoiceModal" data-toggle="modal">1008</a></dd>
                                </dl>
                            </div><!-- /.panel-body -->
                        </div><!-- /.collapse -->

                        <div class="panel-body">
                            <dl class="dl-bordered dl-no-margin">
                                <dt>Location </dt>
                                <dd><a href="http://maps.google.com" target="_blank">Lake Forest</a></dd>
                                <dt>Customer: </dt>
                                <dd>First American Title Co.</dd>
                            </dl>
                        </div><!-- /.panel-body -->

                        <div class="panel-footer">
                            <div class="text-uppercase"><a href="#signingModal" data-toggle="modal"><span class="glyphicon glyphicon-edit" title="Edit Signing"></span> send confirm</a></div>
                        </div><!-- /.panel-footer -->
                    </div><!-- /.panel -->  

                </div><!-- /.col -->

                <div class="col-sm-6 col-md-4 col-lg-3">

                    <div class="panel panel-default panel-signing">
                        <div class="panel-heading">
                            <div class="signing-remove">
                                <span class="glyphicon glyphicon-remove-circle"></span>
                            </div><!-- /.signing-remove -->

                            <div class="signing-name"><a href="#signingModal" data-toggle="modal">Craft</a></div><!-- /.signing-name -->
                        </div><!-- /.panel-heading -->

                        <div class="signing-info text-center">
                            <div class="signing-date"><a href="#dateTimeModal" data-toggle="modal"><span class="glyphicon glyphicon-calendar"></span> 5/1/2018</a></div>
                            <div class="signing-time"><a href="#dateTimeModal" data-toggle="modal"><span class="glyphicon glyphicon-time"></span> 3:00 PM</a></div>
                        </div><!-- /.signing-info -->

                        <button class="btn btn-default btn-block btn-signing-details text-uppercase" type="button" data-toggle="collapse" data-target="#signing-details-2" aria-expanded="false" aria-controls="signing-details-2">
                            <span class="glyphicon glyphicon-menu-down"></span> More Details
                        </button><!-- /.btn -->

                        <div id="signing-details-2" class="signing-details-collapse collapse" >
                            <div class="panel-body panel-signing-details">
                                <dl class="dl-bordered dl-no-margin">
                                    <dt>Amount</dt>
                                    <dd>$15.00</dd>
                                    <dt>Invoice Sent <a href="#invoiceModal" data-toggle="modal"><span class="glyphicon glyphicon-calendar pull-right"></span></a></dt>
                                    <dd><a href="#invoiceModal" data-toggle="modal">5/24/2018</a></dd>
                                    <dt>Invoice Paid <a href="#paymentModal" data-toggle="modal"><span class="glyphicon glyphicon-calendar pull-right"></span></a></dt>
                                    <dd><a href="#paymentModal" data-toggle="modal">5/1/2018</a></dd>
                                    <dt>Invoice Number <a href="#createInvoiceModal" data-toggle="modal"><span class="glyphicon glyphicon-plus pull-right"></span></a></dt>
                                    <dd><a href="#createInvoiceModal" data-toggle="modal">1010</a></dd>
                                    <dt>Mileage</dt>
                                    <dd>22</dd>
                                    <dt>Order No.</dt>
                                    <dd>00000</dd>
                                    <dt>Docs/Sigs <a href="#signatureModal" data-toggle="modal"><span class="glyphicon glyphicon-plus pull-right"></span></a></dt>
                                    <dd><a href="#signatureModal" data-toggle="modal">1 / 1</a></dd>
                                    <dt>Tracking # <a href="#"><span class="glyphicon glyphicon-new-window pull-right"></span></a></dt>
                                    <dd>&nbsp;</dd>
                                </dl>
                            </div><!-- /.panel-body -->
                        </div><!-- /.collapse -->

                        <div class="panel-body">
                            <dl class="dl-bordered dl-no-margin">
                                <dt>Location </dt>
                                <dd><a href="http://maps.google.com" target="_blank">San Juan Capistrano</a></dd>
                                <dt>Customer</dt>
                                <dd>Betty Craft</dd>
                            </dl>
                        </div><!-- /.panel-body -->

                        <div class="panel-footer">
                            <div class="text-uppercase"><a href="#signingModal" data-toggle="modal"><span class="glyphicon glyphicon-edit" title="Edit Signing"></span> Edit</a></div>
                        </div><!-- /.panel-footer -->
                    </div><!-- /.panel -->  

                </div><!-- /.col -->
                <div class="col-sm-6 col-md-4 col-lg-3">

                    <div class="panel panel-default panel-signing">
                        <div class="panel-heading">
                            <div class="signing-remove">
                                <span class="glyphicon glyphicon-remove-circle"></span>
                            </div><!-- /.signing-remove -->

                            <div class="signing-name"><a href="#signingModal" data-toggle="modal">Melchor</a></div><!-- /.signing-name -->
                        </div><!-- /.panel-heading -->

                        <div class="signing-info text-center">
                            <div class="signing-date"><a href="#dateTimeModal" data-toggle="modal"><span class="glyphicon glyphicon-calendar"></span> 5/23/2018</a></div>
                            <div class="signing-time"><a href="#dateTimeModal" data-toggle="modal"><span class="glyphicon glyphicon-time"></span> 8:00 AM</a></div>
                        </div><!-- /.signing-info -->

                        <button class="btn btn-default btn-block btn-signing-details text-uppercase" type="button" data-toggle="collapse" data-target="#signing-details-3" aria-expanded="false" aria-controls="signing-details-1">
                            <span class="glyphicon glyphicon-menu-down"></span> More Details
                        </button><!-- /.btn -->

                        <div id="signing-details-3" class="signing-details-collapse collapse" >
                            <div class="panel-body panel-signing-details">
                                <dl class="dl-bordered dl-no-margin">
                                    <dt>Amount</dt>
                                    <dd>$1,000.00</dd>
                                    <dt>Invoice Sent <a href="#invoiceModal" data-toggle="modal"><span class="glyphicon glyphicon-calendar pull-right"></span></a></dt>
                                    <dd><a href="#invoiceModal" data-toggle="modal">5/9/2018</a></dd>
                                    <dt>Invoice Paid <a href="#paymentModal" data-toggle="modal"><span class="glyphicon glyphicon-calendar pull-right"></span></a></dt>
                                    <dd><a href="#paymentModal" data-toggle="modal">5/24/2018</a> <label class="label label-warning text-uppercase">Partial</label></dd>
                                    <dt>Invoice Number <a href="#createInvoiceModal" data-toggle="modal"><span class="glyphicon glyphicon-plus pull-right"></span></a></dt>
                                    <dd><a href="#createInvoiceModal" data-toggle="modal">1008</a></dd>
                                    <dt>Mileage</dt>
                                    <dd>22</dd>
                                    <dt>Order No.</dt>
                                    <dd>12564</dd>
                                    <dt>Docs/Sigs <a href="#signatureModal" data-toggle="modal"><span class="glyphicon glyphicon-plus pull-right"></span></a></dt>
                                    <dd><a href="#signatureModal" data-toggle="modal">1344 / 1</a></dd>
                                    <dt>Tracking # <a href="#trackingModal" data-toggle="modal"><span class="glyphicon glyphicon-plus pull-right"></span></a></dt>
                                    <dd><a href="http://www.dhl.com/TrackByNbr.asp?ShipmentNumber=1234" target="_blank">1234</a></dd>
                                </dl>
                            </div><!-- /.panel-body -->
                        </div><!-- /.collapse -->

                        <div class="panel-body">
                            <dl class="dl-bordered dl-no-margin">
                                <dt>Location </dt>
                                <dd><a href="http://maps.google.com" target="_blank">Lake Forest</a></dd>
                                <dt>Customer: </dt>
                                <dd>First American Title Co.</dd>
                            </dl>
                        </div><!-- /.panel-body -->

                        <div class="panel-footer">
                            <div class="text-uppercase"><a href="#signingModal" data-toggle="modal"><span class="glyphicon glyphicon-edit" title="Edit Signing"></span> Edit</a></div>
                        </div><!-- /.panel-footer -->
                    </div><!-- /.panel -->  

                </div><!-- /.col -->
            </div>
        </div>
    </div>
</div>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script  src="js/ad_invoice.js"></script>

</html>
