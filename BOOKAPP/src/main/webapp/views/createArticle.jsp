<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link
	href="<%=request.getContextPath()%>/resources/source/css/createArticle.css"
	rel="stylesheet" />
<script src="<%=request.getContextPath()%>/resources/source/js/createArticle.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/source/css/menu.css">
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
	<jsp:include page="include/menu.jsp"></jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
			<form method="post" modelAttribute="article" role="form" action="<%=request.getContextPath() %>/excuteCreate" enctype="multipart/form-data">
				<div class="panel-group" id="accordion">
					<div class="panel panel-primary">	
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"><span class="glyphicon glyphicon-file">
								</span>POST NEW ARTICLE</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<input type="text" class="form-control" name ="title" placeholder="Title"
												required />
										</div>
										<div class="form-group">
											<textarea name ="content" class="form-control" placeholder="Content" rows="10"
												required></textarea>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 col-md-push-3">
										<div class="form-group">
											<label for="category" > Thể loại</label> <select
												class="form-control" id="category" name="type">
												<option>Trinh thám</option>
												<option>Kinh tế</option>
												<option>Văn Học</option>
												<option>Blog-Tổng hợp</option>
											</select>
										</div>
					</div> <!-- panel panel-primary -->
				</div> <!-- panel-group -->
								<div class="row">
									<div class="col-md-6 col-md-push-3">
										<div class="well well-sm well-primary">
											<div class="input-group image-preview">
												<input type="text"
													class="form-control image-preview-filename"
													disabled="disabled">
												<!-- don't give a name === doesn't send on POST/GET -->
												<span class="input-group-btn"> <!-- image-preview-clear button -->
													<button type="button"
														class="btn btn-default image-preview-clear"
														style="display: none;">
														<span class="glyphicon glyphicon-remove"></span> Clear
													</button> <!-- image-preview-input -->
													<div class="btn btn-default image-preview-input">
														<span class="glyphicon glyphicon-folder-open"></span> <span
															class="image-preview-input-title">Browse</span> <input
															type="file" name="fileDatas" accept="image/png, image/jpeg, image/gif"
															name="input-file-preview" />
														<!-- rename it -->
													</div>
												</span>
											</div>
											<!-- /input-group image-preview [TO HERE]-->
										</div>
									</div>
									</div> <!-- row1 -->
									<div class="row">
									<div class="col-md-6 col-md-push-3">
												<div class="form-group">
													<button type="submit" class="btn btn-success btn-block btn-sm">
														<span class="glyphicon glyphicon-floppy-disk"></span>Save
													</button>
													<button type="reset" class="btn btn-default btn-block btn-sm">
														<span></span>Reset
													</button>
												</div>
											
									</div>
								</div> <!-- row3 -->
							</div>
						</div>
					</div>
				</div>
				</form>
			</div>
		</div>
	</div>
</body>
<jsp:include page="include/footer.jsp"/>
</html>