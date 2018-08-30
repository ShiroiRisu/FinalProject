<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Main</title>
</head>
<body>
	<h3>Welcome</h3>
	<hr />
	${user}, hello!
	<hr />
	
	<form method="POST" action="${pageContext.request.contextPath}/api">
		<input type="submit" name="command" value="logout" />
	</form>

	Enc filter test: ${ pageContext.request.characterEncoding }
	<br /> Role: ${role}
	<br />
	<hr />
	Counter: ${counter}
	<br />
	<hr />
	MaxInactiveInterval: ${pageContext.session.maxInactiveInterval}
	<br /> ID session: ${pageContext.session.id}
	<br /> Lifecycle: ${lifecycle}
	<br />
</body>
</html>