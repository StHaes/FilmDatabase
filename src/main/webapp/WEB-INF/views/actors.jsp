<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 14/07/15
  Time: 10:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Actors</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container"><h1>All Actors</h1></div>
<div class="container"><table class="table table-striped">
  <th>Firstname</th>
  <th>Lastname</th>
  <th>Gender</th>
  <th> </th>
  <th> </th>
  <c:forEach var="actor" items="${actors}">
    <tr>
      <td><a>${actor.firstName}</a></td>
      <td>${actor.lastName}</td>
      <td>M</td>
      <td><a class="glyphicon glyphicon-cog btn btn-success" > Edit</a></td>
      <td><a class="glyphicon glyphicon-remove btn btn-danger" > Delete</a></td>
    </tr>
  </c:forEach>
</table></div>
<div class="container"><a class="glyphicon glyphicon-plus btn btn-info">Add an Actor</a></div>

</body>
</html>
