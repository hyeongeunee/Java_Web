<%@ page import="test.guest.dao.GuestDao" %>
<%@ page import="test.guest.dto.GuestDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-25
  Time: 오전 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  int num = Integer.parseInt(request.getParameter("num"));
  GuestDto dto = GuestDao.getInstance().getData(num);
%>
<html>
<head>
  <title>updateform</title>
</head>
<body>
<div class="container">
  <form action="update.jsp" method="post">
    <label for="num"></label>
    <input type="text" id="num" name="num" value="<%= dto.getNum() %>" readonly> <br>
    <label for="writer"></label>
    <input type="text" id="writer" name="writer" value="<%= dto.getWriter() %>" readonly> <br>
    <label for="content"></label>
    <input type="text" id="content" name="content" value="<%= dto.getContent() %>"> <br>
    <label for="pwd"></label>
    <input type="password" id="pwd" name="pwd" placeholder="비밀번호"> <br>
    <input type="submit" value="저장">
  </form>
</div>
</body>
</html>
