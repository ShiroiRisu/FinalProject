<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Authentication</title>
<link rel="stylesheet" href="<c:url value="/webjars/bulma/0.7.1/css/bulma.min.css" />" />
<link rel="stylesheet" href="<c:url value="/webjars/font-awesome/5.3.1/css/all.css" />" />

<style type="text/css">
.hero {
	background: black url(../img/hero.png) center/cover;
}
</style>

</head>

<body class="text-center">
<body>
  <section class="hero is-primary is-fullheight">
    <!-- Hero header: will stick at the top -->
    <div class="hero-head">
      <header class="navbar is-spaced">
        <div class="container">
          <div class="navbar-brand">
            <span class="navbar-burger burger" data-target="navbarMenuHeroC">
              <span></span>
              <span></span>
              <span></span>
            </span>
          </div>
          <div id="navbarMenuHeroC" class="navbar-menu">
            <div class="navbar-start">
              <a href="#" class="navbar-item is-active"> Home </a>
              <a href="#" class="navbar-item"> Login </a>
              <a href="#" class="navbar-item"> Documentation </a>
              <span class="navbar-item">
                <a class="button is-success is-inverted">
                  <span class="icon">
                    <i class="fab fa-github"></i>
                  </span>
                  <span>Download</span>
                </a>
              </span>
            </div>
          </div>
        </div>
      </header>
    </div>

    <!-- Hero body: center -->
    <div class="hero-body">
      <div class="container">
        <h1 class="title is-1">Late for a date?</h1>
        <h2 class="subtitle is-3">Make it fashionably late!</h2>
      </div>
    </div>

    <div class="hero-foot">
      <div class="tabs is-toggle is-toggle-rounded">
        <ul>
          <li class="is-active">
            <a>
              <span class="icon is-small">
                <i class="fas fa-image" aria-hidden="true"></i>
              </span>
              <span>Pictures</span>
            </a>
          </li>
          <li>
            <a>
              <span class="icon is-small">
                <i class="fas fa-music" aria-hidden="true"></i>
              </span>
              <span>Music</span>
            </a>
          </li>
          <li>
            <a>
              <span class="icon is-small">
                <i class="fas fa-film" aria-hidden="true"></i>
              </span>
              <span>Videos</span>
            </a>
          </li>
          <li>
            <a>
              <span class="icon is-small">
                <i class="far fa-file-alt" aria-hidden="true"></i>
              </span>
              <span>Documents</span>
            </a>
          </li>
        </ul>
      </div>
    </div>
  </section>


  <section class="section">
    <div class="container">
      <div class="columns is-centered">
        <div class="column is-half">
          <h3>Welcome</h3>
          <hr />
          <c:choose>
            <c:when test="${role=='GUEST'}">
						Hey there little guest, pls login lul o/ <br />
              <form method="POST" action="${pageContext.request.contextPath}/app/login">

                <input type="submit" value="Login" />
              </form>
            </c:when>
            <c:otherwise>
              <c:out value="${userName}" />, henlo!
					<hr />
              <form method="POST" action="${pageContext.request.contextPath}/app/">
                <input type="hidden" name="command" value="logout" />
                <input type="submit" value="logout" />
              </form>
            </c:otherwise>
          </c:choose>
          <a href="${pageContext.request.contextPath}/jsp/view.jsp">View</a>
          <hr />
          Enc filter test: ${ pageContext.request.characterEncoding }
          <br />
          <hr />
          Role: ${role}
          <br />
          <hr />
          MaxInactiveInterval: ${pageContext.session.maxInactiveInterval}
          <br />
          ID session: ${pageContext.session.id}
          <br />
        </div>
      </div>
    </div>
  </section>

  <footer class="footer">
    <div class="container">
      <div class="content has-text-centered">
        <p>
          <strong>Bulma</strong> by
          <a href="http://jgthms.com">Jeremy Thomas</a>
          . The source code is licensed
          <a href="http://opensource.org/licenses/mit-license.php">MIT</a>
          . The website content is licensed
          <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/">CC ANS 4.0</a>
          .
        </p>
        <p>
          <a class="icon" href="https://github.com/jgthms/bulma">
            <i class="fab fa-github"></i>
          </a>
        </p>
      </div>
    </div>
  </footer>
</body>
</body>

</html>