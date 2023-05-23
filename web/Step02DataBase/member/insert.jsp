<%@ page import="java.util.List" %>
<%@ page import="test.member.dao.MemberDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="test.dto.MemberDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-23
  Time: 오후 3:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%    request.setCharacterEncoding("utf-8");
      // 1. post 방식으로 전송되는 회원의 이름, 주소를 추출한다. > HttpServletRequest
      String name = request.getParameter("name");
      String addr = request.getParameter("addr");
      // 2. DB에 저장한다. > MemberDao
      // 3. 응답
      boolean isSuccess = MemberDao.getInstance().insert(name, addr);
%>
<html>
<head>
    <title>insert.jsp</title>
</head>
<body>
<div class="container">
      <h1>알림</h1>
      <%if (isSuccess){%>
            <p>
                  <strong><%=name%></strong> 님의 정보가 저장되었습니다.
                  <a href="list.jsp">확인</a>
            </p>
      <%}else{%>
            <p>
                  회원정보 저장 실패 !
                  <a href="insertform.jsp">다시 작성</a>
            </p>
      <%}%>
</div>
</body>
</html>
