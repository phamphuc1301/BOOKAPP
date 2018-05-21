<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<head>
	<meta charset="UTF-8">
	<title>Trang chu</title>
	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/fontawesome/font-awesome.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/css/trangchu.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/css/menu.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/css/bootstrap-theme.min.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/source/js/searchArticle.js"></script>
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
					<input type="text" placeholder="Search article" id="searchbook" onkeyup="myFunction()">
					<div class="before">
						<a href="">
					<i class="fa fa-search"></i>
					</a>
					</div>
					</div>
				</div>
			</div>
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
		<div id = "noidung">
			<jsp:include page="articleindex.jsp"></jsp:include>
		</div>
	</div>
</body>
<jsp:include page="include/footer.jsp"/>
</html>