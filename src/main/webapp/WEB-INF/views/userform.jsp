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
    <style>
        .input-group{
            margin-top: 15px;
        }
    </style>
</head>
<body>
<sf:form commandName="user" action="/makeUser" class="container-form">
    <div class="container"><h3>Please enter your desired username and password</h3></div>
    <div class="container">
        <div class="input-group">
            <span class="input-group-addon">Username</span>
            <sf:input path="name" class="form-control"/>
            <sf:errors path="name"/>
        </div>
        <div class="input-group">
            <span class="input-group-addon">Password </span>
            <sf:input type="password" path="password" class="form-control"/></div>
        <sf:hidden path="id"/>
        <div class="input-group"><sf:button type="submit" class="btn btn-success">Register</sf:button>
            <a href="/" class="glyphicon glyphicon-arrow-left btn btn-default"> Back</a></div>

    </div>
</sf:form>

</body>
</html>
