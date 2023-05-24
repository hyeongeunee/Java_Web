<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-22
  Time: 오후 5:34
  To change this template use File | Settings | File Templates.
--%>

<%@page import="test.util.DbcpBean"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    //DB 연동 가능한지 테스트
    new DbcpBean(); //객체 생성했을 때 예외가 발생하지 않고 "Connection 얻어오기 성공! " 이 콘솔창에 출력되면 된다.
%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>index.jsp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>인덱스 페이지 입니다.</h1>
    <ul>
        <li><a href="member/list.jsp">회원 목록보기</a></li>
        <li><a href="guest/list.jsp">방명록 목록보기</a></li>
    </ul>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
