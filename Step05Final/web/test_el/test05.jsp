<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-13
  Time: 오전 11:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test_el/test05.jsp</title>
</head>
<body>
    <h1>param.파라미터명 형식으로 추출할 수 있다</h1>
    <p>전달된 파라미터 : <strong>${param.msg}</strong></p>
    <p>전달된 파라미터 : <strong><%=request.getParameter("msg")%></strong></p>
</body>
</html>
