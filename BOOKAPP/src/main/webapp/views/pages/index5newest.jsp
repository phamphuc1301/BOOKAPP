<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
	<div class="article">
			<h3 class="category">Bài viết mới nhất</h3>
			<p:forEach items="${listArticle }" var="article">
			<div class="baiviet">
			<p style="font-weight:500; text-transform:uppercase">${article.title }<p>
			<div class="wrapper1">
			<div class="thumbcontent">
			<div class="thumb">
				<img src="${article.images }" alt="thumbnail">
			</div>
			</div>
			</div>
			<div class="wrapper">
			<div class="contentbaiviet">
				<div class="noidung">
				<span>${article.content }</span>
				<span><a href="<%=request.getContextPath()%>/readArticle?id=${article.articleId}">Continue reading</a></span>
				</div>
				<div class="ratting">
				<div class='rating-stars text-center'>
			    <ul class='stars'>
			    <span id="${article.articleId }" class="${article.rate }">
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
			      </span>
			    </ul>
  				</div>
  				</div>
  				<div class="author">
  					Author : <a href="#">${article.authorOfArticle.userName }</a>
  				</div>
  				<div class="date">
  					<p>Date : <fmt:formatDate type = "date" 
        			value = "${article.date}" /></p>
  				</div>
			</div>
			</div>
			</div>
			</p:forEach>
			
			<div class="wrappercard2">
			<h3 class="category">Thể loại Văn Học</h3>
			<c:forEach items="${listVanHoc }" var="tt" end="2">
				<div class="card2">
				<img
					src="${tt.images }"
					alt="Avatar" style="width: 100%">
				<div class="wrapper22">
					<div>
						<b>Author : ${tt.authorOfArticle.userName }</b>
					</div>
					<p class="linkToArticle"><a href="<%=request.getContextPath()%>/readArticle?id=${tt.articleId}">${tt.title }</a></p>
				</div>
			</div>
			</c:forEach>
		</div>
		</div>