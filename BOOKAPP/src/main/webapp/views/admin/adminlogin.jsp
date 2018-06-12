<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<link href="<%=request.getContextPath()%>/resources/source/css/bootstrap.min.css" rel="stylesheet">
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/source/admin/images/favico.png">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/source/fontawesome/font-awesome.css">
	<script src="<%=request.getContextPath()%>/resources/source/js/jquery-3.2.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/source/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/admin/css/login.css"/>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<div class="container">
	<div class="card card-container">
		<img id="profile-img" class="profile-img-card"
			src="//ssl.gstatic.com/accounts/ui/avatar_2x.png" />
		<p id="profile-name" class="profile-name-card"></p>
		<form class="form-signin" method="POST" action="<%=request.getContextPath() %>/admin/adminLogin">
			<span id="reauth-email" class="reauth-email"></span> 
				<input type="text" id="inputEmail" class="form-control" name= "userName" placeholder="User Name" required autofocus>
				<input type="password" id="inputPassword" class="form-control" name="password" placeholder="Password" required>
				<div id="remember" class="checkbox">
				<label> <input type="checkbox" name="remember-me" value="remember-me">
					Remember me
				</label>
			</div>
			<button class="btn btn-lg btn-primary btn-block btn-signin"
				type="submit">Sign in</button>
		</form>
		<a href="#" class="forgot-password"> Forgot the password? </a>
	</div>
</div>