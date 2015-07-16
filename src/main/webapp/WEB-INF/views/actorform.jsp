<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 14/07/15
  Time: 13:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add actors</title>
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


    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="/films" class="glyphicon glyphicon-film"> Movies</a></li>
        <li><a href="/actors" class="glyphicon glyphicon-user"> Actors</a></li>
        <li><a href="/userform" class="glyphicon glyphicon-list-alt"> Register</a></li>
      </ul>
    </div>
  </div>
</nav>
<sf:form commandName="actor" action="/makeActor" class="container form">
<div><h1>Add/Edit and Actor</h1></div>
  <div class="input-group">
    <span class="input-group-addon">First name</span>
    <sf:input path="firstName" class="form-control"/>
    <sf:errors path="firstName"/>
  </div>

  <div class="input-group">
    <span class="input-group-addon">Last name</span>
    <sf:input path="lastName" class="form-control"/>
  </div>
  <div> </div>
  <div class="input-group">
    <span class="input-group-addon">Biography</span>
    <sf:textarea path="bio" class="form-control"/>
  </div>

  <div class="input-group">
    <span class="input-group-addon">Gender</span>
    <sf:select path="gender" items="${genders}" class="form-control"/>
  </div>

  <div class="input-group">
    <span class="input-group-addon">Img link</span>
    <sf:input path="img" class="form-control"/>
  </div>

  <sf:hidden path="id"/>
  <div class = "input-group"><sf:button href="/actors" type="submit" class="btn btn-success">Save</sf:button>
      <a href="/actors" class="glyphicon glyphicon-arrow-left btn btn-default"> Back</a></div>

</sf:form>

</body>
</html>
