<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Trang chu</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/fontawesome/font-awesome.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/css/trangchu.css">
</head>
<body>
	<div class="navbar">
		<div class="logo"><h2>Readbook.<span>VN</span></h2></div>
		<ul class="menu">
			<li><a href="">Home</a></li>
			<li><a href="">Book</a></li>
			<li><a href="">Browse</a></li>
			<li><a href="">Community</a></li>
		</ul>
		<div class="search">
			<div class="search2">
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
	<div class="container">
		<div class="left">
			<div class="pragraph1">
				<h4>Currently reading</h4>
				<img src="<%=request.getContextPath() %>/resources/img/showbook.svg"><h5>Want are you reading ?</h5>
				<div class="search">
					<div class="search2">
					<input type="text" placeholder="Search books">
					<div class="before">
						<a href="">
					<i class="fa fa-search"></i>
					</a>
					</div>
					</div>
				</div>
				<a href="#">Recommentations</a>
				<a href="#">General update</a>
				<hr>
			</div>
			<div class="pragraph2">
				<h4>2018 reading challenge</h4>
				<p>Challenge yourself to read more this year !</p>
				<div class="book">
					<h3>2018</h3>
					<img src="<%=request.getContextPath() %>/resources/img/book1.svg" alt="">
				</div>
			</div>

		</div>

	</div>
</body>
</html>