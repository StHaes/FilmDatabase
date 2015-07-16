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
        .input-group{
            margin-top: 15px;
        }
    </Style>
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
<div class="container"><h1>Add/edit in the database.</h1></div>
<div></div>
<sf:form commandName="film" action="/makeFilm" class="container form">

    <div class="input-group">
        <span class="input-group-addon">Title</span>
        <sf:input path="title" class="form-control"/>
        <sf:errors path="title" cssstyle= "color:red"/>
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
        <sf:select path="genre" items="${genres}" class="form-control"/></div>
    <div class="input-group">
        <span class="input-group-addon">Description</span>
        <sf:textarea path="summary" class="form-control"/>
    </div>

    <div class="input-group">
        <span class="input-group-addon">Trailer Link</span>
        <sf:input path="trailer" class="form-control"/>
    </div>

    <sf:hidden path="id"/>
    <div class="input-group"><sf:button type="submit" class="btn btn-success">Save</sf:button>
        <a href="/films" class="glyphicon glyphicon-arrow-left btn btn-default"> Back</a></div>

</sf:form>

</body>
</html>
