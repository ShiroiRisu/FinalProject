<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Title Page</title>
    <link rel="stylesheet" href="<c:url value="/webjars/bulma/0.7.1/css/bulma.min.css " />" />
    <link rel="stylesheet" href="<c:url value="/webjars/font-awesome/5.3.1/css/all.css" />" />
</head>

<body>
    <section class="hero is-primary is-bold">
        <div class="hero-body">
            <div class="container">
                <h1 class="title">
                    Hero title
                </h1>
                <h2 class="subtitle">
                    Hero subtitle
                </h2>
            </div>
        </div>
        
        <div class="hero-foot">
            <div class="tabs is-toggle is-toggle-rounded">
                <ul>
                    <li class="is-active">
                        <a>
                            <span class="icon is-small"><i class="fas fa-image" aria-hidden="true"></i></span>
                            <span>Pictures</span>
                        </a>
                    </li>
                    <li>
                        <a>
                            <span class="icon is-small"><i class="fas fa-music" aria-hidden="true"></i></span>
                            <span>Music</span>
                        </a>
                    </li>
                    <li>
                        <a>
                            <span class="icon is-small"><i class="fas fa-film" aria-hidden="true"></i></span>
                            <span>Videos</span>
                        </a>
                    </li>
                    <li>
                        <a>
                            <span class="icon is-small"><i class="far fa-file-alt" aria-hidden="true"></i></span>
                            <span>Documents</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    
    
    <section class="section">
        <div class="container">
            <div class="heading">
                <h1 class="title">Section</h1>
                <h2 class="subtitle">
                    A simple container to divide your page into <strong>sections</strong>, like the one you're currently
                    reading
                </h2>
                <div class="tabs is-toggle is-toggle-rounded">
                    <ul>
                        <li class="is-active">
                            <a>
                                <span class="icon is-small"><i class="fas fa-image" aria-hidden="true"></i></span>
                                <span>Pictures</span>
                            </a>
                        </li>
                        <li>
                            <a>
                                <span class="icon is-small"><i class="fas fa-music" aria-hidden="true"></i></span>
                                <span>Music</span>
                            </a>
                        </li>
                        <li>
                            <a>
                                <span class="icon is-small"><i class="fas fa-film" aria-hidden="true"></i></span>
                                <span>Videos</span>
                            </a>
                        </li>
                        <li>
                            <a>
                                <span class="icon is-small"><i class="far fa-file-alt" aria-hidden="true"></i></span>
                                <span>Documents</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    
    <footer class="footer">
        <div class="container">
            <div class="content has-text-centered">
                <p>
                    <strong>Bulma</strong> by <a href="http://jgthms.com">Jeremy Thomas</a>. The source code is licensed
                    <a href="http://opensource.org/licenses/mit-license.php">MIT</a>. The website content is licensed
                    <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/">CC ANS 4.0</a>.
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

</html>