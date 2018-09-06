<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" href="../img/favicon.ico">
<title>FIR not to be beautiful</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css">
<link href="../css/main.css" rel="stylesheet">
</head>

<body>
  <!-- Navigation -->

  <nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
    <div class="container-fluid">
      <a href="#" class="navbar-brand">
        <img src="../img/fir.png" width="300" height="45">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item"><a href="#" class="nav-link">Home</a></li>
          <li class="nav-item"><a href="#" class="nav-link">About</a></li>
          <li class="nav-item"><a href="#" class="nav-link">Services</a></li>
          <li class="nav-item"><a href="#" class="nav-link">Team</a></li>
          <li class="nav-item"><a href="#" class="nav-link">Feedback</a></li>
          <c:choose>
            <c:when test="${sessionScope.role == 'GUEST'}">
              <li class="nav-item"><a href="${pageContext.request.contextPath }/app/login" class="nav-link">Login</a></li>
            </c:when>
            <c:otherwise>
              <li class="nav-item">
                <form method="post">
                  <input type="hidden" name="command" value="logout">
                  <input type="submit" class="btn btn-danger nav-link" value="Logout">
                </form>
              </li>
            </c:otherwise>
          </c:choose>

        </ul>
      </div>
    </div>
  </nav>

  <!--- Image Slider -->
  
  <div id="slides" class="carousel slide" data-ride="carousel">
    <ul class="carousel-indicators">
      <li data-target="#slides" data-slide-to="0" class="active"></li>
      <li data-target="#slides" data-slide-to="1"></li>
      <li data-target="#slides" data-slide-to="2"></li>
    </ul>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img src="../img/car00.jpg">
        <div class="carousel-caption text-right">
          <h1 class="display-2">Late for a date?</h1>
          <h3>Make it fashionably late!</h3>
          <a href="${pageContext.request.contextPath}/app/register" class="btn btn-outline-light btn-lg">Not a member yet?</a>
          <a href="${pageContext.request.contextPath}/app/login" class="btn btn-primary btn-lg">Get em looks!</a>
        </div>
      </div>
      <div class="carousel-item">
        <img src="../img/car03.png">
        <div class="carousel-caption text-left">
          <h2 class="display-3">Stay young</h2>
          <h3>Stay beautiful</h3>
        </div>
      </div>
      <div class="carousel-item">
        <img src="../img/car02.jpg">
      </div>
    </div>
  </div>

  <!--- Connect -->

  <div class="container-fluid padding">
    <div class="row text-center padding">
      <div class="col-12">
        <h2>connect</h2>
      </div>
      <div class="col-12 social padding">
        <a target="_blank" rel="noopener noreferrer" href="https://www.instagram.com/shiroi.risu/">
          <i class="fab fa-instagram"></i>
        </a>
      </div>
    </div>
  </div>

  <!--- Footer -->

  <footer>
    <div class="container-fluid padding">
      <div class="row text-center">
        <div class="col-md-4">
          <img src="../img/logo-rs.png">
          <hr class="light">
          <p>phone</p>
          <p>email</p>
          <p>city</p>
        </div>
        <div class="col-md-4">
          <hr class="light">
          <h5>hours</h5>
          <hr class="light">
          <p>moday</p>
          <p>sunday</p>
        </div>
        <div class="col-md-4">
          <hr class="light">
          <h5>hours</h5>
          <hr class="light">
          <p>phone</p>
          <p>email</p>
          <p>city</p>
        </div>
        <div class="col-12">
          <hr class="light-100">
          <h5>&copy; shiroi.risu</h5>
        </div>
      </div>
    </div>
  </footer>

</body>

</html>