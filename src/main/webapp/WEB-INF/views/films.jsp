<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 10/07/15
  Time: 16:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Movies</title>
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
        <li><a href="/userform" class="glyphicon glyphicon-list-alt"> Register</a></li>
      </ul>
    </div>
  </div>
</nav>
<div class="container"><h1>All Movies</h1></div>
<div class="container"><table class="table table-striped">
  <th>Title</th>
    <th>Director</th>
    <th>Length</th>
    <th> </th>
    <th> </th>
  <c:forEach var="film" items="${films}">
    <tr>
      <td><a href="film?id=${film.id}">${film.title}</a></td>
      <td>${film.director}</td>
      <td>${film.length} minutes</td>
      <td><a class="glyphicon glyphicon-cog btn btn-default" href="/form?id=${film.id}"> Edit</a></td>
      <td><a class="glyphicon glyphicon-remove btn btn-default" href="/deleteFilm?id=${film.id}"> Delete</a></td>
    </tr>
  </c:forEach>
</table></div>
<div class="container"><a class="glyphicon glyphicon-plus btn btn-default" href="/form"> Add movie</a>

</body>
</html>
