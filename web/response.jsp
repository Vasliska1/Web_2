<%--
  Created by IntelliJ IDEA.
  User: Vasilisa
  Date: 04-Oct-20
  Time: 7:49 PM
  To change this template use File | Settings | File Templates.
--%>
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

<div class="centerBorderT">

    <div class="link">
        <a href="index.jsp?in=true">
            <img src="./assets/images/back.jpg" width="80" height="50"></a>
    </div>

    <table>

        <tr>
            <th>X</th>
            <th>Y</th>
            <th>R</th>
            <th>Текущее время</th>
            <th>Время выполнения</th>
            <th>Результат</th>
        </tr>
        <%
            ArrayList<HashMap<String, Object>> results;

            results = (ArrayList<HashMap<String, Object>>)
                    request.getServletContext().getAttribute("table");
            for (HashMap<String, Object> map : results) {
        %>
        <tr>

            <td><% out.print(map.get("x"));%></td>
            <td><% out.print(map.get("y"));%></td>
            <td><% out.print(map.get("r"));%></td>
            <td><% out.print(map.get("currentDate"));%></td>
            <td><% out.print(map.get("runTime"));%></td>
            <td><% out.print(map.get("result"));%></td>
            <%
                }
            %>
        </tr>


    </table>

</div>

</body>
</html>
