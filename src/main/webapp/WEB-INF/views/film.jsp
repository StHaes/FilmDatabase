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
<body ><div class="container">
<h1>${film.title}</h1>
<div><h3>Director: ${film.director}</h3></div>
<div><h3>Length: ${film.length} min</h3></div>
<div><h3>Genre: ${film.genre}</h3></div>
<div style="padding: 25px">
  <div><h3>Summary: </h3></div>
  <p>${film.summary}</p>
  <h3>Cast: </h3>
  <div><c:forEach var="actor" items="${film.cast}">
    <p>${actor.filmCharacter.name} played by <a href="/actor?id=${actor.id}">${actor.firstName} ${actor.lastName}</a></p>
  </c:forEach></div>
  <div><h3>Trailer: </h3></div>
  <div><iframe width="560" height="315" src="${film.trailer}?autoplay=1" frameborder="0" allowfullscreen></iframe> </div>
  <div><a href="/films" class="glyphicon glyphicon-arrow-left btn btn-default"> Back</a></div>
</div>
</div>
</div>
</body>
</html>
