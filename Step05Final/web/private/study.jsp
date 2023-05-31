<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-31
  Time: 오후 5:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //로그인된 아이디가 있는지 확인해서
    String id = (String)session.getAttribute("id");
%>
<html>
<head>
    <title>private/study.jsp</title>
</head>
<body>
    <h1>공부 페이지입니다.</h1>
    <p><%=id%>님 열심히 공부해요 !</p>
</body>
</html>
