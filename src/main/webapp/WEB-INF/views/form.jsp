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
    <Style>
        div{
            margin-bottom: 15px;
        }
    </Style>
</head>
<body>
<div class="container"><h1>Add/edit in the database.</h1></div>
<div></div>
<sf:form commandName="film" action="/makeFilm" class="container form">

    <div class="input-group">
        <span class="input-group-addon">Title</span>
        <sf:input path="title" class="form-control"/>
        <sf:errors path="title"/>
    </div>

    <div class="input-group">
        <span class="input-group-addon">Length</span>
        <sf:input path="length" class="form-control"/>
    </div>
    <div> </div>
    <div class="input-group">
        <span class="input-group-addon">Director</span>
        <sf:input path="director" class="form-control"/>
    </div>

    <div class="input-group">
        <span class="input-group-addon">Genre</span>
        <sf:select path="genre" items="${genres}"/></div>
    <div class="input-group">
        <span class="input-group-addon">Description</span>
        <sf:textarea path="summary" class="form-control"/>
    </div>

    <div class="input-group">
        <span class="input-group-addon">Trailer Link</span>
        <sf:input path="trailerLink" class="form-control"/>
    </div>

    <sf:hidden path="id"/>
    <div><sf:button type="submit" class="btn btn-success">Add a Movie</sf:button></div>

</sf:form>

</body>
</html>
