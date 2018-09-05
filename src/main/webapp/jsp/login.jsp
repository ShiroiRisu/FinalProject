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

<!--<style type="text/css">
.hero {
	<!--background: black url(../img/hero.png) center/cover;
}
</style>-->

</head>

<body>
  <section class="hero is-black">
    <!-- Hero header: will stick at the top -->
    <div class="hero-head">
      <header class="navbar is-spaced">
        <div class="container">
          <div class="navbar-brand">
            <a class="navbar-item">
              <img src="../img/kiss.png" alt="Logo">
            </a>
            <span class="navbar-burger burger" data-target="navbarMenuHeroC">
              <span></span>
              <span></span>
              <span></span>
            </span>
          </div>
          <div id="navbarMenuHeroC" class="navbar-menu">
            <div class="navbar-end">
              <div class="field is-grouped">
                <span class="navbar-item">
                  <a class="bd-tw-button button" data-social-network="Twitter" data-social-action="tweet" data-social-target="http://localhost:4000" target="_blank" href="">
                    <span class="icon">
                      <i class="fab fa-twitter"></i>
                    </span>
                    <span> Tweet </span>
                  </a>
                </span>
                <span class="navbar-item">
                  <a class="button is-primary" href="https://github.com/jgthms/bulma/releases/download/0.7.1/bulma-0.7.1.zip">
                    <span class="icon">
                      <i class="fas fa-download"></i>
                    </span>
                    <span>Download</span>
                  </a>
                </span>

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
        </div>
      </header>
    </div>
    <!-- Hero body: center -->
    <div class="hero-body">
      <div class="container">
        <div class="columns">
          <div class="column">First column</div>
          <div class="column"></div>
          <div class="column">Third column</div>
        </div>
      </div>
    </div>
  </section>


  <section class="section">
    <div class="container">
      <div class="columns is-centered">
        <div class="column is-half">
          <div class=${error }>
            <button class="delete"></button>
            error
          </div>
          <form class="form-group" method="POST" action="${pageContext.request.contextPath}/app/login" id="sec">
            <input type="hidden" name="command" value="login" />
            <div class="field">
              <label class="label">Username</label>
              <div class="control">
                <input class="input" type="text" placeholder="Enter username here" name="username" value="" required>
              </div>
            </div>
            <div class="field">
              <label class="label">Password</label>
              <div class="control">
                <input class="input" type="password" placeholder="Enter password here" name="password" value="" required>
              </div>
            </div>
            <div class="field">
              <div class="control">
                <button class="button is-primary">Submit</button>
              </div>
            </div>
          </form>
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

<script type="text/javascript">
	(function() {
		var burger = document.querySelector('.burger');
		var nav = document.querySelector('#' + burger.dataset.target);

		burger.addEventListener('click', function() {
			burger.classList.toggle('is-active');
			nav.classList.toggle('is-active');
		});
	})();
</script>

</html>