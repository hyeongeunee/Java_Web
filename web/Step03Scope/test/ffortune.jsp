<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-26
  Time: 오후 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //request 영역에 fortuneToday 라는 키값으로 String Type 데이터를 읽어와서 Casting
    String fortune = (String)request.getAttribute("fortuneToday");
%>
<html>
<head>
    <title>test/fortunes.jsp</title>
</head>
<body>
  <div class="container">
    <p>오늘의 운세 : <strong><%=fortune%></strong></p>
  </div>
</body>
</html>
