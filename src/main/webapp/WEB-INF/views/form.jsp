<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 13/07/15
  Time: 10:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Form</title>
  <link rel="stylesheet" href="style.css"/>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container"><h1>Add/edit in the database.</h1></div>
<div> </div>
<sf:form commandName="film" action="/makeFilm" class="container">

  <div class="container">
    <span class="label label-default">Title:</span>
    <div><sf:input path="title" /></div>
    <div><sf:errors path="title"/></div>
    <span class="label label-default">Length</span>
    <div> <sf:input path="length"/></div>
    <span class="label label-default">Director: </span>
    <div><sf:input path="director" class="md-12" /></div>
    <span class="label label-default">Genre: </span>
    <span class="label label-default">Description:</span>
    <div><sf:textarea path="summary" class="md-12"/></div>
    <span class="label label-default">Trailer Link: </span>
    <div><sf:input path="trailerLink" class="md-12"/></div>
    <sf:hidden path="id"/>
    <div><sf:button type="submit" class="btn btn-success">Add a Movie</sf:button></div>

  </div>
</sf:form>

</body>
</html>
