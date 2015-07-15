<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 10/07/15
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${film.title}</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body >
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
  <div class="panel panel-warning">
<div class="panel-heading"><h3>${film.title}</h3></div>
<div class="panel-body">

  <div><p>Director: ${film.director}</p></div>
  <div><p>Length: ${film.length} min</p></div>
  <div><p>Genre: ${film.genre}</p></div>
</div>
    </div>
<div class="panel panel-default">
  <div class="panel-heading"><h3>Summary: </h3></div>
  <div class="panel-body"><p>${film.summary}</p></div>
  <div class="panel-heading"><h3>Cast: </h3></div>
  <div class="panel-body"><c:forEach var="actor" items="${film.cast}">
    <p>${actor.filmCharacter.name} played by <a href="/actor?id=${actor.id}">${actor.firstName} ${actor.lastName}</a></p>
  </c:forEach></div>
  <div class="panel-heading"><h3>Trailer: </h3></div>
  <div class="panel-body"><iframe width="560" height="315" src="${film.trailer}?autoplay=1" frameborder="0" allowfullscreen></iframe> </div>
</div>
  <div><a href="/films" class="glyphicon glyphicon-arrow-left btn btn-default"> Back</a></div>
</div>
</div>
</body>
</html>
