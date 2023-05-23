<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-23
  Time: 오후 2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>member/insertform.jsp</title>
</head>
<body>
  <div class="container">
    <h1>회원 추가 폼</h1>
    <form action="insert.jsp" method="post">
      <div class="mb-1">
        <label for="name" class="form-label">이름</label>
        <input type="text" id="name" name="name" placeholder="이름 입력..." class="form-control"/>
      </div>
      <div class="mb-1">
        <label for="addr" class="form-label">주소</label>
        <input type="text" id="addr" name="addr" placeholder="주소 입력..." class="form-control"/>
      </div><br>
      <button type="submit" class="btn btn-success">추가</button>
    </form>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
