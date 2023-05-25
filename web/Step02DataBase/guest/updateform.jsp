<%@ page import="test.guest.dao.GuestDao" %>
<%@ page import="test.guest.dto.GuestDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-25
  Time: 오전 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  int num = Integer.parseInt(request.getParameter("num"));
  GuestDto dto = GuestDao.getInstance().getData(num);
%>
<html>
<head>
  <title>updateform</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    textarea{
      resize:none;
    }
  </style>
</head>
<body>
<div class="container">
  <h1>방명록 수정하기</h1>
  <form action="update.jsp" method="post">
    <div class="mb-1 mt-3">
      <label for="num" class="form-label"> 글 번호 </label>
      <input type="text" id="num" name="num" value="<%= dto.getNum() %>" readonly />
    </div>
    <div class="mb-1 mt-3">
      <label for="writer" class="form-label"> 이름 </label>
      <input type="text" id="writer" name="writer" value="<%= dto.getWriter() %>" readonly/>
    </div>
    <div class="mb-1 mt-3">
      <p class="mb-1"> 내용 </p>
      <textarea name="content" placeholder="<%= dto.getContent() %>" rows="8" cols="123"></textarea>
    </div>
    <div class="mb-4 mt-3">
      <label for="pwd" class="form-label"> 비밀번호 </label>
      <input type="text" id="pwd" name="pwd" placeholder="비밀번호 입력..." class="form-control"/>
    </div>
    <input type="submit" value="저장">
  </form>
</div>
</body>
</html>
