<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <!--- basic page needs
    ================================================== -->
    <title>Read Article</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/css/article.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/theme/css/vendor.css">
   	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/source/css/menu.css">
   	<link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
   	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/source/fontawesome/font-awesome.css">
</head>
<body id="top">
    <jsp:include page="include/menu.jsp"></jsp:include>
   	<c:set var = "string1" value = "${fn:substring(article.content, 0, 2000)}" />
	<c:set var = "string2" value = "${fn:substring(article.content, 2001, fn:length(article.content))}" />
    <!-- s-content
    ================================================== -->
    <section class="s-content s-content--narrow s-content--no-padding-bottom">
            <div class="s-content__header col-full">
                <h1 class="s-content__header-title">
                    Content Article
                </h1>
                <ul class="s-content__header-meta">
                    <li class="date"><span class="fa fa-calendar"> </span><fmt:formatDate type = "date" 
        								value = "${article.date}" /></li>
                </ul>
            </div> <!-- end s-content__header -->

            <div class="col-full s-content__main">

                <p class="lead">${article.title }</p>
                
                <p>${string1}</p>
                <center>
                <img src="${article.images }"/>
                </center>
                <p>${string2}</p>
                <div class="s-content__pagenav">
                    <div class="s-content__nav">
                        <span class="s-content__prev">
                            <a href="#0" rel="prev">
                                <span>Previous Post</span>
                            </a>
                        </span>
                        <span class="s-content__next">
                            <a href="#0" rel="next">
                                <span>Next Post</span>
                            </a>
                        </span>
                    </div>
                </div> <!-- end s-content__pagenav -->

            </div> <!-- end s-content__main -->


        <!-- comments
        ================================================== -->
        <div class="comments-wrap">

            <div id="comments" class="row">
                <div class="col-full">

                    <h3 class="h2">${fn:length(comment) } Comments</h3>

                    <!-- commentlist -->
                    <ol class="commentlist">
						<c:forEach items="${comment }" var="commentValue">
                        <li class="depth-1 comment">

                            <div class="comment__avatar">
                            <c:if test="${empty commentValue.user}">
                            	<img width="50" height="50" class="avatar" src="https://uploads.scratch.mit.edu/users/avatars/395/5762.png" alt="">
                            </c:if>
                            <c:if test="${not empty commentValue.user}"></c:if>
                                <img width="50" height="50" class="avatar" src="${commentValue.user.images }" alt="">
                            </div>

                            <div class="comment__content">
                                <div class="comment__info">
                                <c:if test="${empty commentValue.user}">
                            		<cite>${commentValue.userName }</cite>
                            	</c:if>
                            	<c:if test="${not empty commentValue.user}">
                            		<cite>${commentValue.user.userName }</cite>
                            	</c:if>
                                    <div class="comment__meta">
                                        <time class="comment__time"><span class="fa fa-clock-o"></span><fmt:formatDate type = "date" 
        								value = "${commentValue.date}" /></time>
                                    </div>
                                </div>

                                <div class="comment__text">
                                <p>${commentValue.content }</p>
                                </div>

                            </div>

                        </li> <!-- end comment level 1 -->
                        </c:forEach>
                    </ol> <!-- end commentlist -->


                    <!-- respond
                    ================================================== -->
                    <div class="respond">

                        <h3 class="h2">Add Comment</h3>

                        <form name="contactForm" id="contactForm" method="post" action="<%=request.getContextPath()%>/comment" modelAttribute="commentContent">
                            <sec:authorize access="hasRole('ROLE_ANONYMOUS')">
								<div class="form-field">
                                        <input name="userName" type="text" id="cName" class="full-width" placeholder="Your Name" value="">
                                </div>
                                <div class="form-field">
                                        <input name="email" type="text" id="cEmail" class="full-width" placeholder="Your Email" value="">
                                </div>
							</sec:authorize>
								<input style="display:none" type="text" value="${article.articleId }" name ="articleId"/>

                                <div class="message form-field">
                                    <textarea name="content" id="cMessage" class="full-width" placeholder="Your Message"></textarea>
                                </div>

                                <button type="submit" class="submit btn--primary btn--large full-width">Submit</button>

                        </form> <!-- end form -->

                    </div> <!-- end respond -->

                </div> <!-- end col-full -->

            </div> <!-- end row comments -->
        </div> <!-- end comments-wrap -->

    </section> <!-- s-content -->


    <!-- s-extra
    ================================================== -->
    <jsp:include page="include/footer.jsp"></jsp:include>
</body>
<sript src="<%=request.getContextPath() %>/resources/source/js/jquery-3.2.1.min.js"></sript>
<sript src="<%=request.getContextPath() %>/resources/source/js/comment.js"></sript>
</html>