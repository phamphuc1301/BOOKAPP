<%@ page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ERROR PAGE</title>
</head>
<body>
	<c:if test="${error eq 404 }">
		<img style="width: 100%" src="resources/images/WOlr3.png">
	</c:if>
	<c:if test="${error eq 500 }">
		<img src="resources/images/Error.JPG">
	</c:if>
</body>
</html>