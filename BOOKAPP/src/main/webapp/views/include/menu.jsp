<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="s-pageheader">

	<header class="header">
		<div class="header__content row">
			<div class="header__logo">
				<a class="logo" href="<%=request.getContextPath()%>/index">
					READER </a>
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
				<ul class="header__nav">
					<li><a href="<%=request.getContextPath()%>/index">Trang
							chủ</a></li>
					<sec:authorize access="isAuthenticated()">
						<li><a href="<%=request.getContextPath()%>/myArticle">Bài
								viết</a></li>
						<li><a href="<%=request.getContextPath()%>/createNewArticle">Tạo
								bài viết mới</a></li>
						<li class="dropdown"><a>Hi <i><sec:authentication
										property="principal.username" /></i> !
						</a> <span class="dropdown-content"> <a
								href="<%=request.getContextPath()%>/myProfile">My Profile</a> <a
								href="<%=request.getContextPath()%>/logout">Logout</a>
						</span></li>

					</sec:authorize>
					<sec:authorize access="hasRole('ROLE_ANONYMOUS')">
						<li><a href="<%=request.getContextPath()%>/login">Login</a></li>
					</sec:authorize>
					<div class="search">
						<li>
							<div id="imaginary_container">
								<div class="input-group stylish-input-group">
									<input type="text" placeholder="Search article" id="searchbook"
										onkeyup="myFunction()">
								</div>
							</div>
						</li>
					</div>
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

