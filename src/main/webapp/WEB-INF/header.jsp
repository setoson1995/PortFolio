<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>K-Village</title>

    <link rel="stylesheet" type="text/css" href="${path}/resources/css/header.css"><!-- css연결 -->
    <style type="text/css">
        @import url("../resources/css/header.css");
    </style>
<%-- /src/main/webapp/WEB-INF/header.css --%>
    <script src="https://kit.fontawesome.com/a7b80abafb.js" crossorigin="anonymous"></script> <!-- 폰트어썸 연결 -->
</head>
<body>
<header>
    <div class="logoImage">
        <i class="fa-solid fa-earth-asia"></i>
    </div>
    <div class="logotext">
        <a href="home"><b>K-Village</b></a> <!-- b또는 strong태그로 글자굵게 -->
    </div>

    <div class="headMenu">
        <a href="#">News</a>
        <a href="write">글쓰기</a>
        <a href="#">Celebrity</a>
        <a href="#">Funny</a>
    </div>

    <div class="forUser">
    <%    // 로그별 온오프
        if(session.getAttribute("K-Village") == null) {%>
        <a href="join" class="log">Join</a> |
        <a href="login" class="log">Login</a>
        <%} else {%>
        <a href="logout" class="log"><%=session.getAttribute("K-Village") %> : LogOut</a> |
        <a href="myPage">
            <i class="fa-solid fa-user"></i>
        </a>
        <%}%>
    </div>


</header>
</body>
</html>