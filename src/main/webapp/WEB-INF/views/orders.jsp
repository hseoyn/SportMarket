<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Cart - Lanes Bootstrap 4 Portfolio Template</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    

    <!-- CSS
	============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${path}/assets/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/assets/css/plugins/plugins.css">
    <script type="text/javascript" src="${path}/assets/js/vendor/jquery-1.8.3.min.js"></script>

    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->
    <!--
    <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
    -->

    <!-- Main Style CSS (Please use minify version for better website load performance) -->
    <link rel="stylesheet" href="${path}/assets/css/style.css">
    <!--<link rel="stylesheet" href="assets/css/style.min.css">-->

</head>

<body>


    <!-- Start Header -->
    <%@include file="_header.jsp"%>
    <!-- Start Header -->

    <!-- Start Search Flyover -->
    <div class="search-flyoveray"></div>
    <div class="cart-flyout">
        <div class="cart-flyout-inner">
            <a class="btn-close-cart" href="#">
                <i class="fa fa-times"></i>
            </a>
            <div class="cart-flyout__content">
                <div class="cart-flyout__heading">Shopping Cart</div>
                <div class="widget_shopping_cart_content">
                    <ul class="product_list_widget">
                        <li>
                            <div class="thumb">
                                <img src="${path}/assets/images/product/sm-product-01.jpg" alt="product">
                            </div>
                            <div class="content">
                                <h6><a href="single-product.html">Boys light blue jacket</a></h6>
                                <div class="quntity">1 × $35.99</div>
                                <button class="remove-btn">×</button>
                            </div>
                        </li>

                        <li>
                            <div class="thumb">
                                <img src="${path}/assets/images/product/sm-product-02.jpg" alt="product">
                            </div>
                            <div class="content">
                                <h6><a href="${path}/single-product.html">Boys light blue jacket</a></h6>
                                <div class="quntity">1 × $35.99</div>
                                <button class="remove-btn">×</button>
                            </div>
                        </li>

                        <li>
                            <div class="thumb">
                                <img src="${path}/assets/images/product/sm-product-03.jpg" alt="product">
                            </div>
                            <div class="content">
                                <h6><a href="single-product.html">Boys light blue jacket</a></h6>
                                <div class="quntity">1 × $35.99</div>
                                <button class="remove-btn">×</button>
                            </div>
                        </li>

                    </ul>
                </div>
                <p class="minicart__total">Subtotal: <span class="price">164.97</span></p>
                <div class="cart__btn">
                    <a href="cart.html">View cart</a>
                    <a href="checkout.html">Checkout</a>
                </div>
            </div>
        </div>
    </div>
    <!-- End Search Flyover -->
    <!-- Start Hamburger -->

    <!-- End Hamburger -->

    <!-- Start Breadumb Area -->
    <div class="breadcumb-area ptb--100 ptb_md--100 ptb_sm--100  bg_image bg_image--3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner text-center">
                        <h2 class="font--40 mb--0">Orders</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadumb Area -->
    <div class="main-wrapper">

        <!-- Cart Page Start -->
        <div class="cart_area pt--120 pb--80 bg-color pt_md--80 pt_sm--80" data-bg-color="#ffffff">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <form action="#">
                            <!-- Cart Table -->
                            <div class="cart-table table-responsive mb--40">
                                <table class="table">
                                    <c:forEach items="${requestScope.orders}" var="orders">
                                        <thead>
                                        <tr>
                                            <th class="pro-thumbnail">订单号:${orders.orders_id}</th>
                                            <th class="pro-title">下单时间:<fmt:formatDate value="${orders.add_time}" type="both"></fmt:formatDate> </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${orders.commodity}" var="commodity" varStatus="status">
                                            <tr>
                                                <td class="pro-thumbnail"><a href="#"><img src="${path}/${commodity.image_url}" alt="Product"></a></td>
                                                <td class="pro-title">${commodity.commodity_name}</td>
                                                <td class="pro-price"><span>${commodity.num}</span></td>
                                                <td class="pro-quantity">
                                                    <fmt:formatNumber value="${commodity.price}" type="CURRENCY"></fmt:formatNumber>
                                                </td>
                                                <c:if test="${status.first}">
                                                    <td class="pro-subtotal" rowspan="${fn:length(orders.commodity)}">
                                                            ${orders.address.addressee}<br>
                                                            ${orders.address.tel}<br>
                                                            ${orders.address.address}<br>
                                                    </td>
                                                    <td class="pro-remove" rowspan="${fn:length(orders.commodity)}">
                                                        总金额：<br>
                                                        <fmt:formatNumber value="${orders.totalPrice}" type="CURRENCY"></fmt:formatNumber>
                                                    </td>
                                                </c:if>
                                            </tr>
                                        </c:forEach>
                                        </tbody>
                                    </c:forEach>
                                </table>
                            </div>
                        </form>


                    <!--// Product Details Left -->

                    <!-- Product Details Right -->

    <!--// Quick View Modal -->
    <!-- Start Footer Area -->
    <footer class="footer-area bg-color plr--100 plr_lg--40 plr_md--30 plr_sm--30 clearfix" data-bg-color="#f4f8fa">
        <!-- Start Footer Top -->
        <div class="footer-top ptb--80">
            <div class="row">
                <div class="col-custom--5">
                    <div class="footer-widget">
                        <div class="logo">
                            <a href="index.html">
                                <img src="${path}/assets/images/logo/logo-black.png" alt="Logo">
                            </a>
                        </div>
                        <div class="inner">
                            <p>On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms. </p>
                        </div>
                    </div>
                </div>
                <div class="col-custom--5 mt_mobile--40">
                    <div class="footer-widget">
                        <h5 class="title">Company</h5>
                        <div class="inner">
                            <ul class="ft-link">
                                <li><a href="#">About US</a></li>
                                <li><a href="#">Blogs</a></li>
                                <li><a href="#">Careers</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-custom--5 mt_md--40 mt_sm--40">
                    <div class="footer-widget">
                        <h5 class="title">Product</h5>
                        <div class="inner">
                            <ul class="ft-link">
                                <li><a href="#">Pricing</a></li>
                                <li><a href="#">Features</a></li>
                                <li><a href="#">Customers</a></li>
                                <li><a href="#">Demos</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-custom--5 mt_md--40 mt_sm--40">
                    <div class="footer-widget">
                        <h5 class="title">Helps</h5>
                        <div class="inner">
                            <ul class="ft-link">
                                <li><a href="#">Introduction</a></li>
                                <li><a href="#">Feedback</a></li>
                                <li><a href="#">Referrals</a></li>
                                <li><a href="#">Network Status</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-custom--5 mt_md--40 mt_sm--40">
                    <div class="footer-widget">
                        <h5 class="title">Social Netowrk</h5>
                        <div class="inner">
                            <ul class="ft-link">
                                <li><a href="#">Facebook</a></li>
                                <li><a href="#">Twitter</a></li>
                                <li><a href="#">Linkedin</a></li>
                                <li><a href="#">Google +</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Footer Top -->
        <!-- Start Footer Middle -->
        <div class="footer-middle">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-middle-inner ptb--45 text-center">
                            <div class="tags-list">
                                <span>Tags :</span>
                                <div class="tags">
                                    <a href="#">Minimal eCommerce</a>
                                    <a href="#">Marketing</a>
                                    <a href="#">User Exprience</a>
                                    <a href="#">Ali Express</a>
                                    <a href="#">Web</a>
                                    <a href="#">Digital Expo</a>
                                    <a href="#">Web Search</a>
                                    <a href="#">Affiliate</a>
                                    <a href="#">UCWeb</a>
                                    <a href="#">Support</a>
                                    <a href="#">Theme</a>
                                    <a href="#">Best Queality</a>
                                    <a href="#">Mobile</a>
                                    <a href="#">24 Support</a>
                                    <a href="#">Ali Express</a>
                                    <a href="#">Web</a>
                                    <a href="#">Laptop</a>
                                    <a href="#">Web Search</a>
                                    <a href="#">Affiliate</a>
                                    <a href="#">Photoshop</a>
                                    <a href="#">Support</a>
                                    <a href="#">Theme</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Footer Middle -->
        <!-- Start Copyright -->
        <div class="copyright-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="copyright-inner ptb--25 text-center">
                            <p class="mb--0">Copyright © All Right <a href="http://www.bootstrapmb.com/" title="bootstrapmb">Reserved</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Copyright -->
    </footer>
    <!-- End Footer Area -->















    <!-- JS
============================================ -->

    <!-- Modernizer JS -->
    <script src="${path}/assets/js/vendor/modernizr.min.js"></script>
    <!-- jQuery JS -->
    <script src="${path}/assets/js/vendor/jquery.js"></script>
    <!-- Bootstrap JS -->
    <script src="${path}/assets/js/vendor/bootstrap.min.js"></script>
    <script src="${path}/assets/js/plugins/plugins.js"></script>
    <!-- Vendor & Plugins JS (Please remove the comment from below vendor.min.js & plugins.min.js for better website load performance and remove js files from avobe) -->
    <!--
<script src="assets/js/vendor/vendor.min.js"></script>
<script src="assets/js/plugins/plugins.min.js"></script>
-->

    <!-- Main JS -->
    <script src="${path}/assets/js/main.js"></script>

</body>

</html>
