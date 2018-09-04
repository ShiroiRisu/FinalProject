<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>
    <h3>Welcome</h3>
	<hr />
<c:choose>
    <c:when test="${role=='GUEST'}">
        Hey there little guest, pls login lul o/ <br />
        <form method="POST" action = "${pageContext.request.contextPath}/app/login">

		<input type="submit" value="Login" />
	</form>
    </c:when>    
    <c:otherwise>
	<c:out value="${userName}" />, henlo!
	<hr />
	<form method="POST" action = "${pageContext.request.contextPath}/app/">
		<input type="hidden" name="command" value="logout" />
		<input type="submit" value="logout" />
	</form>
    </c:otherwise>
</c:choose>
	<hr />
	Enc filter test: ${ pageContext.request.characterEncoding } <br /> 
	<hr />
	Role: ${role} <br />
	<hr />
	MaxInactiveInterval: ${pageContext.session.maxInactiveInterval} <br />
	ID session: ${pageContext.session.id} <br />
</body>
</html>