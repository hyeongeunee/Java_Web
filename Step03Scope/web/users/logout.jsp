<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-26
  Time: 오후 4:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>users/logout.jsp</title>
</head>
<body>
  <%
    //세션 영역에 "nick" 이라는 키값으로 저장된 값 삭제하기
    session.removeAttribute("nick");
  %>
  <p>로그아웃 되었습니다.</p>
  <a href="${pageContext.request.contextPath}/">인덱스로 가기</a>
</body>
</html>
