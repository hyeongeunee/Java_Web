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
    <title>index.jsp</title>
</head>
<body>
<div class="container">
    <h1>인덱스 페이지 입니다.</h1>
</div>
</body>
</html>
