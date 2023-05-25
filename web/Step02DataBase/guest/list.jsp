<%@ page import="test.guest.dto.GuestDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="test.guest.dao.GuestDao" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-24
  Time: 오후 2:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    GuestDao dao = GuestDao.getInstance();
    List<GuestDto> list = dao.getList();
%>
<html>
<head>
    <title>guest/list.jsp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<div class="container mt-3">
    <h1 style="text-align: center">방명록 목록</h1>
    <a href="insertform.jsp">작성하기</a>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>글번호</th>
            <th>작성자</th>
            <th>내용</th>
            <th>수정</th>
            <th>삭제</th>
            <th>등록일</th>
        </tr>
        </thead>
        <tbody>
        <% for (GuestDto tmp : list) { %>
        <tr>
            <td><%= tmp.getNum() %></td>
            <td><%= tmp.getWriter() %></td>
            <td><%= tmp.getContent() %></td>
            <td><a href="updateform.jsp?num=<%= tmp.getNum() %>">수정</a></td>
            <td><a href="deleteform.jsp?num=<%= tmp.getNum() %>">삭제</a></td>
            <td><%= tmp.getRegdate() %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>