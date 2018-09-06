<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../img/favicon.ico">

<title>Are you lost?</title>

<!-- Bootstrap core CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/font-awesome/5.3.1/css/all.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/jquery/3.0.0/jquery.min.js">
<link rel="stylesheet" href="${pageContext.request.contextPath}/webjars//popper.js/1.14.3/popper.min.js">
<link rel="stylesheet" href="${pageContext.request.contextPath}/webjars/bootstrap/4.1.3/js/bootstrap.min.js">

<!-- Custom styles for this template -->
<link href="../css/login.css" rel="stylesheet">
</head>

<body>
  <div class="modal-dialog text-center">
    <div class="col-sm-8 main-section">
      <div class="modal-content">
        <c:if test="${successRegisterMessage != null}">
          <div class="alert alert-success">
            <strong>Success!</strong>
            <c:out value="${successRegisterMessage}" />
          </div>
        </c:if>
        <c:if test="${errorLoginMessage != null}">
          <div class="alert alert-danger">
            <strong>Error!</strong>
            <c:out value="${errorLoginMessage}" />
          </div>
        </c:if>
        <div class="col-12 user-img">
          <img src="../img/kiss.png">
        </div>
        <form method="post" class="col-12">
          <input type="hidden" name="command" value="login">
          <div class="form-group">
            <input name="username" value="" type="text" class="form-control" placeholder="username" required autofocus>
          </div>
          <div class="form-group">
            <input name="password" value="" type="password" class="form-control" placeholder="password" required>
          </div>
          <button type="submit" class="btn">
            <i class="far fa-paper-plane">Login</i>
          </button>
        </form>
        <div class="col-12 forgot">
          <a href="#">Forgot pass?</a>
        </div>
      </div>
    </div>
  </div>
</body>

</html>