<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>HOME</title>
    <link rel="stylesheet" type="text/css" href="${path}/resources/css/home.css"> <!-- css연결 -->
</head>
<body>
    <div class="container">
<%--        <header class="header"></header>--%>
        <c:import url="header.jsp"></c:import>
        <nav class="nav"></nav>

        <main class="main">
            <div class="wrap1" id="wrap1">
                <table id="board1">
                    <th>No.</th>
                    <th>Category</th>
                    <th>Title</th>
                    <th>Writer</th>
                    <th>Date</th>
                    <c:forEach items="${list}" var="list">
                    <tr>
                        <td>${list.id}</td>
                        <td>${list.categoryId}</td>
                        <td><a href="boardinfo/${list.id}">${list.title}</a></td>
                        <td>${list.writer}</td>
                        <td>${list.createTime}</td>
                    </tr>
                    </c:forEach>
                </table>
            </div>
            <div class="wrap2" id="wrap2">
                <table id="board2">
                    <th>No.</th>
                    <th>Title</th>
                    <th>Writer</th>
                    <th>Date</th>
                    <tr>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                    </tr>
                </table>
            </div>

            <div class="wrap3" id="wrap3">
                <table id="board3">
                    <th>No.</th>
                    <th>Title</th>
                    <th>Writer</th>
                    <th>Date</th>
                    <tr>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                    </tr>
                </table>
            </div>
            <div class="wrap4" id="wrap4">
                <table id="board4">
                    <th>No.</th>
                    <th>Title</th>
                    <th>Writer</th>
                    <th>Date</th>
                    <tr>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>2</td>
                        <td>3</td>
                        <td>4</td>
                    </tr>
                </table>
            </div>
        </main>
        <aside class="aside">

        </aside>
<%--        <footer class="footer"></footer>--%>
        <c:import url="footer.jsp"></c:import>
    </div>

</body>
</html>