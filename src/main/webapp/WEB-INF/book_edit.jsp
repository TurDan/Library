<%--
  Created by IntelliJ IDEA.
  User: Danka
  Date: 20.09.2022
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edycka Książki</title>
</head>
<body>
<form method="post">
  <input tyoe="hidden" name="id" value="${book.id}">
  <input name="title" placeholder="tytuł" value="${book.title}">
  <input name="author" placeholder="autor" value="${book.author}">
  <input name="description" placeholder="opis" value="${book.description}">
  <input type="submit" value="Edytuj książkę">
</form>
</body>
</html>
