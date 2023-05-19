<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-19
  Time: 오후 4:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>/friend/list.jsp</title>
</head>
<%
    //친구목록 (sample data) 이라고 가정하자
    List<String> names = new ArrayList<>();
    names.add("김구라");
    names.add("해골");
    names.add("원숭이");
%>
<body>
    <h1>친구 목록입니다.</h1>
    <ul>
        <%for (String name : names) { %>
            <li><%=name %></li>
        <%} %>
    </ul>
</body>
</html>