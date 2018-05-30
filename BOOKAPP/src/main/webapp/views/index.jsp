<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>Trang chu</title>
<link href="https://fonts.googleapis.com/css?family=Roboto"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/source/fontawesome/font-awesome.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/source/css/trangchu.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/source/css/menu.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/source/css/bootstrap-theme.min.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/source/js/searchArticle.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/resources/source/js/rate.js"></script>
</head>
<body>
	<jsp:include page="include/menu.jsp"></jsp:include>
	<div class="content">
		<jsp:include page="pages/indextrinhtham.jsp"/>
		<div id="noidung">
			<jsp:include page="pages/index5newest.jsp"></jsp:include>
		</div>
	</div>
</body>
<jsp:include page="include/footer.jsp" />
</html>