<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html class="no-js" lang="en">
<head>

    <!--- basic page needs
    ================================================== -->
    <meta charset="utf-8">
    <title>Audio Post Format - Philosophy</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- mobile specific metas
    ================================================== -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- CSS
    ================================================== -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/theme/css/base.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/theme/css/vendor.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/theme/css/main.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/fontawesome/font-awesome.css">
   	<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/source/css/menu.css">

    <!-- script
    ================================================== -->
    <script src="js/modernizr.js"></script>
    <script src="js/pace.min.js"></script>

    <!-- favicons
    ================================================== -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

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
                    This Is an Article.
                </h1>
                <ul class="s-content__header-meta">
                    <li class="date">${article.date }</li>
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
                        <div class="s-content__prev">
                            <a href="#0" rel="prev">
                                <span>Previous Post</span>
                                Tips on Minimalist Design 
                            </a>
                        </div>
                        <div class="s-content__next">
                            <a href="#0" rel="next">
                                <span>Next Post</span>
                                Less Is More 
                            </a>
                        </div>
                    </div>
                </div> <!-- end s-content__pagenav -->

            </div> <!-- end s-content__main -->


        <!-- comments
        ================================================== -->
        <div class="comments-wrap">

            <div id="comments" class="row">
                <div class="col-full">

                    <h3 class="h2">5 Comments</h3>

                    <!-- commentlist -->
                    <ol class="commentlist">

                        <li class="depth-1 comment">

                            <div class="comment__avatar">
                                <img width="50" height="50" class="avatar" src="images/avatars/user-01.jpg" alt="">
                            </div>

                            <div class="comment__content">

                                <div class="comment__info">
                                    <cite>Itachi Uchiha</cite>

                                    <div class="comment__meta">
                                        <time class="comment__time">Dec 16, 2017 @ 23:05</time>
                                        <a class="reply" href="#0">Reply</a>
                                    </div>
                                </div>

                                <div class="comment__text">
                                <p>Adhuc quaerendum est ne, vis ut harum tantas noluisse, id suas iisque mei. Nec te inani ponderum vulputate,
                                facilisi expetenda has et. Iudico dictas scriptorem an vim, ei alia mentitum est, ne has voluptua praesent.</p>
                                </div>

                            </div>

                        </li> <!-- end comment level 1 -->

                        <li class="thread-alt depth-1 comment">

                            <div class="comment__avatar">
                                <img width="50" height="50" class="avatar" src="images/avatars/user-04.jpg" alt="">
                            </div>

                            <div class="comment__content">

                                <div class="comment__info">
                                <cite>John Doe</cite>

                                <div class="comment__meta">
                                    <time class="comment__time">Dec 16, 2017 @ 24:05</time>
                                    <a class="reply" href="#0">Reply</a>
                                </div>
                                </div>

                                <div class="comment__text">
                                <p>Sumo euismod dissentiunt ne sit, ad eos iudico qualisque adversarium, tota falli et mei. Esse euismod
                                urbanitas ut sed, et duo scaevola pericula splendide. Primis veritus contentiones nec ad, nec et
                                tantas semper delicatissimi.</p>
                                </div>

                            </div>

                            <ul class="children">

                                <li class="depth-2 comment">

                                    <div class="comment__avatar">
                                        <img width="50" height="50" class="avatar" src="images/avatars/user-03.jpg" alt="">
                                    </div>

                                    <div class="comment__content">

                                        <div class="comment__info">
                                            <cite>Kakashi Hatake</cite>

                                            <div class="comment__meta">
                                                <time class="comment__time">Dec 16, 2017 @ 25:05</time>
                                                <a class="reply" href="#0">Reply</a>
                                            </div>
                                        </div>

                                        <div class="comment__text">
                                            <p>Duis sed odio sit amet nibh vulputate
                                            cursus a sit amet mauris. Morbi accumsan ipsum velit. Duis sed odio sit amet nibh vulputate
                                            cursus a sit amet mauris</p>
                                        </div>

                                    </div>

                                    <ul class="children">

                                        <li class="depth-3 comment">

                                            <div class="comment__avatar">
                                                <img width="50" height="50" class="avatar" src="images/avatars/user-04.jpg" alt="">
                                            </div>

                                            <div class="comment__content">

                                                <div class="comment__info">
                                                <cite>John Doe</cite>

                                                <div class="comment__meta">
                                                    <time class="comment__time">Dec 16, 2017 @ 25:15</time>
                                                    <a class="reply" href="#0">Reply</a>
                                                </div>
                                                </div>

                                                <div class="comment__text">
                                                <p>Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius. Claritas est
                                                etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum.</p>
                                                </div>

                                            </div>

                                        </li>

                                    </ul>

                                </li>

                            </ul>

                        </li> <!-- end comment level 1 -->

                        <li class="depth-1 comment">

                            <div class="comment__avatar">
                                <img width="50" height="50" class="avatar" src="images/avatars/user-02.jpg" alt="">
                            </div>

                            <div class="comment__content">

                                <div class="comment__info">
                                <cite>Shikamaru Nara</cite>

                                <div class="comment__meta">
                                    <time class="comment-time">Dec 16, 2017 @ 25:15</time>
                                    <a class="reply" href="#">Reply</a>
                                </div>
                                </div>

                                <div class="comment__text">
                                <p>Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem.</p>
                                </div>

                            </div>

                        </li>  <!-- end comment level 1 -->

                    </ol> <!-- end commentlist -->


                    <!-- respond
                    ================================================== -->
                    <div class="respond">

                        <h3 class="h2">Add Comment</h3>

                        <form name="contactForm" id="contactForm" method="post" action="">
                            <fieldset>

                                <div class="form-field">
                                        <input name="cName" type="text" id="cName" class="full-width" placeholder="Your Name" value="">
                                </div>

                                <div class="form-field">
                                        <input name="cEmail" type="text" id="cEmail" class="full-width" placeholder="Your Email" value="">
                                </div>

                                <div class="form-field">
                                        <input name="cWebsite" type="text" id="cWebsite" class="full-width" placeholder="Website" value="">
                                </div>

                                <div class="message form-field">
                                    <textarea name="cMessage" id="cMessage" class="full-width" placeholder="Your Message"></textarea>
                                </div>

                                <button type="submit" class="submit btn--primary btn--large full-width">Submit</button>

                            </fieldset>
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

</html>