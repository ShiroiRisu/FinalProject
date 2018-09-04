<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
	${errorRegisterMessage} <br />
	<form name="regForm" method="POST" action="${pageContext.request.contextPath}/app/register">
		<input type="hidden" name="command" value="register" /> 
		Username:<br /> <input type="text" name="username" value="" /> <br /> 
		Password:<br /> <input type="password" name="password" value="" /> <br />
		Name:<br /> <input type="text" name="name" value="" /> <br />
		<input type="submit" value="Register" />
	</form>
	<hr />
	<a href="${pageContext.request.contextPath}/app/login">Login</a>
	<hr />
	Enc filter test: ${ pageContext.request.characterEncoding }
	<br />
</body>
</html>