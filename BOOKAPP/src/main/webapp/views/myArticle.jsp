<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/source/css/bootstrap-theme.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/source/css/bootstrap.css">
	<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/source/admin/images/favico.png">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/source/css/menu.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/source/css/myArticle.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/source/css/trangchu.css">
<title>My Article</title>
</head>
<body>
	<jsp:include page="include/menu.jsp"></jsp:include>
	<div class="s-content__header col-full">
		<h1 class="s-content__header-title">This is your Article</h1>
		<ul class="s-content__header-meta">
			<li class="date">Hi! Hope you enjoy</li>
		</ul>
	</div>
	<!-- end s-content__header -->
	<c:if test="${not empty nullable }">
		<div class="container">
		<center>
		<h4><i>Bạn chưa có bài viết nào. Đóng góp thêm để forum cùng phát
			triển nhé</i></h4>
		<img alt="Empty" height="300" src="<%=request.getContextPath()%>/resources/img/empty.jpg">
		</center>
		</div>
	</c:if>
	<c:if test="${empty nullable }">
	<div class="container">
		<table class="table table-striped">
			<tr class="active">
				<th>ID</th>
				<th>Title</th>
				<th>Date</th>
				<th>Status</th>
				<th>Type</th>
				<th>Action</th>
			</tr>
			<div class="contentTable">

				<c:forEach items="${listArticle }" var="article">
					<tr>
						<td class="col-md-1">${article.articleId}</td>
						<td class="col-md-5">${article.title }</td>
						<td class="col-md-2"><fmt:formatDate value="${article.date }"
								type="date" /></td>
						<td class="col-md-2"><select class="form-control">
								<option
									<c:if test="${article.status eq 'Publisher'}">selected='selected'</c:if>>
									Publisher</option>
								<option
									<c:if test="${article.status eq 'Draft'}">selected='selected'</c:if>
									la>Draft</option>
						</select></td>
						<td class="col-md-1">${article.type }</td>
						<td class="col-md-1"><span><a
								href="<%=request.getContextPath()%>/delete?id=${article.articleId}">Remove</a></span>
							<span><a
								href="<%=request.getContextPath()%>/edit?id=${article.articleId}">Edit</a></span>
						</td>
					</tr>
			</div>
			</c:forEach>
		</table>
	</div>
	</c:if>
</body>
<jsp:include page="include/footer.jsp"></jsp:include>
</html>