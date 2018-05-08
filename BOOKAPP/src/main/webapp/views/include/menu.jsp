<%-- <div class="navbar">
		<div class="logo"><h2>Readbook.<span>VN</span></h2></div>
		<ul class="menu">
			<li><a href="<%=request.getContextPath() %>/index">Home</a></li>
			<li><a href="<%=request.getContextPath() %>/myArticle">MyArticle</a></li>
			<li><a href="">Browse</a></li>
			<li><a href="">Community</a></li>
			<li>${currentuser.userName }<a href="<%=request.getContextPath() %>/logout">logout</a></li>
		</ul>
		<div class="searchwraper1">
			<div class="searchsub1">
			<input type="text" placeholder="Search article" id="searchbook" onkeyup="myFunction()">
			<div class="before">
				<a href="">
			<i class="fa fa-search"></i>
			</a>
			</div>
			</div>
		</div>
		<div class="social">
			<div class="bell"><i class="fa fa-bell"></i></div>
			<div class="messages"><i class="fa fa-comment"></i></div>
			<div class="friends"><i class="fa fa-users"></i></div>
		</div>
		<div class="myinfo"><img src="<%=request.getContextPath() %>/resources/img/user.png"></div>
	</div> --%>
<!-- pageheader
    ================================================== -->
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
					<li><a href="<%=request.getContextPath()%>/index">Home</a></li>
					<li><a href="<%=request.getContextPath()%>/myArticle">MyArticle</a></li>
					<li><a href="">Browse</a></li>
					<li><a href="">Community</a></li>
					<li>${currentuser.userName }<a
						href="<%=request.getContextPath()%>/logout">logout</a></li>
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

