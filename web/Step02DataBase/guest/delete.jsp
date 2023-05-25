<%@ page import="test.guest.dao.GuestDao" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-24
  Time: 오후 5:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete</title>
</head>
<body>
<div class="container">
    <%
        request.setCharacterEncoding("utf-8");
        int num = Integer.parseInt(request.getParameter("num"));
        String pwd = request.getParameter("pwd");
        String getPwd = GuestDao.getInstance().getData(num).getPwd();
        if (pwd.equals(getPwd)) {
            GuestDao.getInstance().delete(num);
            String path = request.getContextPath();
            response.sendRedirect(path + "list.jsp");
        } else {
    %>
    <script>
        alert("비밀번호 불일치");
        history.back();
    </script>
    <% } %>
</div>
</body>
</html>