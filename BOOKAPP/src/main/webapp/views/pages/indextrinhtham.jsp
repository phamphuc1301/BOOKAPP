<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<div class="wrappercard">
			<h3 class="category">Trinh thám</h3>
			<c:forEach items="${listTrinhTham }" var="tt" end="4">
				<div class="card">
				<img
					src="${tt.images }"
					alt="Avatar" style="width: 100%">
				<div class="wrapper2">
					<div>
						<b>Author : ${tt.authorOfArticle.userName }</b>
					</div>
					<p class="linkToArticle"><a href="<%=request.getContextPath()%>/readArticle?id=${tt.articleId}">${tt.title }</a></p>
				</div>
			</div>
			</c:forEach>
		</div>