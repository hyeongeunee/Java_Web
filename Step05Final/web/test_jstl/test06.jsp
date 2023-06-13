<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-13
  Time: 오후 4:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    //sample 데이터
    request.setAttribute("hobby", "game/programming/piano");
    request.setAttribute("friends", "김구라, 해골, 원숭이");
%>
<html>
<head>
    <title>test_jstl/test06.jsp</title>
</head>
<body>
    <h1>forTokens 활용</h1>
    <h2>취미 목록</h2>
    <ul>
        <c:forTokens items="${hobby}" delims="/" var="tmp">
            <li>${tmp}</li>
        </c:forTokens>
    </ul>

    <h2>친구 목록</h2>
    <ul>
        <c:forTokens items="${friends}" delims="," var="list">
            <li>${list}</li>
        </c:forTokens>
    </ul>
</body>
</html>
