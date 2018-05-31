<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/css/bootstrap.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/fontawesome/font-awesome.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/css/login.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/source/js/jquery-3.2.1.min.js"></script>
	<title>Chia sẻ - Review sách</title>
</head>
<body>
	<div class="banner">
		<div class="logo"><h2>Reader<span> Vn</span></h2></div>
		<div class="login">
			<form method="POST" action="<%=request.getContextPath() %>/appLogin" modelAttribute="user">
				<table>
						<tr>
							<td><input type="text" name="userName"></td>
							<td><input type="password" name="password"></td>
							<td><input type="submit" value="submit"></td>
						</tr>
						<tr>
							<td><input type="checkbox" name="remember-me" /> Remember me</td>
							<td>Quên mật khẩu</td>
						</tr>
				</table>
			</form>
		</div>
	</div>
	<div id = "session2">
		<div><img src="<%=request.getContextPath() %>/resources/img/banner.png" alt=""></div>
		<div class="register">
			<div class="text">Bạn chưa có tài khoản ?</div>
			<form action="<%=request.getContextPath() %>/register" method="POST" modelAttribute="user">
				<div><input type="text" name="userName" placeholder="Name"></div>
				<div><input type="email" name="email" placeholder="Email Address"></div>
				<div><input type="password" name="password" placeholder="Password"></div>
				<c:if test="${not empty error }">
					<div style="color:red">Invalid input</div>
				</c:if>
				<div>
				<input type="submit" name="submit" value="Sign up">
			</div>
			</form>
			<div class="social">Or using 
				<i class="fa fa-facebook"></i>
				<i class="fa fa-google"></i>
				<i class="fa fa-medium"></i>
				<i class="fa fa-twitter"></i>
			</div>
		</div>
	</div>
	<div class="brake"></div>
	<div class="container">
	<div class="session3">
		<div class="left">
			<div class="textbottom">
			<div class="text1">
			<h4>Deciding what to read next?</h4>
			Lorem ipsum dolor sit amet, consectetur adipisicing elit. Pariatur dicta ipsa facere, unde voluptates nisi ad nobis odit sit assumenda minima est incidunt vitae dolore corporis nemo cupiditate molestiae libero!</div>
			<div class="text2">
				<h4>What are your friends reading?</h4>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet assumenda sunt omnis corporis praesentium ipsa, pariatur atque laudantium suscipit animi et ipsam quibusdam a illum, vitae quia delectus optio eligendi.</div>
			</div>
			<div class="discover">
				<h4>What will you discover</h4>
				<p>Because Phuc liked</p>
				<div class="imagediscover">
					<a href=""><img src="<%=request.getContextPath() %>/resources/img/7094569.jpg" alt=""></a>
					<a href=""><img src="<%=request.getContextPath() %>/resources/img/7157310.jpg" alt=""></a>
					<a href=""><img src="<%=request.getContextPath() %>/resources/img/7716140.jpg" alt=""></a>
					<a href=""><img src="<%=request.getContextPath() %>/resources/img/9648068.jpg" alt=""></a>
					<a href=""><img src="<%=request.getContextPath() %>/resources/img/discovery_arrow.png" alt=""></a>
					<a href=""><img src="<%=request.getContextPath() %>/resources/img/8051458.jpg" alt=""></a>
				</div>
			</div>
		</div>
		<div class="right">
			<h4>Reader online now</h4>
			<div class="onlinenow">
				<img src="<%=request.getContextPath() %>/resources/img/online/online1.jpg" alt="">
				<img src="<%=request.getContextPath() %>/resources/img/online/online2.jpg" alt="">
				<img src="<%=request.getContextPath() %>/resources/img/online/online3.jpg" alt="">
				<img src="<%=request.getContextPath() %>/resources/img/online/online4.jpg" alt="">
				<img src="<%=request.getContextPath() %>/resources/img/online/online5.jpg" alt="">
				<img src="<%=request.getContextPath() %>/resources/img/online/online6.jpg" alt="">
				<img src="<%=request.getContextPath() %>/resources/img/online/online7.jpg" alt="">
				<img src="<%=request.getContextPath() %>/resources/img/online/online8.jpg" alt="">
				<img src="<%=request.getContextPath() %>/resources/img/online/online9.jpg" alt="">
				<img src="<%=request.getContextPath() %>/resources/img/online/online10.jpg" alt="">
				<img src="<%=request.getContextPath() %>/resources/img/online/online11.jpg" alt="">
				<img src="<%=request.getContextPath() %>/resources/img/online/online12.jpg" alt="">
			</div>
			<div class="ruf">
				<h4>Are you an author or a publisher ?</h4>
				<p>Gain access to a massive audience of more than 65 milion book lovers. Goodreads is a great place to promote your books</p>
				<button>Author program</button>
				<button>Advertise</button>
			</div>
		</div>
	</div>
	</div>
  <script type="text/javascript" src="<%=request.getContextPath() %>/resources/source/1.js"></script>
</body>
<footer>
	<i class="fa fa-copyright"> 2018 real choice</i>
</footer>
</html>