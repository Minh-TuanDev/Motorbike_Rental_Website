<%-- 
    Document   : motorbikes
    Created on : May 25, 2024, 5:01:05 PM
    Author     : DiepTCNN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <jsp:include page="/includes/header.jsp" />
        <!-- thanh search -->
        <link rel="stylesheet" type="text/css"
              href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>


            .filter-module {
                padding: 20px;
                background-color: #fff;
                margin: 20px auto;

                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
            }


            .filter-container {
                display: flex;
                flex-wrap: wrap;
            }

            .filter-group {
                margin-bottom: 35px;
                position: relative;
                margin-right: 30px;
            }

            .filter-button {
                padding: 10px 20px;
                border: 1px solid #00ff6f;
                font-weight: bold;
                background:#01D28E;
                color: white;
                cursor: pointer;
                border-radius: 5px;
                /* transition: background-color 0.5s, box-shadow 0.3s; */
            }

            .filter-button:hover {
                background-color: #1089FF;
                color: #fff;
                background-image: linear-gradient(to right, #75fed9, #00ff55);
                color: #28a745;
                cursor: pointer;
                border-radius: 5px;
                transition: background-color 0.5s, box-shadow 0.3s;
            }

            .filter-options {
                margin-top: 10px;
                position: absolute;
                z-index: 1;
                background-color: #fff;
                border: 1px solid #eee;
                border-radius: 8px;
                box-shadow: 0 2px 20px rgba(0, 0, 0, .5);
                background-color: #fff;
                opacity: 0;
                padding: 10px 10px 0;
                transition: .5s;
                width: 481px;
                display: none;
            }

            .filter-options button {
                padding: 12px;
                border: 1px solid #ddd;
                background-color: #f8f9fa;
                cursor: pointer;
                border-radius: 5px;
                transition: background-color 0.3s, box-shadow 0.3s;
            }

            .filter-options:after {
                border-bottom: 10px solid #fff;
                border-left: 10px solid transparent;
                border-right: 10px solid transparent;
                content: "";
                left: 30px;
                position: absolute;
                top: -10px;
            }


            .filter-options button:hover {
                background-color: #e2e6ea;
            }

            .filter-options button.selected {
                background: linear-gradient#01D28E;
                color: #fff;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }


            .show-options {
                display: block;
                opacity: 1;
                z-index: 100;
            }

            .filter-group .filter-button:after {
                content: ' ▼';
            }
            .filter-group .filter-button.open:after {
                content: ' ▲';
            }
            .selected-filters {
                margin-top: 20px;
            }

            .selected-filter {
                display: inline-block;
                padding: 5px 10px;
                margin: 5px;
                border: 1px solid #dc3545;
                background-color: #f1f1f1;
                color: #dc3545;
                border-radius: 5px;
                cursor: pointer;
            }


            .selected-filter:hover {
                background-color: #f5c6cb;
            }

            .filter-search {
                margin-top: 3px;
            }

            .filter-search input {
                border: 1px solid #00ff6f;
            }

            .filter-search button:hover {
                opacity: 0.8;
            }

            .button-item-option {
                margin-bottom: 12px;
                margin-right: 12px;
            }
            /* Reset some basic styles for the pagination list */
            .pagination {
                display: flex;
                justify-content: center;
                display: inline-flex;
                list-style-type: none;
                padding: 0;
                margin: 0;
            }

            .page-item {
                margin: 0 5px;
            }

            .page-link {
                display: block;
                padding: 8px 16px;
                color: #007bff;
                text-decoration: none;
                border: 1px solid #dee2e6;
                border-radius: 4px;
                transition: background-color 0.3s, color 0.3s;
            }

            .page-link:hover {
                background-color: #007bff;
                color: white;
            }

            .page-item.active .page-link {
                background-color: #007bff;
                color: white;
                border-color: #007bff;
            }

            .page-item.disabled .page-link {
                color: #6c757d;
                pointer-events: none;
                cursor: not-allowed;
                background-color: #e9ecef;
                border-color: #dee2e6;
            }

        </style>
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
                                        class="ion-ios-arrow-forward"></i></a></span> <span>Cars <i
                                    class="ion-ios-arrow-forward"></i></span></p>
                        <h1 class="mb-3 bread">Choose Your Car</h1>
                    </div>
                </div>
            </div>
        </section>

        <!-- thanh search -->
        <section>
            <div class="filter-module">
                <div class="filter-container">
                    <div class="filter-group">
                        <button class="filter-button" onclick="toggleOptions('priceOptions')">Giá</button>
                        <div class="filter-options" id="priceOptions">
                            <c:forEach items="${listPriceRange}" var="o">
                                <input hidden name="priceRanges" value="${o.minPrice},${o.maxPrice}"/>
                                <button data-id="${o.minPrice},${o.maxPrice}" class="button-item-option" onclick="toggleSelection(this)">
                                    <p> <c:if test="${o.minPrice == 0}">
                                            Dưới <fmt:formatNumber value="${o.maxPrice}" pattern="#,##0.000"/>VNĐ/day
                                        </c:if>
                                        <c:if test="${o.minPrice != 0 && o.maxPrice != 0}">
                                            <fmt:formatNumber value="${o.minPrice}" pattern="#,##0.000"/> - <fmt:formatNumber value="${o.maxPrice}" pattern="#,##0.000"/>VNĐ/day
                                        </c:if>

                                        <c:if test="${o.maxPrice == 0}">
                                            <fmt:formatNumber value="${o.minPrice}" pattern="#,##0.000"/>VNĐ/day trở lên
                                        </c:if>
                                    </p>
                                </button>
                            </c:forEach>
                            <div class="btn-filter-group open">
                                <button onclick="closeOptions('priceOptions')">Đóng</button>
                                <button onclick="showResults()">Xem kết quả</button>
                            </div>
                        </div>
                    </div>

                    <div class="filter-group">
                        <button class="filter-button" onclick="toggleOptions('brandOptions')">Hãng</button>
                        <div class="filter-options" id="brandOptions">
                            <c:forEach items="${listBrand}" var="o">
                                <input hidden name="brands" value="${o.brandID}" id="searchBrand">
                                <button class="button-item-option" data-id="${o.brandID}" 
                                        onclick="toggleSelection(this)">${o.brandName}</button>
                            </c:forEach>
                            <div class="btn-filter-group open">
                                <button onclick="closeOptions('brandOptions')">Đóng</button>
                                <button onclick="showResults()">Xem kết quả</button>
                            </div>
                        </div>
                    </div>

                    <div class="filter-group">
                        <button class="filter-button" onclick="toggleOptions('categoryOptions')">Loại</button>
                        <div class="filter-options" id="categoryOptions">
                            <c:forEach items="${categories}" var="o">
                                <input hidden name="categories" value="${o.categoryID}" id="searchCategory">
                                <button class="button-item-option"  data-id="${o.categoryID}" 
                                        onclick="toggleSelection(this)">${o.categoryName}</button>
                            </c:forEach>
                            <div class="btn-filter-group open">
                                <button onclick="closeOptions('categoryOptions')">Đóng</button>
                                <button onclick="showResults()">Xem kết quả</button>
                            </div>
                        </div>
                    </div>

                    <div class="filter-group">
                        <button class="filter-button" onclick="toggleOptions('massOptions')">Phân khối</button>
                        <div class="filter-options" id="massOptions">
                            <c:forEach items="${listDisplacement}" var="o">
                                <input hidden name="displacements" value="${o}" id="searchDisplacement">
                                <button class="button-item-option" data-id="${o}" 
                                        onclick="toggleSelection(this)">${o}</button>
                            </c:forEach>
                            <div class="btn-filter-group open">
                                <button onclick="closeOptions('massOptions')">Đóng</button>
                                <button onclick="showResults()">Xem kết quả</button>
                            </div>
                        </div>
                    </div>

                    <div class="filter-group">
                        <button class="filter-button" onclick="toggleOptions('needOptions')">Nhu cầu</button>
                        <div class="filter-options" id="needOptions">
                            <c:forEach items="${listDemand}" var="o">
                                <input hidden name="demands" value="${o.demandId}" id="searchDemand">
                                <button class="button-item-option" data-id="${o.demandId}" onclick="toggleSelection(this)">${o.demand}</button>
                            </c:forEach>
                            <div class="btn-filter-group open">
                                <button onclick="closeOptions('needOptions')">Đóng</button>
                                <button onclick="showResults()">Xem kết quả</button>
                            </div>
                        </div>
                    </div>

                    <div class="filter-search filter-group">
                        <form action="searchMotorcycle" method="post" class="d-flex" style="width: 100%;">
                            <input value="" name="textSearch" class="form-control me-2" type="search" placeholder="Name" aria-label="Search">
                            <button style="font-weight:bold; color: #28a745;background-image: linear-gradient(to right, #75fed9, #00ff55);border: 1px solid #00ff6f;" class="btn" type="submit">Search</button>
                        </form>
                    </div>
                </div>
                <div>
                    <button class="filter-button" onclick="showResults()">Xem kết quả</button>
                </div>
                <div class="selected-filters" id="selectedFilters">
                    <!-- Selected filters will be displayed here -->
                </div>
            </div>
        </section>

        <!-- end search -->
        <section class="ftco-section bg-light">
            <div class="container">
                <div class="row">
                    <c:if test="${not empty noResults}">
                        <div class="text-center no-results-message">
                            Không có mẫu xe nào phù hợp với tìm kiếm của bạn.
                        </div>
                    </c:if>
                    <c:forEach var="motorbike" items="${motorcycles}">
                        <div class="col-lg-4">
                            <div class="car-wrap rounded ftco-animate">
                                <div class="img rounded d-flex align-items-end"
                                     style="background-image: url('images/${motorbike.image}');">
                                </div>
                                <div class="text">
                                    <h2 class="mb-0">
                                        <a href="motorcycleDetail?id=${motorbike.motorcycleId}">${motorbike.model}</a>
                                    </h2>
                                    <div class="d-flex mb-3">
                                        <!-- Category Name -->
                                        <span class="cat">${categoryMap[motorbike.categoryID]}</span>

                                        <!-- Price -->
                                        <span class="price ml-auto">${priceMap[motorbike.priceListID]}/ngày</span>
                                    </div>
                                    <p class="d-flex mb-0 d-block">
                                        <a href="booking?motorcycleid=${motorbike.motorcycleId}" class="btn btn-primary py-2 mr-1">Book now</a>
                                        <a href="motorcycleDetail?id=${motorbike.motorcycleId}" class="btn btn-secondary py-2 ml-1">Details</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>

                </div>

                <div class="row mt-5">
                    <div class="col text-center">
                        <div class="block-27">
                            <ul class="pagination">
                                <c:forEach begin="1" end="${endP}" var="i">
                                    <li class="page-item ${currentIndex == i ? 'active' : ''}">
                                        <a class="page-link" href="motorcycle?index=${i}">${i}</a>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>

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
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
        <script src="js/google-map.js"></script>
        <script src="js/main.js"></script>
        <script>
                            function toggleOptions(id) {
                                var options = document.getElementById(id);
                                var button = options.previousElementSibling;
                                if (currentOpenOptions && currentOpenOptions !== options) {
                                    currentOpenOptions.classList.remove('show-options');
                                    currentOpenOptions.previousElementSibling.classList.remove('open');
                                }

                                options.classList.toggle('show-options');
                                button.classList.toggle('open');
                                currentOpenOptions = options.classList.contains('show-options') ? options : null;
                            }

                            function closeOptions(id) {
                                var options = document.getElementById(id);
                                options.classList.remove('show-options');
                            }

                            function toggleSelection(button) {
                                button.classList.toggle('selected');
                                updateSelectedFilters();
                            }

                            function updateSelectedFilters() {
                                var selectedButtons = document.querySelectorAll('.filter-options button.selected');
                                var selectedFilters = Array.from(selectedButtons).map(function (button) {
                                    return {
                                        text: button.textContent,
                                        group: button.closest('.filter-group').querySelector('.filter-button').textContent.trim()
                                    };
                                });
                                var selectedFiltersContainer = document.getElementById('selectedFilters');
                                selectedFiltersContainer.innerHTML = '';
                                if (selectedFilters.length > 0) {
                                    var header = document.createElement('h2');
                                    header.textContent = 'Đang lọc theo';
                                    selectedFiltersContainer.appendChild(header);
                                    var clearAllButton = document.createElement('div');
                                    clearAllButton.className = 'selected-filter';
                                    clearAllButton.innerHTML = '<span>× Bỏ chọn tất cả</span>';
                                    clearAllButton.onclick = clearAllSelections;
                                    selectedFiltersContainer.appendChild(clearAllButton);
                                }
                                selectedFilters.forEach(function (filter) {
                                    var filterDiv = document.createElement('div');
                                    filterDiv.className = 'selected-filter';
                                    filterDiv.innerHTML = '<span>' + filter.group + ': ' + filter.text + '</span><span class="remove-filter" onclick="removeSelectedFilter(this.parentElement, \'' + filter.text + '\')">&#10006;</span>';
                                    selectedFiltersContainer.appendChild(filterDiv);
                                });
                            }

                            function removeSelectedFilter(filterDiv, text) {
                                var filterOptionButtons = document.querySelectorAll('.filter-options button');
                                filterOptionButtons.forEach(function (button) {
                                    if (button.textContent === text) {
                                        button.classList.remove('selected');
                                    }
                                });
                                filterDiv.remove();
                                updateSelectedFilters();
                            }

                            function clearAllSelections() {
                                var selectedButtons = document.querySelectorAll('.filter-options button.selected');
                                selectedButtons.forEach(function (button) {
                                    button.classList.remove('selected');
                                });
                                updateSelectedFilters();
                            }
                            var currentOpenOptions = null;


                            function showResults() {
                                var selectedBrands = [];
                                var selectedCategories = [];
                                var selectedDisplacements = [];
                                var selectedDemands = [];
                                var selectedPriceRanges = [];

                                var selectedPriceButton = document.querySelectorAll('#priceOptions .button-item-option.selected');
                                selectedPriceButton.forEach(function (button) {
                                    var priceRange = button.getAttribute('data-id');
                                    if (priceRange) {
                                        selectedPriceRanges.push(priceRange);
                                    }
                                });

                                var selectedBrandButtons = document.querySelectorAll('#brandOptions .button-item-option.selected');
                                selectedBrandButtons.forEach(function (button) {
                                    var brandID = button.getAttribute('data-id');
                                    if (brandID) {
                                        selectedBrands.push(brandID);
                                    }
                                });

                                var selectedCategoryButtons = document.querySelectorAll('#categoryOptions .button-item-option.selected');
                                selectedCategoryButtons.forEach(function (button) {
                                    var categoryID = button.getAttribute('data-id');
                                    if (categoryID) {
                                        selectedCategories.push(categoryID);
                                    }
                                });

                                var selectedDisplacementButtons = document.querySelectorAll('#massOptions .button-item-option.selected');
                                selectedDisplacementButtons.forEach(function (button) {
                                    var displacement = button.getAttribute('data-id');
                                    if (displacement) {
                                        selectedDisplacements.push(displacement);
                                    }
                                });

                                var selectedDemandButtons = document.querySelectorAll('#needOptions .button-item-option.selected');
                                selectedDemandButtons.forEach(function (button) {
                                    var demandID = button.getAttribute('data-id');
                                    if (demandID) {
                                        selectedDemands.push(demandID);
                                    }
                                });

                                var url = 'searchCriteria?';
                                if (selectedBrands.length > 0) {
                                    url += 'brands=' + selectedBrands.join('&brands=') + '&';
                                }
                                if (selectedCategories.length > 0) {
                                    url += 'categories=' + selectedCategories.join('&categories=') + '&';
                                }
                                if (selectedDisplacements.length > 0) {
                                    url += 'displacements=' + selectedDisplacements.join('&displacements=') + '&';
                                }
                                if (selectedDemands.length > 0) {
                                    url += 'demands=' + selectedDemands.join('&demands=') + '&';
                                }
                                if (selectedPriceRanges.length > 0) {
                                    url += 'priceRanges=' + selectedPriceRanges.join('&priceRanges=') + '&';
                                }

                                // Remove the trailing '&'
                                url = url.slice(0, -1);

                                window.location.href = url;
                            }
        </script>
    </body>
</html>
