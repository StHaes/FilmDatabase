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
    <title>${film.id}</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body ><div class="container">
<h1>${film.title}</h1>
<div><h2>Director: ${film.director}</h2></div>
<div><h3>Length: ${film.length} min</h3></div>
<div><h3>Genre: ${film.genre}</h3></div>
<div style="padding: 25px">
  <p>${film.summary}</p>
  <div><iframe width="560" height="315" src="${film.trailer}" frameborder="0" allowfullscreen></iframe> </div>
</div>
</div>
</div>
</body>
</html>
