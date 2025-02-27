<%-- 
    Document   : contact
    Created on : May 25, 2024, 5:11:05 PM
    Author     : DiepTCNN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <jsp:include page="/includes/header.jsp" />
    </head>

    <body>

        <jsp:include page="/includes/navbar.jsp" />

        <section class="hero-wrap hero-wrap-2 js-fullheight" style="background-image: url('images/bg_3.jpg');"
                 data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i
                                        class="ion-ios-arrow-forward"></i></a></span> <span>Contact <i
                                    class="ion-ios-arrow-forward"></i></span></p>
                        <h1 class="mb-3 bread">Contact Us</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section contact-section">
            <div class="container">
                <div class="row d-flex mb-5 contact-info">
                    <div class="col-md-4">
                        <div class="row mb-5">
                            <div class="col-md-12">
                                <div class="border w-100 p-4 rounded mb-2 d-flex">
                                    <div class="icon mr-3">
                                        <span class="icon-map-o"></span>
                                    </div>
                                    <p><span>Address:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="border w-100 p-4 rounded mb-2 d-flex">
                                    <div class="icon mr-3">
                                        <span class="icon-mobile-phone"></span>
                                    </div>
                                    <p><span>Phone:</span> <a href="tel://1234567920">+ 1235 2355 98</a></p>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="border w-100 p-4 rounded mb-2 d-flex">
                                    <div class="icon mr-3">
                                        <span class="icon-envelope-o"></span>
                                    </div>
                                    <p><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 block-9 mb-md-5">
                        <form action="contact" method="post" class="bg-light p-5 contact-form">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" placeholder="Your Name">
                            </div>
                            <div class="form-group">
                                <input type="text" name="phone" class="form-control" placeholder="Your Phone Number">
                            </div>
                            <div class="form-group">
                                <input type="text" name="email" class="form-control" placeholder="Your Email">
                            </div>
                            <div class="form-group">
                                <input type="text" name="title" class="form-control" placeholder="Subject">
                            </div>
                            <div class="form-group">
                                <textarea name="message" id="" cols="30" rows="7" class="form-control" placeholder="Message"></textarea>
                            </div>
                            <div style="color: red; margin-left:30px; ">${msg}</div><br>
                            <div class="form-group">
                                <input type="submit" value="Send Message" class="btn btn-primary py-3 px-5">
                            </div>
                        </form>

                    </div>
                </div>
                <!-- <div class="row justify-content-center">
                  <div class="col-md-12">
                    <div id="map" class="bg-white"></div>
                  </div>
                </div> -->
                <!-- map -->

                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3835.8560635690856!2d108.2584456746545!3d15.968891342117118!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31421060734d1d45%3A0xee0cabb7ddf0acc7!2zS2h1IMSRw7QgdGjhu4sgRlBUIENpdHksIEhvw6AgSOG6o2ksIE5nxakgSMOgbmggU8ahbiwgxJDDoCBO4bq1bmcsIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1715738592214!5m2!1svi!2s"
                    width="1100" height="400" style="border:0;" allowfullscreen="" loading="lazy"
                    referrerpolicy="no-referrer-when-downgrade">
                </iframe>

                <!-- end map -->
            </div>
        </section>


        <jsp:include page="/includes/footer.jsp" />



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                    stroke="#F96D00" />
            </svg></div>


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
        <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>

    </body>

</html>
