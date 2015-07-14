<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: jeansmits
  Date: 14/07/15
  Time: 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
  <!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

  <!-- Latest compiled and minified JavaScript -->
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<sf:form commandName="user" action="/makeUser" class="container">

  <div class="container">
    <span class="label label-default">Username:</span>
    <div><sf:input path="name" /></div>
    <div><sf:errors path="name"/></div>
    <span class="label label-default">Password: </span>
    <div> <sf:input type="password" path="password"/></div>
    <sf:hidden path="id"/>
    <div><sf:button type="submit" class="btn btn-success">Register</sf:button></div>

  </div>
</sf:form>

</body>
</html>
