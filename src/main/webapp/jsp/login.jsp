<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	${successRegisterMessage} <br />
	<form name="loginForm" method="POST" action="${pageContext.request.contextPath}/api/login">
		<input type="hidden" name="command" value="login" /> 
		Login:<br /> 
		<input type="text" name="username" value="" /> <br />
		Password:<br /> 
		<input type="password" name="password" value="" /> <br />
		${errorLoginPassMessage} <br /> 
		${wrongAction} <br /> 
		${nullPage} <br />
		<input type="submit" value="Log in" />
	</form>
	<hr />
	<form method="POST" action="${pageContext.request.contextPath}/api/register">
		<input type="hidden" name="command" value="register" />
		<input type="submit" value="Register" />
	</form>
	<hr />
	Enc filter test: ${ pageContext.request.characterEncoding } <br/>
</body>
</html>