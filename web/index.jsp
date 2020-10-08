<%-- Created by IntelliJ IDEA. --%>

<%@ page import="java.util.stream.Stream" %>
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

<div class="basis">
    <div class="chooseElement">
        <form class="validateForm" name="validateForm" action="ControllerServlet" onsubmit="return validate(this);"
              method="POST">

            <div class="chooseX">
                <label class="chooseXTitle"><p>Введите значение X от -3 до 5:</p></label>
                <input class="enterY" name="enterX" type="text"><br><br>
            </div>

            <div class="chooseY">
                <label class="chooseYTitle"><p>Выберите Y:</p></label>
                <label><input type="button" id="1" name="chooseR" value="-3"></label>
                <label><input type="button" id="2" name="chooseR" value="-2"></label>
                <label><input type="button" id="3" name="chooseR" value="-1"></label>
                <label><input type="button" id="4" name="chooseR" value="0"></label>
                <label><input type="button" id="5" name="chooseR" value="1"></label>
                <label><input type="button" id="6" name="chooseR" value="2"></label>
                <label><input type="button" id="7" name="chooseR" value="3"></label>
                <label><input type="button" id="8" name="chooseR" value="4"></label>
                <label><input type="button" id="9" name="chooseR" value="5"></label>
            </div>

            <div class="chooseY">
                <label class="chooseRTitle"><p>Введите значение R от 2 до 5:</p></label>
                <input class="enterR" name="enterR" type="text">
            </div>


            <div class="button">
                <input class="butt" type="submit" name="sendButton" value="Отправить">
            </div>


            <div class="graf">
                <img id="image" src="assets/images/graphik.png" width="200" height="200" alt="logo">
            </div>

            <div id="message"></div>
        </form>
    </div>
</div>

    <?php
		include('header.php');
	?>

    <center>
        <div class="footer">
            <a href="https://se.ifmo.ru/">
                <img id="VT_logo" src="assets/images/vt_logo.png" width="100" height="100 " alt="logo">
            </a>
            <span class="center">ПИП 2020 г.</span>
        </div>
    </center>


    <div class="svg">
        <svg width="300" height="300" class="svg-graph">

            <polygon class="przamoyg" points="100,150 150,150 150,250, 100,250"
                     fill="#FF00CC" stroke="black"></polygon>

            <polygon class="treyg" points="150,150 250,150 150,200"
                     fill="#FF00CC" stroke="black"></polygon>

            <line class="line" x1="0" x2="300" y1="150" y2="150" stroke="black"></line>
            <line class="line" x1="150" x2="150" y1="0" y2="300" stroke="black"></line>


            <text class="text" x="195" y="140">R/2</text>
            <text class="text" x="248" y="140">R</text>

            <text class="text" x="40" y="140">-R</text>
            <text class="text" x="90" y="140">-R/2</text>

            <text class="text" x="160" y="105">R/2</text>
            <text class="text" x="160" y="55">R</text>

            <text class="text" x="160" y="205">-R/2</text>
            <text class="text" x="160" y="255">-R</text>

            <text class="text" x="290" y="170">X</text>
            <text class="text" x="160" y="13">Y</text>


        </svg>
    </div>


    <script src="check.js"></script>


</body>
</html>
