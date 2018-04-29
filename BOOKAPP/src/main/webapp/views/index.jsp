<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Trang chu</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/fontawesome/font-awesome.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/css/trangchu.css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
</head>
<body>
	<jsp:include page="include/menu.jsp"></jsp:include>
	<div class="content">
		<div class="left">
			<div class="pragraph1">
				<h4>Currently reading</h4>
				<img src="<%=request.getContextPath() %>/resources/img/showbook.svg"><p>Want are you reading ?</p>
				<div class="searchwraper2">
					<div class="searchsub2">
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
			</div>
			<hr>
			<div class="pragraph2">
				<h4>2018 reading challenge</h4>
				<p>Challenge yourself to read more this year !</p>
				<div class="book">
					<div class="leftbook">
						<p>2018</p>
						<img src="<%=request.getContextPath() %>/resources/img/book1.svg" alt="" >
						<h3 class="challenge">READING Challenge</h3>
					</div>
					<div class="rightbook">
						<p>I want to read</p>
						<input type="number" name="numberOfRead" placeholder="9">
						<h4>Book in 2018</h4>
						<button class="submitChallenge">Start Challege</button>
					</div>
				</div>
			</div>

		</div>
<div class="article">
			<h2>Hot article</h2>
			<div class="baiviet">
			<h4>The title</h4>
			<div class="thumb">
				<img src="<%=request.getContextPath() %>/resources/img/7094569.jpg" alt="thumbnail">
				
			</div>
			<div class="contentbaiviet">
				<div class="noidung">
				<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum nisi, cumque enim omnis dicta nesciunt consequatur quam nobis sit. Cupiditate in atque deleniti cumque explicabo dolores, eius id consectetur. Laborum dolores mollitia sequi, dolor eaque et est, a quo animi consequatur deserunt dicta nostrum tenetur! Quasi libero fuga, repudiandae adipisci.</span>
				<span><a href="#">Continue reading</a></span>
				</div>
				<div class="ratting">
				<div class='rating-stars text-center'>
			    <ul id='stars'>
			      <li class='star' title='Poor' data-value='1'>
			        <i class='fa fa-star fa-fw'></i>
			      </li>
			      <li class='star' title='Fair' data-value='2'>
			        <i class='fa fa-star fa-fw'></i>
			      </li>
			      <li class='star' title='Good' data-value='3'>
			        <i class='fa fa-star fa-fw'></i>
			      </li>
			      <li class='star' title='Excellent' data-value='4'>
			        <i class='fa fa-star fa-fw'></i>
			      </li>
			      <li class='star' title='WOW!!!' data-value='5'>
			        <i class='fa fa-star fa-fw'></i>
			      </li>
			    </ul>
  				</div>
  				</div>
  				<div class="author">
  					Author : <a href="#">Lorem ipsum dolor sit amet</a>
  				</div>
  				<div class="date">
  					<p>December 20 2018</p>
  				</div>
			</div>
			</div>
			<div class="baiviet">
			<h4>The title</h4>
			<div class="thumb">
				<img src="<%=request.getContextPath() %>/resources/img/7094569.jpg" alt="thumbnail">
				
			</div>
			<div class="contentbaiviet">
				<div class="noidung">
				<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Earum nisi, cumque enim omnis dicta nesciunt consequatur quam nobis sit. Cupiditate in atque deleniti cumque explicabo dolores, eius id consectetur. Laborum dolores mollitia sequi, dolor eaque et est, a quo animi consequatur deserunt dicta nostrum tenetur! Quasi libero fuga, repudiandae adipisci.</span>
				<span><a href="#">Continue reading</a></span>
				</div>
				<div class="ratting">
				<div class='rating-stars text-center'>
			    <ul id='stars'>
			      <li class='star' title='Poor' data-value='1'>
			        <i class='fa fa-star fa-fw'></i>
			      </li>
			      <li class='star' title='Fair' data-value='2'>
			        <i class='fa fa-star fa-fw'></i>
			      </li>
			      <li class='star' title='Good' data-value='3'>
			        <i class='fa fa-star fa-fw'></i>
			      </li>
			      <li class='star' title='Excellent' data-value='4'>
			        <i class='fa fa-star fa-fw'></i>
			      </li>
			      <li class='star' title='WOW!!!' data-value='5'>
			        <i class='fa fa-star fa-fw'></i>
			      </li>
			    </ul>
  				</div>
  				</div>
  				<div class="author">
  					Author : <a href="#">Lorem ipsum dolor sit amet</a>
  				</div>
  				<div class="date">
  					<p>December 20 2018</p>
  				</div>
			</div>
			</div>
		</div>
	</div>
</body>
<jsp:include page="include/footer.jsp"/>
</html>