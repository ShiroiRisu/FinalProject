<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
  <c:if test="${errorRegisterMessage != null}">
    <div class="alert alert-success">
      <strong>Error:</strong>
      <c:out value="${errorRegisterMessage}" />
    </div>
  </c:if>
  <form name="regForm" method="POST">
    <input type="hidden" name="command" value="register" />
    Username:
    <br />
    <input type="text" name="username" value="" />
    <br />
    Password:
    <br />
    <input type="password" name="password" value="" />
    <br />
    Name:
    <br />
    <input type="text" name="name" value="" />
    <br />
    <input type="submit" value="Register" />
  </form>
  <hr />
  <a href="${pageContext.request.contextPath}/app/login">Login</a>
  <hr />
  Enc filter test: ${ pageContext.request.characterEncoding }
  <br />
</body>
</html>