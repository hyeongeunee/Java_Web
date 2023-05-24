<%@ page import="test.guest.dao.GuestDao" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-24
  Time: 오후 4:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%    request.setCharacterEncoding("utf-8");
  // 1. post 방식으로 전송되는 회원의 이름, 주소를 추출한다. > HttpServletRequest
  String writer = request.getParameter("writer");
  String content = request.getParameter("content");
  String pwd = request.getParameter("pwd");
  // 2. DB에 저장한다. > MemberDao
  // 3. 응답
  boolean isSuccess = GuestDao.getInstance().insert(writer, content, pwd);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <h1>알림</h1>
    <%if (isSuccess){%>
    <p class="alert alert-success">
        <strong><%=writer%></strong> 님의 글이 등록되었습니다.
        <a class="alert-link" href="list.jsp">확인</a>
    </p>
    <%}else{%>
    <p class="alert alert-warning">
        등록 실패 !
        <a class="alert-link" href="insertform.jsp">다시 작성</a>
    </p>
    <%}%>
</div>
</body>
</html>
