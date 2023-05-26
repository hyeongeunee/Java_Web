<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-26
  Time: 오후 3:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  List<String> list = (List<String>) request.getAttribute("list");
%>
<html>
<head>
  <title>friend</title>
</head>
<body>
<h3>친구 목록</h3>
<ul>
  <%
    for (int i = 0; i < list.size(); i++) {
      out.println("<li>" + list.get(i) + "</li>");
    }
  %>
</ul>
</body>
</html>
