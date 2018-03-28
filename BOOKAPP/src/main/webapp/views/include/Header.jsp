<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta name="description" content="Good Shop is new Wordpress theme that we have designed to help you transform your store into a beautiful online showroom. This is a fully responsive Wordpress theme, with multiple versions for homepage and multiple templates for sub pages as well" />
	<meta name="keywords" content="Good Shop,7uptheme" />
	<meta name="robots" content="noodp,index,follow" />
	<meta name='revisit-after' content='1 days' />
	<title>Good Shop | Home Style 3</title>
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,700|Great+Vibes" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/libs/font-awesome.min.css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/libs/bootstrap.min.css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/libs/bootstrap-theme.min.css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/libs/jquery.fancybox.css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/libs/jquery-ui.min.css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/libs/owl.carousel.css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/libs/owl.transitions.css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/libs/owl.theme.css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/libs/animate.css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/libs/hover.css"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/color3.css" media="all"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/theme.css" media="all"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/responsive.css" media="all"/>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/browser.css" media="all"/>
	<!-- <link rel="stylesheet" type="text/css" href="css/rtl.css" media="all"/> -->
</head>
<body class="preload" style="background:#fff">
<div class="wrap">
	<div id="header">
		<div class="header bg-white">
			<div class="top-header bg-color2">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-6 hidden-xs">
							<ul class="top-header-link list-inline-block pull-left">
								<li><a href="#" class="white">About</a></li>
								<li><a href="#" class="white">Contact</a></li>
								<li><a href="#" class="white">Blog</a></li>
							</ul>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<ul class="list-inline-block pull-right top-profile">
								<li>
									<div class="language-box">
										<a href="#" class="language-current white"><span>English</span></a>
										<ul class="language-list list-none">
											<li><a href="#"><img src="images/icons/flag-en.png" alt=""><span>English</span></a></li>
											<li><a href="#"><img src="images/icons/flag-fr.png" alt=""><span>French</span></a></li>
											<li><a href="#"><img src="images/icons/flag-gm.png" alt=""><span>German</span></a></li>
										</ul>
									</div>
								</li>
								<li>
									<div class="currency-box">
										<a href="#" class="currency-current white"><span>USD</span></a>
										<ul class="currency-list list-none">
											<li><a href="#"><span class="currency-index">€</span>EUR</a></li>
											<li><a href="#"><span class="currency-index">¥</span>JPY</a></li>
											<li><a href="#"><span class="currency-index">$</span>USD</a></li>
										</ul>
									</div>
								</li>
								<li>
									<div class="profile-box">
										<a href="#" class="profile-link white"> <span>My account</span> </a>
										<ul class="list-profile list-none">
											<li><a href="#"><i class="fa fa-user"></i> Account Info</a></li>
											<li><a href="#"><i class="fa fa-key"></i> Sign in</a></li>
											<li><a href="#"><i class="fa fa-sign-in"></i> Logout</a></li>
										</ul>
									</div>
								</li>
								<li>
									<a href="#" class="white">Checkout</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<!-- End Top Header -->
			<div class="main-header">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-4 col-xs-12">
							<div class="logo logo2">
								<h1 class="hidden">Good Shop Wordpress Theme</h1>
								<a href="index.html"><img src="images/home/home3/logo.png" alt=""></a>
							</div>
						</div>
						<div class="col-md-3 col-sm-4 col-xs-12">
							<form class="search-form right-icon search-form2 pull-right">
								<div class="submit-form">
									<input type="submit" value="" />
								</div>
								<input onblur="if (this.value=='') this.value = this.defaultValue" onfocus="if (this.value==this.defaultValue) this.value = ''" value="Search" type="text">
							</form>
						</div>
						<div class="col-md-3 col-sm-4 col-xs-12">
							<div class="mini-cart-box mini-cart2 pull-right">
								<a class="mini-cart-link" href="cart.html">
									<span class="mini-cart-icon"></span>
									<span class="mini-cart-number"><strong>Cart:</strong> <span class="color">$0.00</span></span>
								</a>
								<div class="mini-cart-content text-left">
									<h2 class="title18 color">(2) ITEMS IN MY CART</h2>
									<div class="list-mini-cart-item">
										<div class="product-mini-cart table">
											<div class="product-thumb">
												<a href="detail.html" class="product-thumb-link"><img alt="" src="images/home/home1/products/goodshop_bakery_12.jpg"></a>
												<a href="quick-view.html" class="quickview-link fancybox.iframe"><i class="fa fa-search" aria-hidden="true"></i></a>
											</div>
											<div class="product-info">
												<h3 class="product-title"><a href="#">Lorem ipsum dolor sit amet</a></h3>
												<div class="product-price">
													<ins><span>$400.00</span></ins>
													<del><span>$520.00</span></del>
												</div>
												<div class="product-rate">
													<div class="product-rating" style="width:100%"></div>
												</div>
											</div>
										</div>
										<div class="product-mini-cart table">
											<div class="product-thumb">
												<a href="detail.html" class="product-thumb-link"><img alt="" src="images/home/home1/products/goodshop_bakery_16.jpg"></a>
												<a href="quick-view.html" class="quickview-link fancybox.iframe"><i class="fa fa-search" aria-hidden="true"></i></a>
											</div>
											<div class="product-info">
												<h3 class="product-title"><a href="#">Lorem ipsum dolor sit amet</a></h3>
												<div class="product-price">
													<ins><span>$400.00</span></ins>
													<del><span>$520.00</span></del>
												</div>
												<div class="product-rate">
													<div class="product-rating" style="width:100%"></div>
												</div>
											</div>
										</div>
									</div>
									<div class="mini-cart-total  clearfix">
										<strong class="pull-left title18">TOTAL</strong>
										<span class="pull-right color title18">$800.00</span>
									</div>
									<div class="mini-cart-button">
										<a class="mini-cart-view shop-button" href="#">View cart </a>
										<a class="mini-cart-checkout shop-button" href="#">Checkout</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- End Main Header -->
			<div class="header-nav bg-color2">
				<div class="container">
					<nav class="main-nav main-nav3">
						<ul>
							<li class="current-menu-item menu-item-has-children">
								<a href="index.html">Home</a>
								<ul class="sub-menu">
									<li class="menu-item-preview">
										<a href="home-01.html">Home 01</a>
										<div class="preview-image">
											<a href="home-01.html"><img src="images/previews/02_home_v1_bakery.jpg" alt="" /></a>
										</div>
									</li>
									<li class="menu-item-preview">
										<a href="home-02.html">Home 02</a>
										<div class="preview-image">
											<a href="home-02.html"><img src="images/previews/02_home_v2_digital.jpg" alt="" /></a>
										</div>
									</li>
									<li class="menu-item-preview">
										<a href="home-03.html">Home 03</a>
										<div class="preview-image">
											<a href="home-03.html"><img src="images/previews/02_home_v3_fashion.jpg" alt="" /></a>
										</div>
									</li>
									<li class="menu-item-preview">
										<a href="home-04.html">Home 04</a>
										<div class="preview-image">
											<a href="home-04.html"><img src="images/previews/02_home_v4_fresh.jpg" alt="" /></a>
										</div>
									</li>
									<li class="menu-item-preview">
										<a href="home-05.html">Home 05</a>
										<div class="preview-image">
											<a href="home-05.html"><img src="images/previews/02_home_v5_toys.jpg" alt="" /></a>
										</div>
									</li>
									<li class="menu-item-preview">
										<a href="home-06.html">Home 06</a>
										<div class="preview-image">
											<a href="home-06.html"><img src="images/previews/02_home_v6_flower.jpg" alt="" /></a>
										</div>
									</li>
									<li class="menu-item-preview">
										<a href="home-07.html">Home 07</a>
										<div class="preview-image">
											<a href="home-07.html"><img src="images/previews/02_home_v7_cafe.jpg" alt="" /></a>
										</div>
									</li>
									<li class="menu-item-preview">
										<a href="home-08.html">Home 08</a>
										<div class="preview-image">
											<a href="home-08.html"><img src="images/previews/02_home_v8_color.jpg" alt="" /></a>
										</div>
									</li>
									<li class="menu-item-preview">
										<a href="home-09.html">Home 09</a>
										<div class="preview-image">
											<a href="home-09.html"><img src="images/previews/02_home_v9_market.jpg" alt="" /></a>
										</div>
									</li>
								</ul>
							</li>
							<li class="menu-item-has-children">
								<a href="product-list.html">Shop</a>
								<ul class="sub-menu">
									<li><a href="product-list.html">Product List</a></li>
									<li><a href="product-grid.html">Product Grid</a></li>
									<li class="menu-item-has-children">
										<a href="product-detail.html">Product Detail</a>
										<ul class="sub-menu">
											<li><a href="product-detail.html">Product Detail V_01</a></li>
											<li><a href="product-detail-v2.html">Product Detail V_02</a></li>
											<li><a href="product-detail-v3.html">Product Detail V_03</a></li>
											<li><a href="product-detail-v4.html">Product Detail V_04</a></li>
											<li><a href="product-detail-v5.html">Product Detail V_05</a></li>
											<li><a href="product-detail-v6.html">Product Detail V_06</a></li>
											<li><a href="product-detail-v7.html">Product Detail V_07</a></li>
											<li><a href="product-detail-v8.html">Product Detail V_08</a></li>
										</ul>
									</li>
									<li><a href="vendor-shop.html">Vendor Shop</a></li>
									<li><a href="vendor-product.html">Vendor Product</a></li>
									<li><a href="vendor-rating.html">Vendor Rating</a></li>
									<li><a href="cart.html">Cart</a></li>
									<li><a href="checkout.html">Check Out</a></li>
								</ul>
							</li>
							<li class="has-mega-menu">
								<a href="#">Pages</a>
								<div class="mega-menu">
									<div class="row">
										<div class="col-md-5 col-sm-4 col-xs-12">
											<div class="mega-adv">
												<div class="banner-adv fade-out-in">
													<a href="#" class="adv-thumb-link"><img src="images/menu/sport.jpg" alt="" /></a>
												</div>
												<div class="mega-adv-info">
													<h3 class="title18"><a href="#">Examplui coloniu tencaug</a></h3>
													<p class="desc">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
												</div>
											</div>
										</div>
										<div class="col-md-7 col-sm-8 col-xs-12">
											<div class="mega-new-arrival">
												<h2 class="mega-menu-title">Featured Product</h2>
												<div class="mega-new-arrival-slider">
													<div class="wrap-item show-navi" data-pagination="false" data-navigation="true" data-itemscustom="[[0,1],[768,2]]">
														<div class="item-product1 style-border">
															<div class="product-thumb">
																<a href="detail.html" class="product-thumb-link translate-thumb">
																	<img src="images/home/home6/products/goodshop_item_03.png" alt="">
																	<img src="images/home/home6/products/goodshop_item_04.png" alt="">
																</a>
																<a href="quick-view.html" class="quickview-link fancybox.iframe"><i class="fa fa-search" aria-hidden="true"></i></a>
																<span class="product-label sale-label"></span>
															</div>
															<div class="product-info">
																<h3 class="product-title"><a href="detail.html">Goodshop Product name</a></h3>
																<div class="product-price">
																	<del><span>$75.00</span></del>
																	<ins><span>$50.00</span></ins>
																</div>
																<div class="product-rate">
																	<div class="product-rating" style="width:100%"></div>
																</div>
																<a href="product-grid.html" class="product-incat">Galaxy <span>(10)</span></a>
																<div class="product-extra-link">
																	<a href="#" class="wishlist-link"><i class="fa fa-heart-o" aria-hidden="true"></i><span>Wishlist</span></a>
																	<a href="#" class="addcart-link"><i class="fa fa-shopping-basket" aria-hidden="true"></i><span>Add to cart</span></a>
																	<a href="#" class="compare-link"><i class="fa fa-stumbleupon" aria-hidden="true"></i><span>Compare</span></a>
																</div>
															</div>
														</div>
														<!-- End Item -->
														<div class="item-product1 style-border">
															<div class="product-thumb">
																<a href="detail.html" class="product-thumb-link translate-thumb">
																	<img src="images/home/home6/products/goodshop_item_05.png" alt="">
																	<img src="images/home/home6/products/goodshop_item_06.png" alt="">
																</a>
																<a href="quick-view.html" class="quickview-link fancybox.iframe"><i class="fa fa-search" aria-hidden="true"></i></a>
																<span class="product-label sale-label"></span>
															</div>
															<div class="product-info">
																<h3 class="product-title"><a href="detail.html">Goodshop Product name</a></h3>
																<div class="product-price">
																	<del><span>$75.00</span></del>
																	<ins><span>$50.00</span></ins>
																</div>
																<div class="product-rate">
																	<div class="product-rating" style="width:100%"></div>
																</div>
																<a href="product-grid.html" class="product-incat">Galaxy <span>(10)</span></a>
																<div class="product-extra-link">
																	<a href="#" class="wishlist-link"><i class="fa fa-heart-o" aria-hidden="true"></i><span>Wishlist</span></a>
																	<a href="#" class="addcart-link"><i class="fa fa-shopping-basket" aria-hidden="true"></i><span>Add to cart</span></a>
																	<a href="#" class="compare-link"><i class="fa fa-stumbleupon" aria-hidden="true"></i><span>Compare</span></a>
																</div>
															</div>
														</div>
														<!-- End Item -->
														<div class="item-product1 style-border">
															<div class="product-thumb">
																<a href="detail.html" class="product-thumb-link translate-thumb">
																	<img src="images/home/home6/products/goodshop_item_07.png" alt="">
																	<img src="images/home/home6/products/goodshop_item_08.png" alt="">
																</a>
																<a href="quick-view.html" class="quickview-link fancybox.iframe"><i class="fa fa-search" aria-hidden="true"></i></a>
																<span class="product-label sale-label"></span>
															</div>
															<div class="product-info">
																<h3 class="product-title"><a href="detail.html">Goodshop Product name</a></h3>
																<div class="product-price">
																	<del><span>$75.00</span></del>
																	<ins><span>$50.00</span></ins>
																</div>
																<div class="product-rate">
																	<div class="product-rating" style="width:100%"></div>
																</div>
																<a href="product-grid.html" class="product-incat">Galaxy <span>(10)</span></a>
																<div class="product-extra-link">
																	<a href="#" class="wishlist-link"><i class="fa fa-heart-o" aria-hidden="true"></i><span>Wishlist</span></a>
																	<a href="#" class="addcart-link"><i class="fa fa-shopping-basket" aria-hidden="true"></i><span>Add to cart</span></a>
																	<a href="#" class="compare-link"><i class="fa fa-stumbleupon" aria-hidden="true"></i><span>Compare</span></a>
																</div>
															</div>
														</div>
														<!-- End Item -->
														<div class="item-product1 style-border">
															<div class="product-thumb">
																<a href="detail.html" class="product-thumb-link translate-thumb">
																	<img src="images/home/home6/products/goodshop_item_01.png" alt="">
																	<img src="images/home/home6/products/goodshop_item_02.png" alt="">
																</a>
																<a href="quick-view.html" class="quickview-link fancybox.iframe"><i class="fa fa-search" aria-hidden="true"></i></a>
																<span class="product-label sale-label"></span>
															</div>
															<div class="product-info">
																<h3 class="product-title"><a href="detail.html">Goodshop Product name</a></h3>
																<div class="product-price">
																	<del><span>$75.00</span></del>
																	<ins><span>$50.00</span></ins>
																</div>
																<div class="product-rate">
																	<div class="product-rating" style="width:100%"></div>
																</div>
																<a href="product-grid.html" class="product-incat">Galaxy <span>(10)</span></a>
																<div class="product-extra-link">
																	<a href="#" class="wishlist-link"><i class="fa fa-heart-o" aria-hidden="true"></i><span>Wishlist</span></a>
																	<a href="#" class="addcart-link"><i class="fa fa-shopping-basket" aria-hidden="true"></i><span>Add to cart</span></a>
																	<a href="#" class="compare-link"><i class="fa fa-stumbleupon" aria-hidden="true"></i><span>Compare</span></a>
																</div>
															</div>
														</div>
														<!-- End Item -->
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- End Mega Menu -->
							</li>
							<li class="menu-item-has-children">
								<a href="blog.html">Blog</a>
								<ul class="sub-menu">
									<li><a href="blog.html">Blog List</a></li>
									<li><a href="blog-grid.html">Blog Grid</a></li>
									<li><a href="blog-with-sidebar.html">Blog With Sidebar</a></li>
									<li><a href="single.html">Single Post</a></li>
								</ul>
							</li>
							<li><a href="#">Portfolio</a></li>
							<li><a href="about.html">About</a></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
						<a href="#" class="toggle-mobile-menu"><span></span></a>
					</nav>
				</div>
			</div>
			<!-- End Header Nav -->
		</div>
	</div>
	<!-- End Header -->