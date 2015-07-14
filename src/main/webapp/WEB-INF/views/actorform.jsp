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
    div{
      margin-bottom: 15px;
    }
  </Style>
</head>
<body>
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

  <sf:hidden path="id"/>
  <div><sf:button href="/actors" type="submit" class="btn btn-success">Add an actor</sf:button>
      <a href="/actors" class="glyphicon glyphicon-arrow-left btn btn-default"> Back</a></div>

</sf:form>

</body>
</html>
