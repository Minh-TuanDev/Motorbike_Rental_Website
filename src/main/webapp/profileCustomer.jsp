<%-- 
    Document   : profileCus
    Created on : 30 thg 5, 2024, 21:04:50
    Author     : MINH TUAN
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.Date" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">


        <title>bs4 profile settings page - Bootdey.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
        <style type="text/css">
            body {
                background: #eee;
            }

            .widget-author {
                margin-bottom: 58px;
            }

            .author-card {
                position: relative;
                padding-bottom: 48px;
                background-color: #fff;
                box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .09);
            }

            .author-card .author-card-cover {
                position: relative;
                width: 100%;
                height: 100px;
                background-position: center;
                background-repeat: no-repeat;
                background-size: cover;
            }

            .author-card .author-card-cover::after {
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                content: '';
                opacity: 0.5;
            }

            .author-card .author-card-cover>.btn {
                position: absolute;
                top: 12px;
                right: 12px;
                padding: 0 10px;
            }

            .author-card .author-card-profile {
                display: table;
                position: relative;
                margin-top: -22px;
                padding-right: 15px;
                padding-bottom: 16px;
                padding-left: 20px;
                z-index: 5;
            }

            .author-card .author-card-profile .author-card-avatar,
            .author-card .author-card-profile .author-card-details {
                display: table-cell;
                vertical-align: middle;
            }

            .author-card .author-card-profile .author-card-avatar {
                width: 85px;
                border-radius: 50%;
                box-shadow: 0 8px 20px 0 rgba(0, 0, 0, .15);
                overflow: hidden;
            }

            .author-card .author-card-profile .author-card-avatar>img {
                display: block;
                width: 100%;
            }

            .author-card .author-card-profile .author-card-details {
                padding-top: 20px;
                padding-left: 15px;
            }

            .author-card .author-card-profile .author-card-name {
                margin-bottom: 2px;
                font-size: 14px;
                font-weight: bold;
            }

            .author-card .author-card-profile .author-card-position {
                display: block;
                color: #8c8c8c;
                font-size: 12px;
                font-weight: 600;
            }

            .author-card .author-card-info {
                margin-bottom: 0;
                padding: 0 25px;
                font-size: 13px;
            }

            .author-card .author-card-social-bar-wrap {
                position: absolute;
                bottom: -18px;
                left: 0;
                width: 100%;
            }

            .author-card .author-card-social-bar-wrap .author-card-social-bar {
                display: table;
                margin: auto;
                background-color: #fff;
                box-shadow: 0 12px 20px 1px rgba(64, 64, 64, .11);
            }

            .btn-style-1.btn-white {
                background-color: #fff;
            }

            .list-group-item i {
                display: inline-block;
                margin-top: -1px;
                margin-right: 8px;
                font-size: 1.2em;
                vertical-align: middle;
            }

            .mr-1,
            .mx-1 {
                margin-right: .25rem !important;
            }

            .list-group-item.active:not(.disabled) {
                border-color: #e7e7e7;
                background: #fff;
                color: #ac32e4;
                cursor: default;
                pointer-events: none;
            }

            .list-group-flush:last-child .list-group-item:last-child {
                border-bottom: 0;
            }

            .list-group-flush .list-group-item {
                border-right: 0 !important;
                border-left: 0 !important;
            }

            .list-group-flush .list-group-item {
                border-right: 0;
                border-left: 0;
                border-radius: 0;
            }

            .list-group-item.active {
                z-index: 2;
                color: #fff;
                background-color: #007bff;
                border-color: #007bff;
            }

            .list-group-item:last-child {
                margin-bottom: 0;
                border-bottom-right-radius: .25rem;
                border-bottom-left-radius: .25rem;
            }

            a.list-group-item,
            .list-group-item-action {
                color: #404040;
                font-weight: 600;
            }

            .list-group-item {
                padding-top: 16px;
                padding-bottom: 16px;
                -webkit-transition: all .3s;
                transition: all .3s;
                border: 1px solid #e7e7e7 !important;
                border-radius: 0 !important;
                color: #404040;
                font-size: 12px;
                font-weight: 600;
                letter-spacing: .08em;
                text-transform: uppercase;
                text-decoration: none;
            }

            .list-group-item {
                position: relative;
                display: block;
                padding: .75rem 1.25rem;
                margin-bottom: -1px;
                background-color: #fff;
                border: 1px solid rgba(0, 0, 0, 0.125);
            }

            .list-group-item.active:not(.disabled)::before {
                background-color: #ac32e4;
            }

            .list-group-item::before {
                display: block;
                position: absolute;
                top: 0;
                left: 0;
                width: 3px;
                height: 100%;
                background-color: transparent;
                content: '';
            }

            .input-with-button {
                position: relative;
                display: flex;
                align-items: center;
            }

            .input-with-button input {
                padding-right: 80px;
            }

            .input-with-button button {
                position: absolute;
                right: 10px;
                padding: 5px 10px;
                font-size: 12px;
                height: calc(100% - 10px);
                top: 5px;
            }
        </style>
    </head>

    <body>
        <c:if test="${not empty sessionScope.account}">
            <div class="container mt-5">
                <div class="row">
                    <div class="col-lg-4 pb-5">

                        <div class="author-card pb-3">
                            <div class="author-card-cover"
                                 style="background-image: url(https://bootdey.com/img/Content/flores-amarillas-wallpaper.jpeg);"><a
                                    class="btn btn-style-1 btn-white btn-sm" href="#" data-toggle="tooltip" title
                                    data-original-title="You currently have 290 Reward points to spend"><i
                                        class="fa fa-award text-md"></i>&nbsp;290 points</a></div>
                            <div class="author-card-profile">
                                <div class="author-card-avatar"><img src="images/${account.image}"
                                                                     alt="${account.lastName}">
                                </div>
                                <div class="author-card-details">
                                    <h5 class="author-card-name text-lg">${account.firstName} ${account.lastName}</h5><span class="author-card-position">Joined February
                                        06, 2017</span>
                                </div>
                            </div>
                        </div>
                        <div class="wizard">
                            <nav class="list-group list-group-flush">
                                <a class="list-group-item" href="bookingHistory.jsp">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div><i class="fe-icon-shopping-bag mr-1 text-muted"></i>
                                            <div class="d-inline-block font-weight-medium text-uppercase">Lịch sử thuê xe</div>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item active" href="profileCustomer.jsp"><i class="fe-icon-user text-muted"></i>Thông tin cá nhân</a>
                                <a class="list-group-item" href="#"><i class="fe-icon-map-pin text-muted"></i>Mã giảm giá</a>
                                <a class="list-group-item" href="https://www.bootdey.com/snippets/view/bs4-wishlist-profile-page" target="__blank">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div><i class="fe-icon-heart mr-1 text-muted"></i>
                                            <div class="d-inline-block font-weight-medium text-uppercase">My Wishlist</div>
                                        </div>
                                    </div>
                                </a>
                                <a class="list-group-item" href="https://www.bootdey.com/snippets/view/bs4-account-tickets" target="__blank">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div><i class="fe-icon-tag mr-1 text-muted"></i>
                                            <div class="d-inline-block font-weight-medium text-uppercase">My Tickets</div>
                                        </div>
                                    </div>
                                </a>
                            </nav>
                        </div>

                    </div>
                    <div class="col-lg-8 pb-5">
                        <form action="updateprofile" method="post" id="form-update" class="row">
                            <input hidden name="accountID" value="${account.accountId}">

                            <div id="account-fullname" class="col-md-12">
                                <div class="form-group">
                                    <label for="account-fullname">Họ và tên</label>
                                    <input style="border: 1px solid #000;" class="form-control" name="fullname" type="text" id="account-fullname" value="${account.firstName} ${account.lastName}" readonly>
                                </div>
                            </div>

                            <div id="account-firstname" style="display: none;" class="col-md-6">
                                <div class="form-group">
                                    <label for="account-firstname">Họ, Tên đệm</label>
                                    <input style="border: 1px solid #000;" class="form-control" name="firstname" type="text" id="account-firstname" value="${account.firstName}">
                                </div>
                            </div>
                            <div id="account-lastname" style="display: none;" class="col-md-6">
                                <div class="form-group">
                                    <label for="account-lastname">Tên</label>
                                    <input style="border: 1px solid #000;" class="form-control" name="lastname" type="text" id="account-lastname" value="${account.lastName}">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="account-email">Email</label>
                                    <input style="border: 1px solid #000;" class="form-control" name="email" type="email" id="account-email" value="${account.email}" readonly>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="account-address">Địa chỉ</label>
                                    <input style="border: 1px solid #000;" class="form-control" name="address" type="text" id="account-address" value="${account.address}" readonly>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="account-gender">Giới tính</label>
                                    <select style="border: 1px solid #000;" class="form-control" name="gender" id="account-gender" disabled>
                                        <option value='Nam' ${account.gender == "Nam" ? 'selected' : ''}>Nam</option>
                                        <option value='Nữ' ${account.gender == "Nữ" ? 'selected' : ''}>Nữ</option>
                                        <option value='Không muốn tiết lộ' ${account.gender == "Không muốn tiết lộ" ? 'selected' : ''}>Không muốn tiết lộ</option>
                                    </select>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="account-phone">Phone Number</label>
                                    <input style="border: 1px solid #000;" class="form-control" name="phonenumber" type="text" id="account-phone" value="${account.phoneNumber}" readonly>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="account-dob">Day of Birth</label>
                                    <input style="border: 1px solid #000;" class="form-control" name="dob" type="date" id="account-dob" value="${account.dob}" readonly>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="account-username">Username</label>
                                    <input style="border: 1px solid #000;" class="form-control" name="username" type="text" id="account-username" value="${account.userName}" readonly>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="account-password">Password</label>
                                    <div class="input-with-button">
                                        <input style="border: 1px solid #000;" class="form-control" name="pass" type="password" id="account-password" value="${account.passWord}" readonly>
                                        <button class="btn btn-style-1 btn-primary" type="button" data-toast data-toast-position="topRight" data-toast-type="success" data-toast-icon="fe-icon-check-circle" data-toast-title="Success!" data-toast-message="Your profile updated successfully." style="background-color: grey;" onclick="window.location.href = 'changepassword.jsp'">Change Password</button>
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <hr class="mt-2 mb-3">
                                <button onclick="changeType(this)" id="update" class="btn btn-style-1 btn-primary" 
                                        type="button">Update Profile</button>
                                <c:if test="${not empty requestScope.mess}">
                                    <h6 style="color: green; padding-top: 12px;">${mess}</h6>
                                </c:if>
                                <c:if test="${not empty requestScope.errorProfile}">
                                    <h6 style="color: red; padding-top: 12px;">${requestScope.errorProfile}</h6>
                                </c:if>

                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </c:if>

        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.1/dist/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript">
                                    function changeType(button) {
                                        var inputElements = document.querySelectorAll(".form-control");

                                        if (button.id === "update") {
                                            button.id = "save";
                                            button.textContent = "Save";
                                            inputElements.forEach(x => {
                                                if (x.name !== "pass" && x.id !== "account-fullname") {
                                                    x.readOnly = false;
                                                }
                                            });
                                            document.getElementById('account-gender').disabled = false;
                                            document.getElementById('account-firstname').style.display = 'block';
                                            document.getElementById('account-lastname').style.display = 'block';
                                            document.getElementById('account-fullname').style.display = 'none';
                                        } else {
                                            document.getElementById("form-update").submit();
                                            button.id = "update";
                                            button.textContent = "Update Profile";

                                            inputElements.forEach(x => {
                                                if (x.name !== "pass") {
                                                    x.readOnly = true;
                                                }
                                            });
                                            document.getElementById('account-gender').disabled = true;
                                            document.getElementById('account-firstname').style.display = 'none';
                                            document.getElementById('account-lastname').style.display = 'none';
                                            document.getElementById('account-fullname').style.display = 'block';
                                        }
                                    }


        </script>
    </body>

</html>
