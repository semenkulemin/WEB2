<%--
  Created by IntelliJ IDEA.
  User: mi
  Date: 24.10.2020
  Time: 1:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>WEB2</title>
    <link href="style/style.css" rel="stylesheet">
    <link href="style/button.css" rel="stylesheet">
</head>

<body>

<header class="animation shades">
    <h1>Проверка попадания точки в график</h1>
    <h2>Кулёмин Семён & Какунин Константин, Р3230</h2>
    <h2>Вариант 2612</h2>
</header>
<table id="wholeContent" class="shades">

    <tr>
        <td>
            <h3>Выберите координату X:</h3>
            <select class="animation" name="x" id="x">
                <option value="-5">-5</option>
                <option value="-4">-4</option>
                <option value="-3">-3</option>
                <option value="-2">-2</option>
                <option value="-1">-1</option>
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>

            <h3>Выберите координату Y:</h3>
            <input type="text" name="y" id="y" maxlength="5" placeholder="(-5;5)">

            <h3>Выберите R:</h3>
            <input class="input-r" type="radio" name="r" value="1">1
            <input class="input-r" type="radio" name="r" value="2">2
            <input class="input-r" type="radio" name="r" value="3">3
            <input class="input-r" type="radio" name="r" value="4">4
            <input class="input-r" type="radio" name="r" value="5">5
            <br><br>
        </td>
        <td>
            <svg id="picture" xmlns="http://www.w3.org/2000/svg" width="400" height="400">
                <%-- Triangle --%>
                <polygon points="200,200 200,60 340,200" fill="#123C69"></polygon>
                <%-- Rectangle piece--%>
                <rect x="200" y="200" width="140" height="70" fill="#123C69"></rect>
                <%-- 1/4 of Circle piece (sector) --%>
                <path d="M 200 200 L60 200 A 140 140 1 0 1 200 60" fill="#123C69"></path>
                <%-- Axis 'X' --%>
                <polygon points="15,200 60,200 60,197 60,203 60,200 130,200 130,197 130,203 130,200 270,200 270,197 270,203 270,200
                                    340,200 340,197 340,203 340,200 385,200 378,197 385,200 378,203 385,200"
                         stroke="grey"></polygon>
                <%-- Axis 'Y' --%>
                <polygon points="200,385 200,340 197,340 203,340 200,340 200,270 197,270 203,270 200,270 200,130 197,130 203,130
                                    200,130 200,60 197,60 203,60 200,60 200,15 197,22 200,15 203,22 200,15"
                         stroke="grey"></polygon>
                <%-- Dots --%>
                <circle r="2" cx="200" cy="200" fill="grey"></circle>
                <circle id="dot" r="3" cx="200" cy="200" fill="grey"></circle>
                <%-- Point in axis 'X' --%>
                <text class="point" x="53" y="195">-R</text>
                <text class="point" x="118" y="195">-R/2</text>
                <text class="point" x="262" y="195">R/2</text>
                <text class="point" x="335" y="195">R</text>
                <%-- Point in axis 'Y' --%>
                <text class="point" x="205" y="64">R</text>
                <text class="point" x="205" y="134">R/2</text>
                <text class="point" x="205" y="274">-R/2</text>
                <text class="point" x="205" y="344">-R</text>

            </svg>
        </td>
    </tr>
    <tr>
        <td colspan="2" id="notification"> </td>
    </tr>
    <tr>
        <td colspan="2"><h3><span id="output_shit"></span></h3></td>
    </tr>
</table>

<button class="shadow-btn" id="button_result">
	<span class="btn-inner">
		<span class="text">Р а с с ч и т а т ь</span>
		<i class="fa fa-long-arrow-right"></i>
	</span>
    <span class="shadow"></span>
</button>
<br><br><br>
<jsp:include page="table.jsp" />
<br><br><br>
<footer class="animation shades">
    <br>
    Sugar Daddy corporation. 2020 <br>
    <a href="https://kirkorov.ru/">
        <img src="images/logo.jpg">
    </a>
</footer>
<script src="scripts/validation.js"></script>
<script>

</script>
</body>
</html>
