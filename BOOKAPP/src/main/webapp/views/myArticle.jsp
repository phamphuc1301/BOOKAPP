<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/source/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/source/css/bootstrap.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/source/css/menu.css">
	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/source/css/myArticle.css">
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

	<div class="container">
		<table class="table table-striped">
			<tr class="active">
				<th width="10%">ID</th>
				<th width="30%">Title</th>
				<th width="15%">Date</th>
				<th width="15%">Status</th>
				<th width="15%">Type</th>
				<th width="15%">Action</th>
			</tr>
			<div class="contentTable">
			<c:forEach items="${listArticle }" var="article">
				<tr>
					<td>${article.articleId}</td>
					<td>${article.title }</td>
					<td><fmt:formatDate value="${article.date }" type="date"/></td>
					<td><select class="form-control">
						<option <c:if test="${article.status eq 'Publisher'}">selected='selected'</c:if> > Publisher</option>
						<option <c:if test="${article.status eq 'Draft'}">selected='selected'</c:if>  la>Draft</option>
					</select></td>
					<td>${article.type }</td>
					<td>
						<span><a href="<%=request.getContextPath()%>/delete?id=${article.articleId}">Remove</a></span>
						<span><a href="<%=request.getContextPath()%>/edit?id=${article.articleId}">Edit</a></span>
					</td>
				</tr>
			</div>
			</c:forEach>
		</table>
	</div>
</body>
</html>