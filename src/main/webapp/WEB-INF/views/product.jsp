﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Product Details - Lanes Bootstrap 4 Portfolio Template</title>
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

    <script src="${path}/assets/js/vendor/vendor.min.js"></script>
    <script src="${path}/assets/js/plugins/plugins.min.js"></script>
    <script type="text/javascript" src="${path}/assets/js/vendor/jquery-1.8.3.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#add2cart").click(function () {
            //         获取商品编号、数量
              var commodityId = "${param.commodityId}";
              var num = $("input[name='num']").val();
            //  发起请求，添加商品到购物车
                $.ajax({
                    url:"${path}/add2Cart",
                    type:"get",
                    data:{
                        commodityId:commodityId,
                        num:num
                    },
                    success:function (res) {
                        if(res.success){
                            alert("添加成功")
                        }else {
                            alert("添加失败")
                        }
                    }
                })
            });
        });
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
                                <img src="assets/images/product/sm-product-01.jpg" alt="product">
                            </div>
                            <div class="content">
                                <h6><a href="single-product.html">Boys light blue jacket</a></h6>
                                <div class="quntity">1 × $35.99</div>
                                <button class="remove-btn">×</button>
                            </div>
                        </li>

                        <li>
                            <div class="thumb">
                                <img src="assets/images/product/sm-product-02.jpg" alt="product">
                            </div>
                            <div class="content">
                                <h6><a href="single-product.html">Boys light blue jacket</a></h6>
                                <div class="quntity">1 × $35.99</div>
                                <button class="remove-btn">×</button>
                            </div>
                        </li>

                        <li>
                            <div class="thumb">
                                <img src="assets/images/product/sm-product-03.jpg" alt="product">
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
                        <h2 class="font--40 mb--0">Product Details</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Breadumb Area -->

    <div class="main-wrapper">
        <!-- Start Single Product -->
        <div class="brook-single-product plr--160 plr_lg--100 plr_md--50 plr_sm--50">
            <div class="single-product-wrapper ptb--120">
                <div class="row">
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                        <div class="single-product-left-side">
                            <div class="product__details__container">
                                <div class="tab_container big_img_container">
                                    <div class="big_img tab-pane fade show active" id="img1" role="tabpanel">
                                        <img class="w-100" src="${path}/${requestScope.commodity.image_url}" alt="gomes restaurant">
                                    </div>

                                </div>
                                <div class="sm_roduct_nav nav nav-tabs" role="tablist">
<%--                                    <a class="active" id="img1-tab" data-toggle="tab" href="#img1" role="tab" aria-controls="img1" aria-selected="true">--%>
<%--                                        <img src="assets/images/product/1.jpg" alt="gomes restaurant">--%>
<%--                                    </a>--%>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 col-12 mt_sm--40">
                        <div class="single-product-details-side">
                            <div class="product-details">
                                <div class="inner">
                                    <div class="header">
                                        <div class="product-badges">
                                            <span>Hot</span>
                                        </div>
                                        <h4 class="heading heading-h4">${requestScope.commodity.commodity_name}</h4>
                                    </div>

                                    <div class="price">
                                        <p class="theme-color">${requestScope.commodity.price}</p>
                                    </div>

                                    <div class="description">
                                        <div class="bk_pra">商品编号：${requestScope.commodity.commodity_id}</div>
                                        <div class="bk_pra">品牌：${requestScope.commodity.brand.brand_name}</div>
                                        <div class="bk_pra">分类：${requestScope.commodity.type.type_name}</div>
                                        <div class="bk_pra">库存：${requestScope.commodity.stock}</div>
                                        <div class="bk_pra">销量：${requestScope.commodity.sale}</div>
                                    </div>

                                    <div class="quenty-container">
                                        <div class="quenty-button">
                                            <h6 class="heading heading-h6">QUANTITY</h6>
                                            <input type="number" class="input-text qty text" step="1" min="1" name="num" value="1" title="Qty" size="4">
                                        </div>

                                        <div class="product-action">
                                            <a id="add2cart" class="addtocart" ><i
                                                    class="fa fa-cart-arrow-down"></i><span>添加购物车</span></a>
                                            <a class="wislist" href="cart.html"></a>
                                        </div>
                                    </div>

                                    <div class="product-meta">
                                        <div class="meta-item">
                                            <h6 class="heading heading-h6">CATEGORY:</h6>
                                            <div class="item-list">
                                                <a href="#">Design,</a>
                                                <a href="#">shirt,</a>
                                                <a href="#">Red,</a>
                                                <a href="#">Business,</a>
                                            </div>
                                        </div>
                                        <div class="meta-item">
                                            <h6 class="heading heading-h6">TAG:</h6>
                                            <div class="item-list">
                                                <a href="#">standard,</a>
                                                <a href="#">business,</a>
                                                <a href="#">multipurpose,</a>
                                                <a href="#">createtive,</a>
                                                <a href="#">clean,</a>
                                                <a href="#">themplate,</a>
                                                <a href="#">theme,</a>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Single Product -->

        <!-- Start Product Review -->
        <div class="product_review pb--80 pb_md--80 pb_sm--60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="description_nav nav nav-tabs d-block" role="tablist">
                            <a class="active" id="descrip-tab" data-toggle="tab" href="#descrip" role="tab" aria-controls="descrip" aria-selected="true">Description</a>
                            <a id="nav-review" data-toggle="tab" href="#review" role="tab" aria-controls="review" aria-selected="false">Reviews</a>
                        </div>
                    </div>
                </div>
                <div class="tab_container">
                    <div class="single_review_content tab-pane fade show active" id="descrip" role="tabpanel">
                        <div class="content">
                            <p>On the other hand, we denounce with righteous indignation and dislike men who are so
                                beguiled and demoralized by the charms. On the other hand, we denounce with righteous
                                indignation and dislike men who are so beguiled and demoralized by the charms. </p>
                        </div>
                    </div>
                    <div class="single_review_content tab-pane fade" id="review" role="tabpanel">
                        <div class="classs__review__inner">
                            <h4>Be the first to review “Gold Plated Desk Lantern Lamp”</h4>
                            <p>Your E-mail Address Will not be published. Required field are marked *</p>
                            <span>Your rating</span>
                            <ul class="rating">
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i> </li>
                                <li><i class="fa fa-star"></i></li>
                                <li><i class="fa fa-star"></i></li>
                            </ul>
                            <form action="#">
                                <div class="input__box">
                                    <span>Your Review *</span>
                                    <textarea name="message"></textarea>
                                </div>
                                <div class="input__box">
                                    <span>Name*</span>
                                    <input type="text">
                                </div>
                                <div class="input__box">
                                    <span>E-mail*</span>
                                    <input type="email">
                                </div>
                                <div class="submit__btn2 mt--30">
                                    <a class="product-btn" href="#">Post
                                        Comment</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Product Review -->
        <!-- Start Product Area -->
        <div class="feature-product-area bg-color pb--120 pb_md--80 pb_sm--80" data-bg-color="#fff">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="section-title text-center">
                            <h2 class="title">Related Products</h2>
                            <img src="assets/images/logo/shape.png" alt="Shape Images">
                        </div>
                    </div>
                </div>
                <div class="row mt--20">
                    <!-- Start Single Product -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12 mt--30">
                        <div class="product">
                            <div class="inner">
                                <div class="thumbnail">
                                    <a href="product-details.html">
                                        <img src="assets/images/product/product-01.jpg" alt="Product Images">
                                    </a>
                                </div>
                                <div class="product-hover-action">
                                    <div class="hover-inner">
                                        <a title="Quick View" class="quickview" href="#"><i class="fa fa-search"></i></a>
                                        <a href="cart.html"><i class="fa fa-cart-plus"></i></a>
                                        <a href="wishlist.html"><i class="fa fa-heart-o"></i></a>
                                        <a href="compare.html"><i class="fa fa-repeat"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="content">
                                <h2><a href="product-details.html">Variable product</a></h2>
                                <span class="prize">$200.00</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->

                    <!-- Start Single Product -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12 mt--30">
                        <div class="product">
                            <div class="inner">
                                <div class="thumbnail">
                                    <a href="product-details.html">
                                        <img src="assets/images/product/product-02.jpg" alt="Product Images">
                                    </a>
                                </div>
                                <div class="product-hover-action">
                                    <div class="hover-inner">
                                        <a title="Quick View" class="quickview" href="#"><i class="fa fa-search"></i></a>
                                        <a href="cart.html"><i class="fa fa-cart-plus"></i></a>
                                        <a href="wishlist.html"><i class="fa fa-heart-o"></i></a>
                                        <a href="compare.html"><i class="fa fa-repeat"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="content">
                                <h2><a href="product-details.html">Variable product</a></h2>
                                <span class="prize">$190.00</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->

                    <!-- Start Single Product -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12 mt--30">
                        <div class="product">
                            <div class="inner">
                                <div class="thumbnail">
                                    <a href="product-details.html">
                                        <img src="assets/images/product/product-03.jpg" alt="Product Images">
                                    </a>
                                </div>
                                <div class="product-hover-action">
                                    <div class="hover-inner">
                                        <a title="Quick View" class="quickview" href="#"><i class="fa fa-search"></i></a>
                                        <a href="cart.html"><i class="fa fa-cart-plus"></i></a>
                                        <a href="wishlist.html"><i class="fa fa-heart-o"></i></a>
                                        <a href="compare.html"><i class="fa fa-repeat"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="content">
                                <h2><a href="product-details.html">Open Front Cardigan</a></h2>
                                <span class="prize">$180.00</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->

                    <!-- Start Single Product -->
                    <div class="col-lg-3 col-md-6 col-sm-6 col-12 mt--30">
                        <div class="product">
                            <div class="inner">
                                <div class="thumbnail">
                                    <a href="product-details.html">
                                        <img src="assets/images/product/product-04.jpg" alt="Product Images">
                                    </a>
                                </div>
                                <div class="product-hover-action">
                                    <div class="hover-inner">
                                        <a title="Quick View" class="quickview" href="#"><i class="fa fa-search"></i></a>
                                        <a href="cart.html"><i class="fa fa-cart-plus"></i></a>
                                        <a href="wishlist.html"><i class="fa fa-heart-o"></i></a>
                                        <a href="compare.html"><i class="fa fa-repeat"></i></a>
                                    </div>
                                </div>
                            </div>
                            <div class="content">
                                <h2><a href="product-details.html">Sample Bundle Product</a></h2>
                                <span class="prize">$170.00</span>
                            </div>
                        </div>
                    </div>
                    <!-- End Single Product -->

                </div>
            </div>
        </div>
        <!-- End Product Area -->

    </div>

    <!-- Quick View Modal -->
    <div class="quick-view-modal">
        <div class="quick-view-modal-inner">
            <div class="container">
                <div class="product-details">
                    <!-- Product Details Left -->
                    <div class="product-details-left">
                        <div class="product-details-images slider-navigation-2">
                            <a href="#">
                                <img class="w-100" src="assets/images/product/product-01.jpg" alt="product image">
                            </a>
                            <a href="#">
                                <img class="w-100" src="assets/images/product/product-02.jpg" alt="product image">
                            </a>
                            <a href="#">
                                <img class="w-100" src="assets/images/product/product-03.jpg" alt="product image">
                            </a>
                            <a href="#">
                                <img class="w-100" src="assets/images/product/product-04.jpg" alt="product image">
                            </a>
                            <a href="#">
                                <img class="w-100" src="assets/images/product/product-05.jpg" alt="product image">
                            </a>
                        </div>
                        <div class="product-details-thumbs slider-navigation-2">
                            <img src="assets/images/product/product-01.jpg" alt="product image thumb">
                            <img src="assets/images/product/product-02.jpg" alt="product image thumb">
                            <img src="assets/images/product/product-03.jpg" alt="product image thumb">
                            <img src="assets/images/product/product-04.jpg" alt="product image thumb">
                            <img src="assets/images/product/product-05.jpg" alt="product image thumb">
                        </div>
                    </div>
                    <!--// Product Details Left -->

                    <!-- Product Details Right -->
                    <div class="product-details-right">
                        <h5 class="product-title">Demo Product Name</h5>

                        <div class="ratting-stock-availbility">
                            <div class="ratting-box">
                                <span><i class="fa fa-star"></i></span>
                                <span><i class="fa fa-star"></i></span>
                                <span><i class="fa fa-star"></i></span>
                                <span><i class="fa fa-star"></i></span>
                                <span><i class="fa fa-star"></i></span>
                            </div>
                            <span class="stock-available">In stock</span>
                        </div>

                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam fringilla augue nec est
                            tristique auctor. Donec non est at libero vulputate rutrum. Morbi ornare lectus quis
                            justo gravida semper. Nulla tellus mi, vulputate adipiscing cursus eu, suscipit id
                            nulla. adipiscing cursus eu, suscipit id nulla.</p>

                        <div class="price-box">
                            <span class="pricebox-price">£80.00</span>
                        </div>

                        <div class="product-details-quantity">
                            <div class="quantity-select">
                                <div class="pro-quantity">
                                    <div class="pro-qty"><input type="text" value="1"></div>
                                </div>
                            </div>
                            <a href="#" class="add-to-cart-button">
                                <span>ADD TO CART</span>
                            </a>
                        </div>

                        <div class="product-details-color">
                            <span>Color :</span>
                            <ul>
                                <li class="red"><span></span></li>
                                <li class="green checked"><span></span></li>
                                <li class="blue"><span></span></li>
                                <li class="black"><span></span></li>
                            </ul>
                        </div>

                        <div class="product-details-size">
                            <span>Size :</span>
                            <ul>
                                <li class="checked"><span>S</span></li>
                                <li><span>M</span></li>
                                <li><span>L</span></li>
                                <li><span>XL</span></li>
                                <li><span>XXL</span></li>
                            </ul>
                        </div>

                        <div class="product-details-categories">
                            <span>Categories :</span>
                            <ul>
                                <li><a href="shop.html">Accessories</a></li>
                                <li><a href="shop.html">Kids</a></li>
                                <li><a href="shop.html">Women</a></li>
                            </ul>
                        </div>

                        <div class="product-details-tags">
                            <span>Tags :</span>
                            <ul>
                                <li><a href="shop.html">Electronic</a></li>
                                <li><a href="shop.html">Television</a></li>
                            </ul>
                        </div>

                        <div class="product-details-socialshare">
                            <span>Share :</span>
                            <ul>
                                <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a class="google-plus" href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a class="instagram" href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <!--// Product Details Right -->

                </div>
            </div>
        </div>
        <button class="close-quickview-modal"><i class="fa fa-close"></i></button>
    </div>
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
                                <img src="assets/images/logo/logo-black.png" alt="Logo">
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
    <script src="assets/js/vendor/modernizr.min.js"></script>
    <!-- jQuery JS -->
    <script src="assets/js/vendor/jquery.js"></script>
    <!-- Bootstrap JS -->
    <script src="assets/js/vendor/bootstrap.min.js"></script>
    <script src="assets/js/plugins/plugins.js"></script>
    <!-- Vendor & Plugins JS (Please remove the comment from below vendor.min.js & plugins.min.js for better website load performance and remove js files from avobe) -->
    <!--
<script src="assets/js/vendor/vendor.min.js"></script>
<script src="assets/js/plugins/plugins.min.js"></script>
-->

    <!-- Main JS -->
    <script src="assets/js/main.js"></script>

</body>

</html>
