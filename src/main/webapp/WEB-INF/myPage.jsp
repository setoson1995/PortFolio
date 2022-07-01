<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>MyPage</title>

    <link rel="stylesheet" href="${path}/resources/css/myPage.css" type="text/css">

    <script src="쇼핑ui.js" defer></script>

</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>    <!-- google Libraries -->

<body>
<div class="container">
<%--    <header class="header"></header>--%>
    <c:import url="header.jsp"></c:import>
    <nav class="nav">
        <div class="nav-bar">
            <a id="myPage" onclick="myPage()">My Page</a><br>
            <a id="security" onclick="security()">Security</a><br>
            <a id="NoMenu" onclick="NoMenu()">미정</a><br>
            <a id="closeAccount" onclick="closeAccount()">Close Account</a><br>
        </div>
    </nav>

    <main class="main">
        <div class="userPageFront" id="userPageFrontPage"><!-- 자기쓴글, 댓글등 볼 수 있음 -->
            <h1>My Page</h1><br>
            <div class="front">
                <div class="front1">
                    <strong>내가쓴글</strong>
                    <table>
                        <th>Title</th>
                        <th>Writer</th>
                        <th>Category</th>
                        <th>Date</th>
                        <tr>
                            <td>1</td>
                            <td>2</td>
                            <td>3</td>
                            <td>4</td>
                        </tr>
                    </table>
                </div>

                <div class="front2">
                    <strong>댓글</strong>
                    <table>
                        <th>Content</th>
                        <th>Date</th>
                        <tr>
                            <td>댓글내용이다~</td>
                            <td>적은 날짜이다~</td>
                        </tr>
                    </table>
                </div>

                <div class="front3">
                    <p>유저 등급이나 어떤 카테고리에 얼마나 적었는지?아니면 봤는지를 보여주는 그래프 좋을거 같은데</p>
                </div>
            </div>
        </div>
        <!-- 회원정보수정 -->
        <div class="userPageMiddle" id="userPageMiddlePage">
            <h1>Security</h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <form action="joinUser" method="post" id="form" class="userPageMiddle-form">
                <table> <!-- input을 정렬하려면 테이블 테그를 사용해 -->
                    <tr>
                        <td>ID</td>
                        <td><p>UserID</p></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password1" id="password1" placeholder="Password"/></td>
                    </tr>
                    <tr>
                        <td>Recheck Password</td>
                        <td><input type="password" name="password2" id="password2" placeholder="Password"/></td>
                    </tr>
                    <tr>
                        <td>UserName</td>
                        <td><input type="text" name="name" id="name" placeholder="Name"/></td>
                    </tr>
                    <tr>
                        <td>Birth</td>
                        <td><input type="date" name="birth" id="birth" min="1111-01-01" max="9999-12-31" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" id="email" placeholder="Email"/></td>
                    </tr>
                    <tr>
                        <td>Post Code:</td>
                        <td><input type="text" name="postCode" id="postCode" placeholder="Post Code" onclick="postSearch()" value=""/></td>
                    </tr>
                    <tr>
                        <td>Adress</td>
                        <td><input type="text" name="address" id="address" placeholder="Adress" onclick="postSearch()" value=""/></td>
                    </tr>
                    <tr>
                        <td>Adress detail</td>
                        <td><input type="text" name="addressInfo" id="addressInfo" placeholder="Adress" value=""/></td>
                    </tr>
                    <tr>
                        <td>Contect Number</td>
                        <td><input type="text" name="contectNumber" id="contectNumber" placeholder="phone" minlength="11" maxlength="11"/></td>
                    </tr>
                    <tr>
                        <td>Type : </td>
                        <td>User Rank</td>
                        <td><input type="hidden" name="kind" id="kind" value="User"/></td>
                    </tr>
                </table>
                <br><br>
                <input type="submit" value="SUBMIT"/>
                <br><br>
            </form>
        </div>
        <!-- 미정 -->
        <div class="userPageback" id="userPagebackPage">

        </div>
        <!-- 회원탈퇴 -->
        <div class="closeAccount" id="closeAccountPage">
            <h1>Close Account</h1>
            <div class="wrap-closeAccount-info">
                <form class="closeAccount-form">
                    <input type="password" name="password1" placeholder="Password"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" name="submit"/>
                </form>
                <br>
                <strong>※ 탈퇴를 진행하면 되돌릴 수 없습니다!</strong>
            </div>

        </div>
    </main>
    <aside class="aside">
        <a href="#">
            <img src="http://imgc.1300k.com/aaaaaib/goodsdesc/215024/87/215024871089_D1.jpg" alt="">
        </a>
    </aside>
<%--    <footer class="footer"></footer>--%>
    <c:import url="footer.jsp"></c:import>
</div>
<script>
    // nav-ber menu Controller
    function myPage() {
        document.getElementById("userPageFrontPage").style.display = "flex";
        document.getElementById("userPageMiddlePage").style.display = "none";
        document.getElementById("userPagebackPage").style.display = "none";
        document.getElementById("closeAccountPage").style.display = "none";
    }
    function security() {
        document.getElementById("userPageFrontPage").style.display = "none";
        document.getElementById("userPageMiddlePage").style.display = "flex";
        document.getElementById("userPagebackPage").style.display = "none";
        document.getElementById("closeAccountPage").style.display = "none";
    }
    function NoMenu() {
        document.getElementById("userPageFrontPage").style.display = "none";
        document.getElementById("userPageMiddlePage").style.display = "none";
        document.getElementById("userPagebackPage").style.display = "flex";
        document.getElementById("closeAccountPage").style.display = "none";
    }
    function closeAccount() {
        document.getElementById("userPageFrontPage").style.display = "none";
        document.getElementById("userPageMiddlePage").style.display = "none";
        document.getElementById("userPagebackPage").style.display = "none";
        document.getElementById("closeAccountPage").style.display = "flex";
    }
</script>
</body>
</html>