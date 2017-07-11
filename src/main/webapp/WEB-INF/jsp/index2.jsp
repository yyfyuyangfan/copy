<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title><spring:message code="greet"/></title>

    <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <style type="text/css">
        img{
            margin:0 auto;
        }
    </style>
</head>

<body>
<%--<a href="<c:url value="/welcome"/>"><h1>Hello World</h1></a>--%>

<header id="duobook-hero" data-section="home" role="banner" >
    <div class="duobook-overlay"></div>
    <div class="duobook-intro">
        <div class="container">
            <div class="row">

                <div class="col-md-6 duobook-text">
                    <h2 class="to-animate intro-animate-1">Keep a good story going.</h2>
                    <p class="to-animate intro-animate-2">With Duobook, you can read or listen any time you want — we'll always save your place.</p>
                    <p class="to-animate intro-animate-3">
                        <a class="app-store-link" href="https://itunes.apple.com/app/apple-store/id1177007125?pt=359707&ct=duobookcom&mt=8" >
                            <img src="https://duobook.com/images/appstorebadge.svg" alt="Available on the App Store" />
                        </a>
                        <small style="display:block;font-size:0.5em;font-style:italic;margin-top:1em;">Android coming in 2017: <a href="#" data-nav-section="subscribe" style="color:white;text-decoration:underline" class="js-check-android">Notify me!</a></small>
                    </p>
                </div>
                <div id="image-swap" class="col-md-6 text-right duobook-intro-img to-animate intro-animate-4">
                    <img src="https://duobook.com/images/hero-hand-text.png" srcset="images/hero-hand-text@2x.png 2x" alt="Duobook for iOS">
                    <img id="imgtgl" src="https://duobook.com/images/hero-hand-audio.png" srcset="https://duobook.com/images/hero-hand-audio@2x.png" alt="Duobook for iOS">
                </div>

            </div>
        </div>
    </div>
</header>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><spring:message code="bookstore"/></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <form class="navbar-form navbar-right">
                <div class="btn-group">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    语言(Language) <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="?langType=zh">中文</a></li>
                    <li><a href="?langType=en">English</a></li>
                </ul>
                </div>
            </form>
        </div>
    </div>
</nav>

<div class="container">

    <form class="form-signin" action="<c:url value="/welcome"/>" method="post">
        <h2 class="form-signin-heading"><spring:message code="greet"/></h2>
        <label for="inputEmail" class="sr-only">Email address</label>
        <input type="text" name="username" id="inputEmail" class="form-control" placeholder="<spring:message code="email"/>" required autofocus>
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="<spring:message code="password"/>" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit"><spring:message code="login"/></button>
    </form>
    <form action="<c:url value="/logout"/>" method="post">
        <button class="btn btn-lg btn-danger btn-block" type="submit"><spring:message code="reset"/></button>
    </form>

    <%--<form action="<c:url value="/testJms"/>" method="post">
        <button class="btn btn-lg btn-danger btn-block" type="submit">Jms</button>
    </form>--%>

</div> <!-- /container -->

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>



