<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Article</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/fontawesome/font-awesome.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/css/menu.css">
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/css/article.css">
</head>
<body>
<jsp:include page="include/menu.jsp"></jsp:include>
	
	<c:set var = "string1" value = "${fn:substring(article.content, 0, 2000)}" />
	<c:set var = "string2" value = "${fn:substring(article.content, 2001, fn:length(article.content))}" />
	<div class="contentarticle">
	<div class="leftarticle">
		<p>${article.title }</p>
		<p class="showcontent">${string1}</p>
		<img alt="" src="${article.images }">
		<p class="showcontent">${string2}</p>
	</div>
	<div class="rightarticle">
	<div class = "total">
	<h4>Cùng thể loại</h4>
	<c:forEach items="${samecontent}" var="subArticle">
	<div class="subcontent">
			<div class="wrapper1">
			<div class="thumbcontent">
			<div class="thumb">
				<img src="${subArticle.images }" alt="thumbnail">
			</div>	
			</div>
			</div>
						<div class="wrapper">
			<div class="contentbaiviet">
				<div class="noidung">
				<span>${fn:substring(subArticle.content,0,25 )}</span>
				<span><a href="<%=request.getContextPath()%>/readArticle?id=${subArticle.articleId}">Continue...</a></span>
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
  				<div class="ratehidden">${subArticle.rate }</div>
  				<div class="author">
  					Author : <a href="#">${subArticle.authorOfArticle.userName }</a>
  				</div>
  				<div class="date">
  					<p>December 20 2018</p>
  				</div>
			</div>
			</div>
			</div>
			</c:forEach>
			</div>
	</div>
	</div>
</body>
</html>