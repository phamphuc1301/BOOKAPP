<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/source/admin/images/favico.png">
<meta charset="UTF-8">
<meta http-equiv="Refresh" content="5;url=<%=request.getContextPath() %>/admin/login">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Opp ! Something was wrong</title>
</head>
<body>
	<center style="text-align:center">
		<h3>Bạn không có quyền truy cập page này. Vui lòng chờ trong giây lát</h3>
	<img alt="access denied" src="<%=request.getContextPath()%>/resources/img/access.gif">
	</center>
</body>
</html>