<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-24
  Time: 오후 3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>insertform</title>
    <style>
        textarea{
            resize:none;
        }
        h1{
            text-align: center;
        }

    </style>
</head>
<body>
<div class="container">
    <h1 class="mt-3">방명록 작성하기</h1>
    <form action="insert.jsp" method="post">
        <div class="mb-1 mt-3">
            <label for="writer" class="form-label"> 이름 </label>
            <input type="text" id="writer" name="writer" placeholder="이름 입력..." class="form-control"/>
        </div>
        <div class="mb-1 mt-3">
            <p class="mb-1">내용</p>
            <textarea name="content" placeholder="내용 입력..." rows="8" cols="123"></textarea>
        </div>
        <div class="mb-1 mt-3">
            <label for="pwd" class="form-label"> 비밀번호 </label>
            <input type="text" id="pwd" name="pwd" placeholder="비밀번호 입력..." class="form-control"/>
        </div>
        <br>
        <button type="submit" class="btn btn-success">작성하기</button>
    </form>
</div>
</body>
</html>
