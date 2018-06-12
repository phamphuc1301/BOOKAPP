<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SB Admin 2 - Bootstrap Admin Theme</title>
    <link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/source/admin/images/favico.png">
    <link href="<%=request.getContextPath() %>/resources/source/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/source/fontawesome/font-awesome.css">
    <link href="<%=request.getContextPath() %>/resources/source/admin/css/metisMenu.min.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/source/admin/css/sb-admin-2.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/source/admin/css/morris.css" rel="stylesheet">
    <link href="<%=request.getContextPath() %>/resources/source/fontawesome/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div id="wrapper">
    	<jsp:include page="navbar.jsp"/>
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Hello Admin</h1>
                </div>
				<jsp:include page="contentdashboard.jsp"></jsp:include>
    </div>
    <script src="<%=request.getContextPath() %>/resources/source/js/jquery-3.2.1.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/source/js/bootstrap.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/source/admin/js/metisMenu.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/source/admin/js/raphael.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/source/admin/js/sb-admin-2.js"></script>
    <script src="<%=request.getContextPath() %>/resources/source/admin/js/index.js"></script>
</body>

</html>
