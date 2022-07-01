<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>HOME</title>

    <link rel="stylesheet" type="text/css" href="${path}/resources/css/boardInfo.css"> <!-- css연결 -->

    <script src="home.js" defer></script>

</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>    <!-- google Libraries -->

<body>
<div class="container">
    <header class="header"></header>

    <nav class="nav"></nav>

    <main class="main">
        <div class="wrap-article">
            <div class="boardT" id="boardT">
                <strong>${boardInfo.title}</strong><br>
                <span>${boardInfo.writer}</span><br>
                <span>${boardInfo.createTime}</span>
            </div>
            <div class="boardM" id="boardM">
                <p>${boardInfo.content}</p>
            </div>
            <div class="boardB" id="boardB">
                <strong id="thumbsUp" value="">321<a onclick="thumbsUp()" class="marking" id="markingUp">Good</a></strong>
                <strong id="thumbsDown" value="">123<a onclick="thumbsDown()" class="marking" id="markingDown">bad</a></strong>
                <p>Agreement</p>
                <p>Agreement</p>
                <p>Agreement</p>
                <p>Agreement</p>
                <p>Agreement</p>
            </div>
        </div>
    </main>
    <aside class="aside">

    </aside>
    <footer class="footer">

    </footer>
</div>
<script>
    // 'request'라는 id를 가진 버튼 클릭 시 실행.
    function thumbsUp() {
        alert("Thumb's UP");
        // json 형식으로 데이터 set
        $.ajax({
            type: "POST",    // HTTP method type(GET, POST) 형식이다.
            url: "http://localhost:8080/thumbup",      // 컨트롤러에서 대기중인 URL 주소이다.
            data: "json",
            success: function(data) {       // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                if(data == "true") {
                alert("Success");
                document.getElementById('#thumbsUp').style.backgroundColor = "green";
                }
            },
            error: function() {     // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                alert("통신실패");
            }
        });
    };
    function thumbsDown() {
        alert("Thumb's DOWN");
        // json 형식으로 데이터 set
        $.ajax({
            type: "POST",    // HTTP method type(GET, POST) 형식이다.
            url: "http://localhost:8080/thumbdown",      // 컨트롤러에서 대기중인 URL 주소이다.
            data: "json",
            success: function(data) {       // 비동기통신의 성공일경우 success콜백으로 들어옵니다. 'res'는 응답받은 데이터이다.
                alert("Success");
            },
            error: function() {     // 비동기 통신이 실패할경우 error 콜백으로 들어옵니다.
                alert("통신실패");
            }
        });
    }
</script>
</body>
</html>