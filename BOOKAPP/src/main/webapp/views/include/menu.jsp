<div class="navbar">
		<div class="logo"><h2>Readbook.<span>VN</span></h2></div>
		<ul class="menu">
			<li><a href="">Home</a></li>
			<li><a href="">Book</a></li>
			<li><a href="">Browse</a></li>
			<li><a href="">Community</a></li>
			<li>${currentuser.userName }<a href="<%=request.getContextPath() %>/logout">logout</a></li>
		</ul>
		<div class="searchwraper1">
			<div class="searchsub1">
			<input type="text" placeholder="Search books">
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
	</div>