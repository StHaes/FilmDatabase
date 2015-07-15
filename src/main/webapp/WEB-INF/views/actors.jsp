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
<div class="container"><h1>All Actors</h1></div>
<div class="container"><table class="table table-striped">
  <th>Firstname</th>
  <th>Lastname</th>
  <th>Gender</th>
  <th> </th>
  <th> </th>
  <c:forEach var="actor" items="${actors}">
    <tr>
      <td><a href="actor?id=${actor.id}">${actor.firstName}</a></td>
      <td>${actor.lastName}</td>
      <td>${actor.gender}</td>
      <td><a class="glyphicon glyphicon-cog btn btn-default" href="/actorform?id=${actor.id}"> Edit</a></td>
      <td><a class="glyphicon glyphicon-remove btn btn-default" href="/deleteActor?id=${actor.id}"> Delete</a></td>
    </tr>
  </c:forEach>
</table></div>
<div class="container"><a  href="/actorform" class="glyphicon glyphicon-plus btn btn-default">Add Actor</a>


</body>
</html>
