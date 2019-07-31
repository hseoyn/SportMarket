<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!doctype html>
<html class="no-js" lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Lanes - Lanes Bootstrap 4 Portfolio Template</title>
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

<!-- Start Banner Area -->
<div class="slider-activation">
  <!-- Start Single Slide -->
  <div class="slider-area ptb--150 bg_image bg_image--4 fullscreen d-flex align-items-center">
    <div class="container">
      <div class="row">
        <div class="col-xl-4 offset-xl-8 col-lg-6 offset-lg-6">
          <div class="slide-content">
            <img src="${path}/assets/images/logo/text.png" alt="Text">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
            <div class="shop-now-btn">
              <a href="${path}/list"><button type="button">Shop Now <i class="fa fa-arrow-right"></i></button></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Single Slide -->
  <!-- Start Single Slide -->
  <div class="slider-area ptb--150 bg_image bg_image--1 fullscreen d-flex align-items-center">
    <div class="container">
      <div class="row">
        <div class="col-xl-4 offset-xl-8 col-lg-6 offset-lg-6">
          <div class="slide-content">
            <img src="${path}/assets/images/logo/text.png" alt="Text">
            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
            <div class="shop-now-btn">
              <a href="${path}/list"><button type="button">Shop Now <i class="fa fa-arrow-right"></i></button></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Single Slide -->
</div>

<!-- End Banner Area -->

<div class="main-wrapper">
  <!-- Start Banner Area -->
  <div class="banner-area">
    <div class="row row--0">
      <!-- Start Single Banner -->
      <div class="col-lg-4 col-md-6 col-12 mt_sm--30">
        <div class="banner">
          <div class="thumbnail">
            <img src="${path}/assets/images/banner/banner-01.jpg" alt="Banner Images">
          </div>
          <div class="content">
            <h1 class="theme-color mb--0">100%</h1>
            <h4>ALL IN</h4>
          </div>
        </div>
      </div>
      <!-- End Single Banner -->

      <!-- Start Single Banner -->
      <div class="col-lg-4 col-md-6 col-12 mt_sm--30">
        <div class="banner">
          <div class="thumbnail">
            <img src="${path}/assets/images/banner/banner-02.jpg" alt="Banner Images">
          </div>
          <div class="content">
            <h1 class="theme-color mb--0">Champion</h1>
            <h4>GO!</h4>
          </div>
        </div>
      </div>
      <!-- End Single Banner -->

      <!-- Start Single Banner -->
      <div class="col-lg-4 col-md-6 col-12 mt_md--30 mt_sm--30">
        <div class="banner">
          <div class="thumbnail">
            <img src="${path}/assets/images/banner/banner-03.jpg" alt="Banner Images">
          </div>
          <div class="content">
            <h1 class="theme-color mb--0">Hot</h1>
            <h4>Tsrt Sale</h4>
          </div>
        </div>
      </div>
      <!-- End Single Banner -->

    </div>
  </div>
  <!-- End Banner Area -->

  <!-- Start Product Area -->
  <div class="feature-product-area bg-color pt--90 pt_md--80 pt_sm--80 pb--100 pb_md--80 pb_sm--80" data-bg-color="#fff">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="section-title text-center">
            <h2 class="title">Featured products</h2>
            <img src="${path}/assets/images/logo/shape.png" alt="Shape Images">
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
                  <img src="${path}/assets/images/product/product-16.jpg" alt="Product Images">
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
              <h2><a href="product-details.html">Matchbox’ Fit Jeans</a></h2>
              <span class="prize">$250.00</span>
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
                  <img src="${path}/assets/images/product/product-15.jpg" alt="Product Images">
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
              <h2><a href="product-details.html">Fit Wool Suit</a></h2>
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
                  <img src="${path}/assets/images/product/product-14.jpg" alt="Product Images">
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
              <h2><a href="product-details.html">Three-Piece Checke</a></h2>
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
                  <img src="${path}/assets/images/product/product-13.jpg" alt="Product Images">
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
              <span class="prize">$170.00</span>
            </div>
          </div>
        </div>
        <!-- End Single Product -->

      </div>
    </div>
  </div>
  <!-- End Product Area -->

  <!-- Start Countdown Area -->
  <div class="countdown-area bg_image bg_image--2 ptb--100 ptb_md--80 ptb_sm--80">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-xl-6 col-md-12 col-12 order-2 order-lg-1">
          <div class="shop-now-btn text-center pt--150 mt--50 pt_md--0 pt_sm--0">
            <button class="button-theme" type="button">Shop Now <i class="fa fa-arrow-right"></i></button>
          </div>
        </div>
        <div class="col-lg-8 col-xl-6 col-md-12 col-12 order-1 order-lg-2">
          <div class="countdown-inner-content">
            <h2>Explore <br> Every part of this <br> Products</h2>
            <div class="box-timer countdown-style-1 mt--50">
              <div class="countbox timer-grid">
                <div data-countdown="2010/03/01"></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Countdown Area -->

  <!-- Start Product Feature Tab -->
  <div class="product-sale-area pt--100 pt_md--80 pt_sm--80 bg-color" data-bg-color="#ffffff">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <!-- Start Product Tab -->
          <ul class="nav nav-tabs onsale-tab" id="myTab" role="tablist">
            <li class="nav-item">
              <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Featured</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">On Sale</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Top Rated</a>
            </li>
          </ul>
          <!-- End Product Tab -->
        </div>
      </div>
      <div class="row mt--30">
        <div class="col-lg-12">
          <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
              <div class="row">


              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Product Feature Tab -->

  <!-- Start Recent Selling Area -->
  <div class="recentselling-area pt--100 bg-color" data-bg-color="#fff">
    <div class="container">
      <div class="row">
        <!-- Start Single Banner -->
        <div class="col-lg-4 col-md-6 col-sm-12 col-12">
          <div class="banner">
            <div class="thumbnail">
              <img class="w-100" src="${path}/assets/images/banner/banner-04.jpg" alt="Banner Images">
            </div>
            <div class="content text-left">
              <h3>Best Product for Man</h3>
            </div>
          </div>
        </div>
        <!-- End Single Banner -->
        <div class="col-lg-4 col-md-6 col-sm-12 col-12 mt_sm--40">
          <!-- Start Best Rating Product -->
          <div class="best-rating-product">
            <div class="thumb">
              <a href="product-details.html">
                <img src="${path}/assets/images/product/sm-product-01.jpg" alt="Product">
              </a>
            </div>
            <div class="content">
              <h6><a href="product-details.html">Variable product</a></h6>
              <div class="price">
                <span class="theme-color">$25.22</span>
                <span class="old-price">$30.00</span>
              </div>
            </div>
          </div>
          <!-- End Best Rating Product -->

          <!-- Start Best Rating Product -->
          <div class="best-rating-product mt--30">
            <div class="thumb">
              <a href="product-details.html">
                <img src="${path}/assets/images/product/sm-product-02.jpg" alt="Product">
              </a>
            </div>
            <div class="content">
              <h6><a href="product-details.html">Variable product</a></h6>
              <div class="price">
                <span class="theme-color">$25.22</span>
                <span class="old-price">$30.00</span>
              </div>
            </div>
          </div>
          <!-- End Best Rating Product -->

          <!-- Start Best Rating Product -->
          <div class="best-rating-product mt--30">
            <div class="thumb">
              <a href="product-details.html">
                <img src="${path}/assets/images/product/sm-product-03.jpg" alt="Product">
              </a>
            </div>
            <div class="content">
              <h6><a href="product-details.html">Demo Product Name</a></h6>
              <div class="price">
                <span class="theme-color">$25.22</span>
                <span class="old-price">$30.00</span>
              </div>
            </div>
          </div>
          <!-- End Best Rating Product -->
        </div>
        <div class="col-lg-4 col-md-6 col-sm-12 col-12 mt_md--40">
          <!-- Start Best Rating Product -->
          <div class="best-rating-product">
            <div class="thumb">
              <a href="product-details.html">
                <img src="${path}/assets/images/product/sm-product-04.jpg" alt="Product">
              </a>
            </div>
            <div class="content">
              <h6><a href="product-details.html">Fit Wool Suit</a></h6>
              <div class="price">
                <span class="theme-color">$25.22</span>
                <span class="old-price">$30.00</span>
              </div>
            </div>
          </div>
          <!-- End Best Rating Product -->

          <!-- Start Best Rating Product -->
          <div class="best-rating-product mt--30">
            <div class="thumb">
              <a href="product-details.html">
                <img src="${path}/assets/images/product/sm-product-05.jpg" alt="Product">
              </a>
            </div>
            <div class="content">
              <h6><a href="product-details.html">Fit Wool Suit</a></h6>
              <div class="price">
                <span class="theme-color">$25.22</span>
                <span class="old-price">$30.00</span>
              </div>
            </div>
          </div>
          <!-- End Best Rating Product -->

          <!-- Start Best Rating Product -->
          <div class="best-rating-product mt--30">
            <div class="thumb">
              <a href="product-details.html">
                <img src="${path}/assets/images/product/sm-product-03.jpg" alt="Product">
              </a>
            </div>
            <div class="content">
              <h6><a href="product-details.html">Matchbox’ Fit Jeans</a></h6>
              <div class="price">
                <span class="theme-color">$25.22</span>
                <span class="old-price">$30.00</span>
              </div>
            </div>
          </div>
          <!-- End Best Rating Product -->
        </div>
      </div>
    </div>
  </div>
  <!-- End Recent Selling Area -->

  <!-- Start Brand Area -->
  <div class="brand-area ptb--90">
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="brand-wrapper bg-color ptb--70" data-bg-color="#f7f8f9">
            <div class="brand-list plr--60 flex-wrap flex-lg-nowrap d-flex justify-content-between">
              <a href="#">
                <img src="${path}/assets/images/brand/brand-01.png" alt="Brand">
              </a>
              <a href="#">
                <img src="${path}/assets/images/brand/brand-02.png" alt="Brand">
              </a>
              <a href="#">
                <img src="${path}/assets/images/brand/brand-03.png" alt="Brand">
              </a>
              <a href="#">
                <img src="${path}/assets/images/brand/brand-04.png" alt="Brand">
              </a>
              <a href="#">
                <img src="${path}/assets/images/brand/brand-01.png" alt="Brand">
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Brand Area -->

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
              <img class="w-100" src="${path}/assets/images/product/product-01.jpg" alt="product image">
            </a>
            <a href="#">
              <img class="w-100" src="${path}/assets/images/product/product-02.jpg" alt="product image">
            </a>
            <a href="#">
              <img class="w-100" src="${path}/assets/images/product/product-03.jpg" alt="product image">
            </a>
            <a href="#">
              <img class="w-100" src="${path}/assets/images/product/product-04.jpg" alt="product image">
            </a>
            <a href="#">
              <img class="w-100" src="${path}/assets/images/product/product-05.jpg" alt="product image">
            </a>
          </div>
          <div class="product-details-thumbs slider-navigation-2">
            <img src="${path}/assets/images/product/product-01.jpg" alt="product image thumb">
            <img src="${path}/assets/images/product/product-02.jpg" alt="product image thumb">
            <img src="${path}/assets/images/product/product-03.jpg" alt="product image thumb">
            <img src="${path}/assets/images/product/product-04.jpg" alt="product image thumb">
            <img src="${path}/assets/images/product/product-05.jpg" alt="product image thumb">
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
<%--<script src="${path}/assets/js/vendor/jquery.js"></script>--%>
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

