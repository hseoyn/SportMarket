<%--
  Created by IntelliJ IDEA.
  User: njzh
  Date: 2019/7/18
  Time: 20:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>


<head>
    <link rel="stylesheet" href="${path}/assets/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="${path}/assets/css/plugins/plugins.css">
</head>
<header class="header-area haeder-default  black-logo-version ptb_lg--40 ptb_md--40 ptb_sm--30">
    <div class="header-wrapper container">
        <div class="row align-items-center">
            <!-- Start Header Left -->
            <div class="col-xl-2 col-lg-6 col-md-6 col-sm-6 col-6">
                <div class="logo">
                    <a href="index.html">
                        <img src="${path}/assets/images/logo/logo-black.png" alt="Draven logo">
                    </a>
                </div>
            </div>
            <!-- Start Header Center -->
            <div class="col-xl-9 d-none d-xl-block">
                <nav class="mainmenu__nav">
                    <!-- Start Mainmanu Nav -->
                    <ul class="primary-menu megamenu-wrapper">
                        <li class="lavel-1"><a href="${path}/index">首页</a>
                            <ul class="dropdown__menu">
                                <li><a href="index.html"><span>Home 01</span></a></li>
                                <li><a href="index-2.html"><span>Home 02</span></a></li>
                            </ul>
                        </li>
                        <li class="lavel-1"><a href="${path}/list">商城</a>
                            <ul class="dropdown__menu">
                                <c:forEach items="${requestScope.nav}" var="nav">
                                    <li><a href="${path}/list?typeId=${nav.type_id}"><span>${nav.type_name}</span></a></li>
                                </c:forEach>
                                <li><a href="${path}/list"><span>全部商品</span></a></li>
                                <%--                <li><a href="shop-left-sidebar.html"><span>Shop Left Sidebar</span></a></li>--%>
                                <%--                <li><a href="shop-no-sidebar.html"><span>Shop No Sidebar</span></a></li>--%>
                                <%--                <li><a href="product-details.html"><span>产品详细信息</span></a></li>--%>
                            </ul>
                        </li>
                        <li class="lavel-1"><a href="blog.html">Blog</a>
                            <ul class="dropdown__menu">
                                <li><a href="blog.html"><span>Blog</span></a></li>
                                <li><a href="blog-left-sidebar.html"><span>Blog Left Sidebar</span></a></li>
                                <li><a href="blog-details.html"><span>Blog Details</span></a></li>
                            </ul>
                        </li>
                        <li class="lavel-1"><a href="#">Pages</a>
                            <ul class="dropdown__menu">
                                <li><a href="cart.html"><span>Cart</span></a></li>
                                <li><a href="checkout.html"><span>Checkout</span></a></li>
                                <li><a href="wishlist.html"><span>Wishlist</span></a></li>
                                <li><a href="compare.html"><span>Compare</span></a></li>
                                <li><a href="my-account.html"><span>My Account</span></a></li>
                                <li><a href="login-register.html"><span>Login/Register</span></a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                        <c:if test="${sessionScope.user == null}">
                            <li><a href="${path}/login">用户登录</a></li>
                        </c:if>
                        <c:if test="${sessionScope.user != null}">
                            <li class="lavel-1"><a href="${path}/login">${sessionScope.user.users_name}</a>
                                <ul class="dropdown__menu">
                                    <li><a href="${path}/address"><span>个人中心</span></a></li>
                                    <li><a href="${path}/cart"><span>购物车</span></a></li>
                                    <li><a href="${path}/orders"><span>全部订单</span></a></li>
                                    <li><a href="${path}/logout"><span>退出登录</span></a></li>
                                </ul>
                            </li>
                        </c:if>

                    </ul>
                    <!-- End Mainmanu Nav -->
                </nav>
            </div>
            <!-- Start Header Right -->
            <div class="col-xl-1 col-lg-6 col-md-6 col-sm-6 col-6">
                <div class="header-icon d-flex justify-content-end cart text-right">
                    <a class="cart-trigger" href="#">
                        <i class="fa fa-shopping-cart"></i>
                        <span class="cart-count">03</span>
                    </a>
                    <a class="hamburger-trigger d-block d-xl-none pl--15" href="#">
                        <i class="fa fa-bars"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
</header>

