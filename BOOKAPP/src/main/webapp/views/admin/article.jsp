<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src ="<%=request.getContextPath() %>/resources/source/admin/js/submitstatus.js"></script>
</head>
<body>
	<div class="chat-panel panel panel-default">
		<div class="panel-heading">
			<i class="fa fa-comments fa-fw"></i> Article
			<div class="btn-group pull-right">
				<button type="button" class="btn btn-default btn-xs dropdown-toggle"
					data-toggle="dropdown">
					<i class="fa fa-chevron-down"></i>
				</button>
				<ul class="dropdown-menu slidedown">
					<li><a href="#"> <i class="fa fa-refresh fa-fw"></i>
							Refresh
					</a></li>
					<li><a href="#"> <i class="fa fa-check-circle fa-fw"></i>
							Available
					</a></li>
					<li><a href="#"> <i class="fa fa-times fa-fw"></i> Busy
					</a></li>
					<li><a href="#"> <i class="fa fa-clock-o fa-fw"></i> Away
					</a></li>
					<li class="divider"></li>
					<li><a href="#"> <i class="fa fa-sign-out fa-fw"></i> Sign
							Out
					</a></li>
				</ul>
			</div>
		</div>
		<!-- /.panel-heading -->
		<div class="panel-body">
			<ul class="chat">
				<c:forEach items="${allArticle}" var="article">
					<li class="left clearfix"><span class="chat-img pull-left">
							<img src="${article.images }" height="50" width="50"
							alt="User Avatar" class="img-circle" />
					</span>
						<div class="chat-body clearfix">
							<div class="header">
								<strong class="primary-font">${article.authorOfArticle.userName }</strong>
								<small class="pull-right text-muted"> <i
									class="fa fa-clock-o fa-fw"></i>
								<fmt:formatDate type="date" value="${article.date}" />
								</small>
							</div>
							<p>${article.title }</p>
							<form action="">
								<label class="radio-inline"><input type="radio" name="optradio" id="check1" <c:if test="${article.status eq 'Publisher'}"> checked</c:if> >Publisher</label> 
								<label class="radio-inline"><input type="radio" name="optradio" id="check2"<c:if test="${article.status eq 'Draft'}"> checked</c:if>>Draft</label>
								</label>
								<button type="button" id="submitStatus">Submit</button>
							</form>
						</div></li>
				</c:forEach>
			</ul>
		</div>
		<!-- /.panel-body -->
		<div class="panel-footer">
			<div class="input-group">
				<input id="btn-input" type="text" class="form-control input-sm"
					placeholder="Type your message here..." /> <span
					class="input-group-btn">
					<button class="btn btn-warning btn-sm" id="btn-chat">Send
					</button>
				</span>
			</div>
		</div>
		<!-- /.panel-footer -->
	</div>
</body>
