<%--
  Created by IntelliJ IDEA.
  User: Danka
  Date: 20.09.2022
  Time: 14:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Gra komputerowa</title>
</head>
<body>
<form: form method="post" action="/game/save" modelAttribute="game">
  <form: input path="title" placeholder="tytuł gry"/>
  <form: input path="author" placeholder="autor gry"/>
  <form: input path="description" placeholder="opis"/>
  <input typa=submit" value="Zapisz">
</form:>

</body>
</html>
