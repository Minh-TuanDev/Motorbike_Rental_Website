<%-- 
    Document   : pricing
    Created on : May 25, 2024, 4:59:34 PM
    Author     : DiepTCNN
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Carbook - Free Bootstrap 4 Template by Colorlib</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>

        <jsp:include page="/includes/navbar.jsp" />

        <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Pricing <i class="ion-ios-arrow-forward"></i></span></p>
                        <h1 class="mb-3 bread">Pricing</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-cart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 ftco-animate">
                        <div class="car-list">
                            <table class="table">
                                <thead class="thead-primary">
                                    <tr class="text-center">
                                        <th>&nbsp;</th>
                                        <th>&nbsp;</th>
                                        <th class="bg-primary heading">Per Day Rate</th>
                                        <th class="bg-dark heading">Per Week Rate</th>
                                        <th class="bg-black heading">Per Month Rate</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listM}" var="m">
                                        <tr class="">
                                            <c:forEach items="${listP}" var="p">
                                                <c:if test="${p.priceListId == m.priceListID}">
                                                    <td class="car-image"><div class="img" style="background-image:url(images/${m.image});"></div></td>
                                                    <td class="product-name">
                                                        <h3>${m.model}</h3>
                                                    </td>

                                                    <td class="price">
                                                        <p class="btn-custom"><a href="#">Rent a motorbike</a></p>
                                                        <div class="price-rate">
                                                            <h3>
                                                                <span class="num"><small class="currency">$</small> ${p.dailyPriceForDay}</span>
                                                                <span class="per">/per hour</span>
                                                            </h3>
                                                            <span class="subheading">$3/hour fuel surcharges</span>
                                                        </div>
                                                    </td>

                                                    <td class="price">
                                                        <p class="btn-custom"><a href="#">Rent a motorbike</a></p>
                                                        <div class="price-rate">
                                                            <h3>
                                                                <span class="num"><small class="currency">$</small> ${p.dailyPriceForWeek}</span>
                                                                <span class="per">/per week</span>
                                                            </h3>
                                                            <span class="subheading">$3/hour fuel surcharges</span>
                                                        </div>
                                                    </td>

                                                    <td class="price">
                                                        <p class="btn-custom"><a href="#">Rent a motorbike</a></p>
                                                        <div class="price-rate">
                                                            <h3>
                                                                <span class="num"><small class="currency">$</small> ${p.dailyPriceForMonth}</span>
                                                                <span class="per">/per month</span>
                                                            </h3>
                                                            <span class="subheading">$3/hour fuel surcharges</span>
                                                        </div>
                                                    </td>
                                                </tr><!-- END TR-->
                                            </c:if>
                                        </c:forEach> 
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <jsp:include page="/includes/footer.jsp" />



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/jquery.timepicker.min.js"></script>
        <script src="js/scrollax.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>