<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-19
  Time: 오후 3:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>/fortune.jsp</title>
</head>
<body>
<%-- servlet의 서비스 영역 --%>
<%
    String[] fortunes={"동쪽으로 가면 귀인을 만나요",
            "오늘은 집에만 계세요",
            "너무 멀리가지 마세요",
            "오늘은 뭘해도 되는 날이에요",
            "로또가 당첨되요"};
    Random ran = new Random();
    int ranNum = ran.nextInt(5);
%>
    <p> <% out.print(fortunes[ranNum]); %> </p>
<%--    <p><%= 10 %></p>--%>
<%--    <p><%= true %></p>--%>
<%--    <p><%= "김"%></p>--%>
    <p><%= fortunes[ranNum] %></p>
</body>
</html>
