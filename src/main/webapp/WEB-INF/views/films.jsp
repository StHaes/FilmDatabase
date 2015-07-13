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
<h1>All Movies</h1>
<table class="table table-striped">
  <th>Title</th>
  <c:forEach var="film" items="${films}">
    <tr>
      <td><a href="film?id=${film.id}">${film.title}</a></td>
      <td>${film.id}</td>
    </tr>
  </c:forEach>
</table>

</body>
</html>
