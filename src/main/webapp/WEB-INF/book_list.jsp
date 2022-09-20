<%--
  Created by IntelliJ IDEA.
  User: Danka
  Date: 20.09.2022
  Time: 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
  <title>Lista książek</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');
    body {font-family: 'Open Sans', sans-serif; font-size: 3em;}
    td{pading:20px}
    tr:nth-child(2n) { background-color:lightsteelblue }
    tr:hover { background-color: rgba(0, 0, 255, 0.75)}
    a { text-decoration: none; border: 3px solid green; background-color:powderblue}
    a.delete { text-decoration: none; border: 3px red; background-color:rosybrown}
  </style>
</head>

<body>
<h1>Lista Książek</h1>
<table>
  <tr>
    <th>Tytuł</th>
    <th>Autor</th>
    <th>Opis</th>
    <th>Edycja</th>
    <th>Delete</th>
  </tr>
  <c:forEach items="${bookList}" var="book">
    <tr>
      <td>${book.title}</td>
      <td>${book.author} </td>
      <td>${book.description}</td>
      <td><a href="/book/edit/${book.id}">Edytuj</a></td>
      <td><a href="/book/delete/${book.id}" class="delete">Usuń</a></td>

       </tr>
  </c:forEach>
</table>
</body>
</html>
