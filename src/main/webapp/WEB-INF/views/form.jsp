<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
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
    <title></title>
</head>
<body>
<sf:form commandName="film" action="/makeFilm" class="container">

  <div>
    <span class="label label-default">Title:</span>
    <div><sf:input path="title" /></div>
    <div><sf:errors path="title"/></div>
    <span class="label label-default">Length</span>
    <div> <sf:input path="length"/></div>
    <span class="label label-default">Director: </span>
    <div><sf:input path="director" class="md-12" /></div>
    <span class="label label-default">Description:</span>
    <div><sf:input path="summary" class="md-12"/></div>
    <span class="label label-default">Trailer Link: </span>
    <div><sf:input path="trailerLink" class="md-12"/></div>
    <sf:hidden path="id"/>
    <div><sf:button type="submit" class="btn btn-success">Add a Movie</sf:button></div>

  </div>
</sf:form>

</body>
</html>
