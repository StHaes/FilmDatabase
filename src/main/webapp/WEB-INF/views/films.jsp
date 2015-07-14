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
      <td><a class="glyphicon glyphicon-cog btn btn-success" href="/form?id=${film.id}"> Edit</a></td>
      <td><a class="glyphicon glyphicon-remove btn btn-danger" href="/deleteFilm?id=${film.id}"> Delete</a></td>
    </tr>
  </c:forEach>
</table></div>
<div class="container"><a class="glyphicon glyphicon-plus btn btn-info" href="/form">Add a movie</a>
  <a href="/" class="glyphicon glyphicon-home btn btn-primary"> Home</a></div>
</body>
</html>
