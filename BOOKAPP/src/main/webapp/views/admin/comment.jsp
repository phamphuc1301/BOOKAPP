<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div class="col-lg-12">
 <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> Comment TimeLine
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        <c:forEach var="comment" items="${comments }" varStatus="status" end="${comments.size()/2+1 }">
                            <ul class="timeline">
                            <c:if test="${status.index % 2 == 0 }">
                            	<li>
                                    <div class="timeline-badge"><i class="fa fa-check"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                        <a href="<%=request.getContextPath()%>/readArticle?id=${comment.article.articleId}"><h4 class="timeline-title">${comment.article.title }</h4></a>
                                            
                                            <p><span class="fa fa-calendar"> </span><fmt:formatDate type = "date" 
        								value = "${comment.date}" />
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>${comment.content }</p>
                                        </div>
                                    </div>
                                </li>
                            </c:if>
                            <c:if test="${not (status.index % 2 == 0) }">
                                <li class="timeline-inverted">
                                    <div class="timeline-badge warning"><i class="fa fa-credit-card"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title"><a href="<%=request.getContextPath()%>/readArticle?id=${comment.article.articleId}"><h4 class="timeline-title">${comment.article.title }</h4></a></h4>
                                        	<p><span class="fa fa-calendar"> </span><fmt:formatDate type = "date" 
        										value = "${comment.date}" />
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>${comment.content }</p>
                                        </div>
                                    </div>
                                </li>
                              </c:if>
                                </ul>
                                </c:forEach>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    </div>
</body>
</html>