<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Checkout - Lanes Bootstrap 4 Portfolio Template</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    

    <!-- CSS
	============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="${path}/assets/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/assets/css/plugins/plugins.css">

    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from avobe) -->
    <!--
    <script src="assets/js/vendor/vendor.min.js"></script>
    <script src="assets/js/plugins/plugins.min.js"></script>
    -->
    <script type="text/javascript" src="${path}/assets/js/vendor/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#btn-submit").click(function () {
                var url = "${path}/submit?"
                //获取收货地址编号
                var addressId = $(":radio[name='addressId']:checked").val();
                console.log(addressId);
                url += "addressId="+addressId+"&"
                //获取商品编号
                $(":hidden[name='commodityId']").each(function () {
                    url += "commodityId="+this.value+"&"
                });
                $.ajax({
                    url:url,
                    type:"get",
                    success:function (res) {
                        if(res.success){
                            alert("下单成功");
                            location = "${path}/orders";
                        }else {
                            alert("下单失败");
                        }
                    }
                })
                return false;
            })
        })
    </script>
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
                                <h6><a href="single-product.html">Boys light blue jacket</a></h6>
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
    <div class="hamburger-area">
        <div class="btn-close-search">
            <button>
                <i class="fa fa-times" aria-hidden="true"></i>
            </button>
        </div>
        <!-- Start Main Menu -->
        <ul class="menu-primary-menu-1 responsive-manu d-block d-xl-none" id="responsive-manu">
            <li class="has-dropdown"><a href="index.html">Home</a>
                <ul class="sub-menu">
                    <li><a href="index.html"><span>Home 01</span></a></li>
                    <li><a href="index-2.html"><span>Home 02</span></a></li>
                </ul>
            </li>
            <li><a href="about.html">About</a></li>
            <li class="has-dropdown"><a href="shop.html">Shop</a>
                <ul class="sub-menu">
                    <li><a href="shop.html"><span>Shop</span></a></li>
                    <li><a href="shop-left-sidebar.html"><span>Shop Left Sidebar</span></a></li>
                    <li><a href="shop-no-sidebar.html"><span>Shop No Sidebar</span></a></li>
                    <li><a href="product-details.html"><span>Product Details</span></a></li>
                </ul>
            </li>
            <li class="has-dropdown"><a href="#">Pages</a>
                <ul class="sub-menu">
                    <li><a href="cart.html"><span>Cart</span></a></li>
                    <li><a href="checkout.html"><span>Checkout</span></a></li>
                    <li><a href="wishlist.html"><span>Wishlist</span></a></li>
                    <li><a href="compare.html"><span>Compare</span></a></li>
                    <li><a href="my-account.html"><span>My Account</span></a></li>
                    <li><a href="login-register.html"><span>Login/Register</span></a></li>
                </ul>
            </li>
            <li class="has-dropdown"><a href="blog.html">Blog</a>
                <ul class="sub-menu">
                    <li><a href="blog.html"><span>Blog</span></a></li>
                    <li><a href="blog-left-sidebar.html"><span>Blog Left Sidebar</span></a></li>
                    <li><a href="blog-details.html"><span>Blog Details</span></a></li>
                </ul>
            </li>
            <li><a href="contact.html">Contact</a></li>
        </ul>
        <!-- End Main Menu -->
    </div>
    <!-- End Hamburger -->

    <!-- Start Breadumb Area -->
    <div class="breadcumb-area ptb--100 ptb_md--100 ptb_sm--100  bg_image bg_image--3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="inner text-center">
                        <h2 class="font--40 mb--0">Checkout</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadumb Area -->
    <div class="main-wrapper">

        <!-- Checkout Page Start -->
        <div class="checkout_area pt--120 pt_md--80 pt_sm--80 pb--60 bg-color" data-bg-color="#ffffff">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Checkout Form s-->
                        <form action="#" class="checkout-form">
                            <div class="row">
                                <div class="col-lg-7 mb--20">
                                    <!-- Billing Address -->
                                    <div id="billing-form" class="mb--40">
                                        <h4 class="checkout-title">选择地址</h4>
                                        <div class="row">
                                            <c:forEach items="${requestScope.address}" var="address">
                                                <div class="col-12 mb--20">
                                                    <input value="${address.address_id}" type="radio" name="addressId">
                                                    <span>${address.addressee}</span>
                                                    <span>收件地址：${address.address}</span>
                                                    <span>${address.tel}</span>
                                                </div>
                                            </c:forEach>
                                        </div>

                                    </div>

                                    <!-- Shipping Address -->
                                    <div id="shipping-form" class="mb--40">
                                        <h4 class="checkout-title">Shipping Address</h4>

                                        <div class="row">

                                            <div class="col-md-6 col-12 mb--20">
                                                <label>First Name*</label>
                                                <input type="text" placeholder="First Name">
                                            </div>

                                            <div class="col-md-6 col-12 mb--20">
                                                <label>Last Name*</label>
                                                <input type="text" placeholder="Last Name">
                                            </div>

                                            <div class="col-md-6 col-12 mb--20">
                                                <label>Email Address*</label>
                                                <input type="email" placeholder="Email Address">
                                            </div>

                                            <div class="col-md-6 col-12 mb--20">
                                                <label>Phone no*</label>
                                                <input type="text" placeholder="Phone number">
                                            </div>

                                            <div class="col-12 mb--20">
                                                <label>Company Name</label>
                                                <input type="text" placeholder="Company Name">
                                            </div>

                                            <div class="col-12 mb--20">
                                                <label>Address*</label>
                                                <input type="text" placeholder="Address line 1">
                                                <input type="text" placeholder="Address line 2">
                                            </div>

                                            <div class="col-md-6 col-12 mb--20">
                                                <label>Country*</label>
                                                <select class="nice-select">
                                                    <option>Bangladesh</option>
                                                    <option>China</option>
                                                    <option>country</option>
                                                    <option>India</option>
                                                    <option>Japan</option>
                                                </select>
                                            </div>

                                            <div class="col-md-6 col-12 mb--20">
                                                <label>Town/City*</label>
                                                <input type="text" placeholder="Town/City">
                                            </div>

                                            <div class="col-md-6 col-12 mb--20">
                                                <label>State*</label>
                                                <input type="text" placeholder="State">
                                            </div>

                                            <div class="col-md-6 col-12 mb--20">
                                                <label>Zip Code*</label>
                                                <input type="text" placeholder="Zip Code">
                                            </div>

                                        </div>

                                    </div>

                                </div>

                                <div class="col-lg-5">
                                    <div class="row">

                                        <!-- Cart Total -->
                                        <div class="col-12 mb--60">

                                            <h4 class="checkout-title">购物清单</h4>

                                            <div class="checkout-cart-total">

                                                <h4>Product<span>Total</span><span>*</span><span>Quantity</span></h4>

                                                <ul>
                                                    <c:forEach items="${requestScope.commodities}" var="commodity">
                                                        <li>
                                                            <input type="hidden" name="commodityId" value="${commodity.commodity_id}">
                                                                ${commodity.commodity_name}
                                                            <span>￥${commodity.price}</span>
                                                            <span>*</span>
                                                            <span>${commodity.num}件</span>
                                                        </li>
                                                    </c:forEach>

                                                </ul>

                                                <p>Sub Quantity <span>${requestScope.total.total_num}件</span></p>

                                                <h4>Sub Total <span>${requestScope.total.total_price}元</span></h4>

                                            </div>

                                        </div>

                                        <!-- Payment Method -->

                                            <button id="btn-submit" class="place-order">提交订单</button>

                                        </div>

                                    </div>
                                </div>
                        </form>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Checkout Page End -->

    </div>

    <!-- Quick View Modal -->
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
<%--
    <script src="${path}/assets/js/vendor/jquery.js"></script>
--%>
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
