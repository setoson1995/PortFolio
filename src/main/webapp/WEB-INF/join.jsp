<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Document</title>

    <link rel="stylesheet" href="${path}/resources/css/join.css" type="text/css">

    <script src="join.js" defer></script>

</head>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>    <!-- google Libraries -->

<body>
<div class="container">
    <header class="header"></header>

    <nav class="nav"></nav>

    <main class="main">
        <div class="opaci"></div>
        <div class="frontCard">
                <table>
                    <tr>
                        <td>
                            <p>이용약관(필수) <input type="checkbox" name="" id="greement1"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>개인정보 수집(필수) <input type="checkbox" name="" id="greement2"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>위치정보 이용약관(선택) <input type="checkbox" name="" id="greement3"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>프로모션 정보 수신(선택) <input type="checkbox" name="" id="greement4"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                <li>Rentel의 <a href="###">이용약관</a>(필수), <a href="###">개인정보 수집 및 이용</a>(필수), <a
                                        href="###">위치정보 이용약관</a>(선택),<br> 프로모션 정보 수신(선택)에 모두 동의합니다. <input type="checkbox" name="" id=""></li>
                            </ul>

                        </td>
                    </tr>
                </table>
            <form action="joinUser" method="post" id="form" name="form">
                <table> <!-- input을 정렬하려면 테이블 테그를 사용해 -->
                    <tr>
                        <td>ID</td>
                        <td><input type="text" name="userId" id="userId" oninput="checkId()" placeholder="ID"/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password1" id="password1" oninput="checkPw()" placeholder="Password"/></td>
                    </tr>
                    <tr>
                        <td>Recheck Password</td>
                        <td><input type="password" name="password2" id="password2" oninput="checkPw()" placeholder="Password"/></td>
                    </tr>
                    <tr>
                        <td>UserName</td>
                        <td><input type="text" name="name" id="name" placeholder="Name"/></td>
                    </tr>
                    <tr>
                        <td>Birth</td>
                        <td><input type="date" name="birth" id="birth" min="1111-01-01" max="9999-12-31"/></td>
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
                        <td>Type : User</td>
                        <td><input type="hidden" name="kind" id="kind" value="User"/></td>
                    </tr>
                </table>
                <br><br>
                <button type="button" onclick="checkId()">확인</button>
<%--                <input type="submit" value="SUBMIT"/>--%>
                <br><br>
            </form>
        </div>
    </main>
    <aside class="aside">
        <a href="#">
<%--            <img src="http://imgc.1300k.com/aaaaaib/goodsdesc/215024/87/215024871089_D1.jpg" alt="">--%>
        </a>
    </aside>
    <footer class="footer">
        <ul>
            <li><a href="">회사소개</a></li>
            <li><a href="">개인정보처리방침</a></li>
            <li><a href="">이용약관</a></li>
            <li><a href="">Contact us</a></li>
            <li><a href="">고객센터</a></li>
        </ul>
    </footer>
</div>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
    function postSearch() { // 온클릭이 사용된 애들을 누르면 자동으로 펼쳐짐

        //카카오 지도
        new daum.Postcode({
            oncomplete: function(data) { //선택시 입력값 세팅
                document.getElementById('postCode').value = data.zonecode;
                document.getElementById('address').value = data.address; // 주소 넣기
                document.getElementById('addressInfo').focus(); // focus() : 선택이 완료되면 자동으로 여기 입력칸으로 텍스트바가 이동됨
            }
        }).open();
    }

    // 아이디 중복 확인
    var idPass = 0;
    function checkId() {
        // id = document.getElementById('userId').value;
        // alert("=== checkId 펑션 작동 ===");
        // 만약 헤더에 J쿼리문을 쓰지 않았다면 $값을 인식 못함
        userId = $("#userId").val();    //id값을  입력란의 값을 저장
        console.log("ID펑션작동" + userId);
        $.ajax({
            url: '/idcheck', // porm의 주소를 적는다
            type: 'POST',   // POST방식으로 전달
            data: {userId:userId},
            success: function (result) {   // 리턴받은 값을 펑션 데이터에 넣음 , success는 무언가 성공했을 때 실행하게하는 코드
                if(result === 1) {
                    console.log("green");
                    document.getElementById("userId").style.backgroundColor = "green";
                    idPass = 0;
                } else if(result === 2) {
                    console.log("red");
                    document.getElementById("userId").style.backgroundColor = "red";
                    idPass = 1;
                }
            },
            error: function () {
                alert("리턴후 ajax에러");
                document.getElementById("userId").style.backgroundColor = "red";
                idPass = 2;
            }
        });
    }

    // 비밀번호 동일 체크
    var idPass = 0;
    function checkPw() {
        p1 = $("#password1").val();
        p2 = $("#password2").val();

        if(p1 === p2) {
            idPass = 0;
            document.getElementById("password1").style.backgroundColor = "green";
            document.getElementById("password2").style.backgroundColor = "green";
        } else if(p1 != p2) {
            idPass = 1;
            document.getElementById("password1").style.backgroundColor = "green";
            document.getElementById("password2").style.backgroundColor = "red";
        }
    }

    // // input focus change color
    // const form = document.getElementById('form');
    // form.addEventListener('focusin', (event) => {
    //     event.target.style.background = 'lightcyan';
    // });
    // form.addEventListener('focusout', (event) => {
    //     event.target.style.background = '';
    // });

    function submitLastCheck() {	// 서브밋 전 값 수정후 보냄
        if(idPass != 0) {
            alert("입력된 정보를 다시 확인해주세요.");

        }
        document.form.submit();
    }
</script>
</body>
</html>