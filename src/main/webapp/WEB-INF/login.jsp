<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Document</title>

    <link rel="stylesheet" href="login.css" type="text/css">

    <script type=text/javascript src="쇼핑ui.js" defer></script>

</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>    <!-- google Libraries -->

<body>
<div class="container">
    <header class="header"></header>

    <nav class="nav"></nav>

    <main class="main">
        <div class="optional"></div>
        <div class="frontCard">
            <table class="clauses">

                <form action="logined" method="post" id="form">
                    <table> <!-- input을 정렬하려면 테이블 테그를 사용해 -->
                        <tr>
                            <td>ID</td>
                            <td><input type="text" name="userId" id="userId" placeholder="ID"/></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type="password" name="password1" id="password1" placeholder="Password"/></td>
                        </tr>
                    </table>
                    <br><br>
                    <input type="submit" value="SUBMIT"/>
                    <br><br>
                </form>
        </div>
    </main>
    <aside class="aside">
        <a href="#">
            <img src="http://imgc.1300k.com/aaaaaib/goodsdesc/215024/87/215024871089_D1.jpg" alt="">
        </a>
    </aside>
    <footer class="footer"></footer>
</div>
</body>
</html>