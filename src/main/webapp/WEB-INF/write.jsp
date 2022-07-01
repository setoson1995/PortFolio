<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">

    <title>Title</title>
    게시글의 DB를 4개로 만드는게 아니라  1개에 4개의 카테고리를 집어넣어볼까?
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>    <!-- google Libraries -->

</head>
<body>
    <form action="writed" method="post">
        <table>
            <th>Title : </th>
            <th>Writer : </th>
            <th>Category : </th>
            <th>Content : </th>
            <tr>
                <td><input type="text" name="title" placeholder="Title" required/></td>
            </tr>
            <tr>
                <td>
                    <input type="hidden" name="writer" value="<%=(String) session.getAttribute("K-Village")%>"/>
                    <p><%=(String) session.getAttribute("K-Village")%></p>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Category:<br>
                        <select name="category" id="categorySelcet">
                            <option value="0">--Please choose an option--</option>
                            <option value="1">News</option>
                            <option value="2">Living Life</option>
                            <option value="3">Celebrity</option>
                            <option value="4">Funny</option>
                        </select>
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="textarea" name="content" placeholder="Content Or article" required/>
                </td>
            </tr>
        </table>
        <button type="button" onclick="checkSubmit()">확인</button>
<%--        <input type="submit" name="submit"/>--%>
    </form>
    <script type="text/javascript">
        function checkSubmit() {
            category = $("#categorySelcet").val(); // 만약 헤드부분에 J쿼리문을 쓰지 않았다면 값을 인식 못함
            console.log("글쓰기 카테고리 펑션작동 : " + category);
            if(category == 0) {
                alert("카테고리를 정의해주세요.");
            }
            //굳이 ajax를 써야하는가? required로 필수쓰기하고 카테고리만 잘 받으면 문제없지.
        }
    </script>
</body>
</html>