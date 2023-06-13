<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-13
  Time: 오후 2:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test_el/test07.jsp</title>
</head>
<body>
    <p> savedId 라는 키값으로 쿠키가 저장되었는지 여부 : ${not empty cookie.savedId }</p>
    <p> savedId 라는 키값으로 저장된 값 : ${cookie.savedId.value }</p>
</body>
</html>
