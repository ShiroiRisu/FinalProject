<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>Welcome</h3>
	<hr />
	${user}, hello!
	<hr />
	<!-- change to POST + hidden -->
	<a href="controller?command=logout">Logout</a>
</body>
</html>