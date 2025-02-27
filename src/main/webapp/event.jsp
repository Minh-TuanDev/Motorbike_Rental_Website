<%-- 
    Document   : event
    Created on : 5 thg 6, 2024, 21:50:13
    Author     : MINH TUAN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en-US">
    <head>
        <style id="wp-emoji-styles-inline-css" type="text/css">
            img.wp-smiley,
            img.emoji {
                display: inline !important;
                border: none !important;
                box-shadow: none !important;
                height: 1em !important;
                width: 1em !important;
                margin: 0 0.07em !important;
                vertical-align: -0.1em !important;
                background: none !important;
                padding: 0 !important;
            }
        </style>
        <style id="classic-theme-styles-inline-css" type="text/css">
            /*! This file is auto-generated */
            .wp-block-button__link {
                color: #fff;
                background-color: #32373c;
                border-radius: 9999px;
                box-shadow: none;
                text-decoration: none;
                padding: calc(.667em + 2px) calc(1.333em + 2px);
                font-size: 1.125em
            }

            .wp-block-file__button {
                background: #32373c;
                color: #fff;
                text-decoration: none
            }
        </style>
        <style id="global-styles-inline-css" type="text/css">
            :where(.is-layout-flex) {
                gap: 0.5em;
            }

            :where(.is-layout-grid) {
                gap: 0.5em;
            }

            body .is-layout-flex {
                display: flex;
            }

            .is-layout-flex {
                flex-wrap: wrap;
                align-items: center;
            }

            .is-layout-flex> :is(*, div) {
                margin: 0;
            }

            body .is-layout-grid {
                display: grid;
            }

            .is-layout-grid> :is(*, div) {
                margin: 0;
            }

            :where(.wp-block-columns.is-layout-flex) {
                gap: 2em;
            }

            :where(.wp-block-columns.is-layout-grid) {
                gap: 2em;
            }

            :where(.wp-block-post-template.is-layout-flex) {
                gap: 1.25em;
            }

            :where(.wp-block-post-template.is-layout-grid) {
                gap: 1.25em;
            }

            .has-black-color {
                color: var(--wp--preset--color--black) !important;
            }

            .has-cyan-bluish-gray-color {
                color: var(--wp--preset--color--cyan-bluish-gray) !important;
            }

            .has-white-color {
                color: var(--wp--preset--color--white) !important;
            }

            .has-pale-pink-color {
                color: var(--wp--preset--color--pale-pink) !important;
            }

            .has-vivid-red-color {
                color: var(--wp--preset--color--vivid-red) !important;
            }

            .has-luminous-vivid-orange-color {
                color: var(--wp--preset--color--luminous-vivid-orange) !important;
            }

            .has-luminous-vivid-amber-color {
                color: var(--wp--preset--color--luminous-vivid-amber) !important;
            }

            .has-light-green-cyan-color {
                color: var(--wp--preset--color--light-green-cyan) !important;
            }

            .has-vivid-green-cyan-color {
                color: var(--wp--preset--color--vivid-green-cyan) !important;
            }

            .has-pale-cyan-blue-color {
                color: var(--wp--preset--color--pale-cyan-blue) !important;
            }

            .has-vivid-cyan-blue-color {
                color: var(--wp--preset--color--vivid-cyan-blue) !important;
            }

            .has-vivid-purple-color {
                color: var(--wp--preset--color--vivid-purple) !important;
            }

            .has-black-background-color {
                background-color: var(--wp--preset--color--black) !important;
            }

            .has-cyan-bluish-gray-background-color {
                background-color: var(--wp--preset--color--cyan-bluish-gray) !important;
            }

            .has-white-background-color {
                background-color: var(--wp--preset--color--white) !important;
            }

            .has-pale-pink-background-color {
                background-color: var(--wp--preset--color--pale-pink) !important;
            }

            .has-vivid-red-background-color {
                background-color: var(--wp--preset--color--vivid-red) !important;
            }

            .has-luminous-vivid-orange-background-color {
                background-color: var(--wp--preset--color--luminous-vivid-orange) !important;
            }

            .has-luminous-vivid-amber-background-color {
                background-color: var(--wp--preset--color--luminous-vivid-amber) !important;
            }

            .has-light-green-cyan-background-color {
                background-color: var(--wp--preset--color--light-green-cyan) !important;
            }

            .has-vivid-green-cyan-background-color {
                background-color: var(--wp--preset--color--vivid-green-cyan) !important;
            }

            .has-pale-cyan-blue-background-color {
                background-color: var(--wp--preset--color--pale-cyan-blue) !important;
            }

            .has-vivid-cyan-blue-background-color {
                background-color: var(--wp--preset--color--vivid-cyan-blue) !important;
            }

            .has-vivid-purple-background-color {
                background-color: var(--wp--preset--color--vivid-purple) !important;
            }

            .has-black-border-color {
                border-color: var(--wp--preset--color--black) !important;
            }

            .has-cyan-bluish-gray-border-color {
                border-color: var(--wp--preset--color--cyan-bluish-gray) !important;
            }

            .has-white-border-color {
                border-color: var(--wp--preset--color--white) !important;
            }

            .has-pale-pink-border-color {
                border-color: var(--wp--preset--color--pale-pink) !important;
            }

            .has-vivid-red-border-color {
                border-color: var(--wp--preset--color--vivid-red) !important;
            }

            .has-luminous-vivid-orange-border-color {
                border-color: var(--wp--preset--color--luminous-vivid-orange) !important;
            }

            .has-luminous-vivid-amber-border-color {
                border-color: var(--wp--preset--color--luminous-vivid-amber) !important;
            }

            .has-light-green-cyan-border-color {
                border-color: var(--wp--preset--color--light-green-cyan) !important;
            }

            .has-vivid-green-cyan-border-color {
                border-color: var(--wp--preset--color--vivid-green-cyan) !important;
            }

            .has-pale-cyan-blue-border-color {
                border-color: var(--wp--preset--color--pale-cyan-blue) !important;
            }

            .has-vivid-cyan-blue-border-color {
                border-color: var(--wp--preset--color--vivid-cyan-blue) !important;
            }

            .has-vivid-purple-border-color {
                border-color: var(--wp--preset--color--vivid-purple) !important;
            }

            .has-vivid-cyan-blue-to-vivid-purple-gradient-background {
                background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;
            }

            .has-light-green-cyan-to-vivid-green-cyan-gradient-background {
                background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;
            }

            .has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background {
                background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;
            }

            .has-luminous-vivid-orange-to-vivid-red-gradient-background {
                background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;
            }

            .has-very-light-gray-to-cyan-bluish-gray-gradient-background {
                background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;
            }

            .has-cool-to-warm-spectrum-gradient-background {
                background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;
            }

            .has-blush-light-purple-gradient-background {
                background: var(--wp--preset--gradient--blush-light-purple) !important;
            }

            .has-blush-bordeaux-gradient-background {
                background: var(--wp--preset--gradient--blush-bordeaux) !important;
            }

            .has-luminous-dusk-gradient-background {
                background: var(--wp--preset--gradient--luminous-dusk) !important;
            }

            .has-pale-ocean-gradient-background {
                background: var(--wp--preset--gradient--pale-ocean) !important;
            }

            .has-electric-grass-gradient-background {
                background: var(--wp--preset--gradient--electric-grass) !important;
            }

            .has-midnight-gradient-background {
                background: var(--wp--preset--gradient--midnight) !important;
            }

            .has-small-font-size {
                font-size: var(--wp--preset--font-size--small) !important;
            }

            .has-medium-font-size {
                font-size: var(--wp--preset--font-size--medium) !important;
            }

            .has-large-font-size {
                font-size: var(--wp--preset--font-size--large) !important;
            }

            .has-x-large-font-size {
                font-size: var(--wp--preset--font-size--x-large) !important;
            }

            :where(.wp-block-columns.is-layout-flex) {
                gap: 2em;
            }

            :where(.wp-block-columns.is-layout-grid) {
                gap: 2em;
            }

            :where(.wp-block-pullquote) {
                font-size: 1.5em;
                line-height: 1.6;
            }

            :where(.wp-block-post-template.is-layout-flex) {
                gap: 1.25em;
            }

            :where(.wp-block-post-template.is-layout-grid) {
                gap: 1.25em;
            }
        </style>

        <style id="vw-event-planner-basic-style-inline-css" type="text/css">
            body {
                max-width: 100%;
            }
            @media (max-width: 768px) {
                .hero-wrap {
                    background-size: contain;
                }
            }
            .footer h3,
            .footer .wp-block-search .wp-block-search__label {
                text-align: left;
            }

            .footer .widget {
                text-align: left;
            }

            .copyright p {
                width: 100%;
                text-align: center;
                float: none;
            }

            .footer {
                background-attachment: scroll !important;
            }

            .footer {
                background-position: center center !important;
            }


            .woocommerce ul.products li.product .onsale {
                left: auto;
                right: 0;
            }

            .main-header {
                background-position: center top !important;
            }

            .footer h3,
            a.rsswidget.rss-widget-title {
                letter-spacing: 1px;
            }

            .footer h3,
            a.rsswidget.rss-widget-title {
                font-size: 30px;
            }

            .footer h3 {
                text-transform: Capitalize;
            }
            .entry-date a, .entry-author a {
                color: #555a5e;
            }
            @media screen and (max-width:575px) {
                .scrollup i {
                    visibility: visible !important;
                }
            }

            .scrollup1 {
                position: fixed;
                bottom: 20px;
                right: 20px;
                width: 40px;
                height: 40px;
                background-color: #00ff26;
                border-radius: 50%;
                text-align: center;
                line-height: 40px;
                color: #fff;
                font-size: 24px;
                text-decoration: none;
                transition: background-color 3s ease;
            }

            .scrollup1 :hover {
                color: #000;
            }

            .scrollup1 .ri-arrow-up-fill {
                vertical-align: middle;
            }

            .new-text h2 a {
                color: rgb(1,210,142);
                font-weight: bold;
            }

            .new-text h2 a:hover {
                transform: scale(2);
            }

            .footer h3,
            a.rsswidget.rss-widget-title {
                font-weight: 600;
            }
            .readmore-text {
                position: absolute;
                bottom: 0;
                right: 0;
                background-color: white;
                transition: all 1s ease;
            }
        .discountt {
            font-size: 50px;
            text-align: center;
            padding-top: 16px;
            font-weight: bold;
            background: linear-gradient(to right,
                var(--gradient-color-0) 0%,
                var(--gradient-color-25) 25%,
                var(--gradient-color-50) 50%,
                var(--gradient-color-75) 75%,
                var(--gradient-color-100) 100%
            );
            color: red;
            padding: 8px 16px;
            margin: 0;
        }


        </style>
        <link rel="stylesheet" id="bootstrap-style-css"
              href="https://wp-themes.com/wp-content/themes/vw-event-planner/assets/css/bootstrap.css?ver=6.6-beta1-58341"
              type="text/css" media="all">
        <link rel="stylesheet" id="vw-event-planner-basic-style-css"
              href="https://wp-themes.com/wp-content/themes/vw-event-planner/style.css?ver=6.6-beta1-58341" type="text/css"
              media="all">
        <link rel="stylesheet" id="animate-css-css"
              href="https://wp-themes.com/wp-content/themes/vw-event-planner/assets/css/animate.css?ver=6.6-beta1-58341"
              type="text/css" media="all">
        <link rel="stylesheet" id="dashicons-css"
              href="https://wp-themes.com/wp/wp-includes/css/dashicons.min.css?ver=6.6-beta1-58341" type="text/css"
              media="all">
        <script type="text/javascript" src="https://wp-themes.com/wp/wp-includes/js/jquery/jquery.min.js?ver=3.7.1"
        id="jquery-core-js"></script>
        <script type="text/javascript"
                src="https://wp-themes.com/wp-content/themes/vw-event-planner/assets/js/wow.js?ver=6.6-beta1-58341"
        id="jquery-wow-js"></script>
        <script src="https://wp-themes.com/wp/wp-includes/js/wp-emoji-release.min.js?ver=6.6-beta1-58341" defer=""></script>
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/4.2.0/remixicon.css"/>
        <jsp:include page="/includes/header.jsp" />
    </head>
    <body class="home blog wp-embed-responsive">
        <jsp:include page="/includes/navbar.jsp" />
        <section class="hero-wrap hero-wrap-2 js-fullheight" 
                 style="background-image: url('https://www.motorcyclesofdulles.com/wp-content/uploads/2024/02/Introducing-the-Triumph-Daytona-660-A-New-Era-of-Excellence-at-Motorcycles-of-Dulles--scaled.jpeg');"
                 data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs"><span class="mr-2"><a href="index.html">Home <i
                                        class="ion-ios-arrow-forward"></i></a></span> <span>Cars <i
                                    class="ion-ios-arrow-forward"></i></span></p>
                        <h1 class="mb-3 bread">Choose Your Car</h1>
                    </div>
                </div>
            </div>
        </section>
        <main id="maincontent" role="main">
            <div class="middle-align container">
                <div class="row m-0">
                    <div id="our-services" class="services col-lg-8 col-md-8">
                        <c:forEach items="${sessionScope.listEvent}" var="event">
                            <article id="post-19"
                                     class="inner-service post-19 post type-post status-publish format-standard hentry category-uncategorized tag-boat tag-lake">
                                <div style="box-shadow: rgb(78, 255, 0) 0px 0px 20px 0px;visibility: visible;animation-duration: 2s;animation-name: zoomInDown;margin-bottom: 60px;"class="post-main-box wow zoomInDown delay-1000" data-wow-duration="2s"
                                     style="visibility: visible; animation-duration: 2s; animation-name: zoomInDown;">
                                    <div class="row">
                                        <div class="new-text col-lg-12 col-md-12">
                                            <h2><a style="font-family: 'Times New Roman',
                                                   Times, serif; font-weight: bold; font-style: oblique;font-size:32px;" href="">${event.eventTitle}</a></h2>
                                            <div>
                                                <i class="ri-calendar-2-line"></i><span class="date">${event.createdDate}</span>   |
                                                <i class="ri-time-line"></i><span class="entry-time">${event.startDate}</span>   |
                                                <i class="ri-rest-time-line"></i><span class="entry-comments">
                                                    ${event.endDate}</span>
                                                <hr>
                                                <div class="entry-content" style="max-height: 110px; overflow: hidden;">
                                                    <p>${event.content}</p>
                                                    <span class="readmore-text" style="position: absolute;bottom: 68px;left: 16px;font-size: 27px;letter-spacing: 6px;">...</span>
                                                </div>
                                                <div class="hidden-image" style="display: none;">
                                                    <img src="images/${event.eventImage}" alt="${event.eventTitle}">
                                                </div>
                                                <div class="discount-info" style="display: none;">
                                                    <p class="discountt text-center">SALE ${Math.round(event.discount * 100)}%</p>
                                                </div>
                                                <div class="content-bttn">
                                                    <a style="background-image: linear-gradient(to right, #75fed9, #00ff9d);" class="view-more" href="#" onclick="showFullContent(event, this)">Xem thêm <i class="fas fa-angle-right"></i><span class="screen-reader-text">Xem thêm</span></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                            </article>
                        </c:forEach>

                        <div class="navigation">
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 sidebar">
                        <div class="sidebar">
                            <aside style="box-shadow: 0px 15px 10px -15px #00ff62;" id="search" class="widget" role="complementary" aria-label="firstsidebar">
                                <h3 style="color: rgb(1,210,142);">Search</h3>

                                <form action="searchevent" method="get" class="search-form" >
                                    <label>
                                        <span class="screen-reader-text">Search for:</span>
                                        <input type="search" class="search-field" placeholder="Search" value="${textSearch}" name="textSearch">
                                    </label>
                                    <input style="background-image: linear-gradient(to right, #75fed9, #00ff9d);" type="submit" class="search-submit" value="Search">
                                </form>
                            </aside>
                            <aside style="box-shadow: 0px 15px 10px -15px #00ff62;" id="archives" role="complementary" class="widget" aria-label="firstsidebar">
                                <h3 style="color: rgb(1,210,142);">Archives</h3>
                                <ul>
                                    <li><a href="">October 2008</a></li>
                                    <li><a href="">September 2008</a></li>
                                    <li><a href="">June 2008</a></li>
                                </ul>
                            </aside>
                            <aside style="box-shadow: 0px 15px 10px -15px #00ff62;" id="categories" class="widget" role="complementary" aria-label="forthsidebar">
                                <h3 style="color: rgb(1,210,142);">Categories</h3>
                                <ul>
                                    <li class="cat-item "><a href="">Black Friday</a></li>
                                    <li class="cat-item "><a href="">Summer Sale</a> </li>
                                    <li class="cat-item "><a href="">Winter Sale</a></li>
                                    <li class="cat-item "><a href="">Winter Sale</a> </li>
                                </ul>
                            </aside>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </main>
        <script type="text/javascript"
                src="https://wp-themes.com/wp-content/themes/vw-event-planner/assets/js/bootstrap.js?ver=6.6-beta1-58341"
        id="bootstrap-js-js"></script>
        <script type="text/javascript"
                src="https://wp-themes.com/wp-content/themes/vw-event-planner/assets/js/jquery.superfish.js?ver=6.6-beta1-58341"
        id="jquery-superfish-js"></script>
    </body>
    <script>
                                                        function showFullContent(event, element) {
                                                            event.preventDefault();

                                                            const article = element.closest("article");
                                                            const content = article.querySelector(".entry-content");
                                                            const readmoreText = content.querySelector(".readmore-text");
                                                            const discountInfo = article.querySelector(".discount-info");
                                                            const hiddenImage = article.querySelector(".hidden-image");

                                                            if (content.classList.contains("collapsed")) {
                                                                content.style.maxHeight = "none";
                                                                readmoreText.style.display = "none";
                                                                discountInfo.style.display = "block";
                                                                hiddenImage.style.display = "block";
                                                                element.textContent = "Thu gọn";
                                                                article.scrollIntoView({behavior: "smooth"}); // Thêm dòng này
                                                                content.classList.remove("collapsed");
                                                            } else {
                                                                content.style.maxHeight = "110px";
                                                                readmoreText.style.display = "block";
                                                                discountInfo.style.display = "none";
                                                                hiddenImage.style.display = "none";
                                                                element.textContent = "Xem thêm";
                                                                article.scrollIntoView({behavior: "smooth"}); // Thêm dòng này
                                                                content.classList.add("collapsed");
                                                            }
                                                        }
                                                        document.addEventListener("DOMContentLoaded", function () {
                                                            document.querySelectorAll(".entry-content").forEach(content => {
                                                                content.style.maxHeight = "110px";
                                                                content.classList.add("collapsed");
                                                            });
                                                        });

    </script>

    <jsp:include page="/includes/footer.jsp" />
    <a href="#" class="scrollup1"><i class="ri-arrow-up-fill" style="display: inline;"></i><span class="screen-reader-text">Scroll Up</span></a>
    <!--cái này có thể để vào footer nếu muốn-->
</html>
