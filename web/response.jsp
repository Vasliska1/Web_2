<%--
  Created by IntelliJ IDEA.
  User: Vasilisa
  Date: 04-Oct-20
  Time: 7:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html lang="ru">
<head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="assets/images/dead.jpg" type="image/jpg">
    <link rel="stylesheet" href="assets/css/style.css" type="text/css">
    <title>Lab_2</title>
</head>

<body>
<div class="header">
    <p>Группа P3232</p>
    <p>Лисицина Василиса, Бирих Владислава</p>
    <p>Вар. 2833</p>
</div>

<div class="link">
    <a href="index.jsp?in=true">
        <img src="./assets/images/dead.jpg" width="80" height="80"></a>
</div>

<div class="centerBorder">

    <table>

        <tr>
            <th>X</th>
            <th>Y</th>
            <th>R</th>
            <th>Текущее время</th>
            <th>Время <br> выполнения</th>
            <th>Результат</th>
        </tr>

        <c:forEach var="par" items="${requestScope.table}">
            <tr>
                <td>${par.x}</td>
                <td>${par.y}</td>
                <td>${par.r}</td>
                <td>${par.currentDate}</td>
                <td>${par.runTime}</td>
                <td>${par.result}</td>
            </tr>
        </c:forEach>

    </table>

</div>

</body>
</html>
