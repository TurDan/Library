<%--
  Created by IntelliJ IDEA.
  User: Danka
  Date: 20.09.2022
  Time: 14:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Usuń książkę</title>
</head>
<body>
<h1> Czy chcesz usunąć książkę?</h1>
<h2>${book.title}</h2>
<form method="post">
<input type="submit" name="delete" value="Usuń">
<input type="submit" value="Anuluj">
</form>
</body>
</html>
