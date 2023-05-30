<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-30
  Time: 오후 12:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //GET 방식 요청 파라미터 읽어오기
  String msg = request.getParameter("msg");
%>
<html>
<head>
    <title>fetch/send.jsp</title>
</head>
<body>
  <p> 클라이언트가 보낸 문자열 : <strong><%=msg%></strong></p>
</body>
</html>
