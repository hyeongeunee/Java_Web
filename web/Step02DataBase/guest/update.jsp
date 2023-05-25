<%@ page import="test.guest.dao.GuestDao" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-25
  Time: 오전 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    int num = Integer.parseInt(request.getParameter("num"));
    String writer = request.getParameter("writer");
    String content = request.getParameter("content");
    String pwd = request.getParameter("pwd");
    String getPwd = GuestDao.getInstance().getData(num).getPwd();
    String isSuccess;
    if (pwd.equals(getPwd)) {
        isSuccess = GuestDao.getInstance().update(content, num);
    } else {
        isSuccess = "no";
    }
%>
<html>
<head>
    <title>update</title>
</head>
<body>
<div class="container">
    <% if (isSuccess.equals("ok")) { %>
    <p><strong><%= writer %></strong>님의 게시글을 수정했습니다.</p>
    <a href="list.jsp">확인</a>
    <%} else { %>
    <p><strong><%= writer %></strong>님의 게시글이 수정실패했습니다.</p>
    <a href="updateform.jsp?num=<%= num %>">확인</a>
    <%} %>
</div>
</body>
</html>