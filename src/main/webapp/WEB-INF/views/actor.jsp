<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 14/07/15
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${actor.firstName} ${actor.lastName}</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Home</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/films" class="glyphicon glyphicon-film"> Movies</a></li>
                <li><a href="/actors" class="glyphicon glyphicon-user"> Actors</a></li>
                <li><a href="/userform" class="glyphicon glyphicon-list-alt"> Login</a></li>
            </ul>
        </div>
    </div>
</nav>
<div class="container">
    <div class="panel panel-success">
        <div class="panel-heading"><h3>${actor.firstName} ${actor.lastName}</h3></div>
        <div class="panel-body"><p>${actor.bio}</p></div>

    </div>
    <div class="container"><a href="/actors" class="glyphicon glyphicon-arrow-left btn btn-default"> Back</a></div>
</div>
</body>
</html>
