<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="s-pageheader">

	<header class="header">
		<div class="header__content row">
			<div class="header__logo">
				<a class="logo" href="<%=request.getContextPath()%>/index"> <img src="<%=request.getContextPath() %>/resources/source/theme/images/logo.svg"
					alt="Homepage">
				</a>
			</div>
			<!-- end header__logo -->

			<ul class="header__social">
				<li><a href="#0"><i class="fa fa-facebook"
						aria-hidden="true"></i></a></li>
				<li><a href="#0"><i class="fa fa-twitter"
						aria-hidden="true"></i></a></li>
				<li><a href="#0"><i class="fa fa-instagram"
						aria-hidden="true"></i></a></li>
				<li><a href="#0"><i class="fa fa-pinterest"
						aria-hidden="true"></i></a></li>
			</ul>
			<a class="header__toggle-menu" href="#0" title="Menu"><span>Menu</span></a>

			<nav class="header__nav-wrap">

				<h2 class="header__nav-heading h6">Site Navigation</h2>

				<ul class="header__nav">
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="<%=request.getContextPath()%>/dashboard">Quản lý</a></li>
				</sec:authorize>
					<li><a href="<%=request.getContextPath()%>/index">Trang chủ</a></li>
					
					<li><a href="<%=request.getContextPath()%>/myArticle">Bài viết</a></li>
					<li><a href="">Community</a></li>
					<sec:authorize access="isAuthenticated()">
					<li class="dropdown">
					    <a>Hi <i><sec:authentication property="principal.username" /></i> ! </a>
					  <span class="dropdown-content">
					  	<a href="<%=request.getContextPath()%>/myProfile">My Profile</a>
					  	<a href="<%=request.getContextPath()%>/logout">Logout</a>
					  </span>
					</li>
					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_ANONYMOUS')">
						<li><a href="<%=request.getContextPath()%>/login">Login</a></li>
					</sec:authorize>
				</ul>
				<!-- end header__nav -->

				<a href="#0" title="Close Menu"
					class="header__overlay-close close-mobile-menu">Close</a>

			</nav>
			<!-- end header__nav-wrap -->

		</div>
		<!-- header-content -->
	</header>
	<!-- header -->

</div>
<!-- end s-pageheader -->

