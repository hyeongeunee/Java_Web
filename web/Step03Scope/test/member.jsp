<%@ page import="test.member.dto.MemberDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-26
  Time: 오후 2:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //request scope 에 "dto" 라는 key 값으로 담긴 MemberDto 객체 얻어내기
  MemberDto dto = (MemberDto)request.getAttribute("dto");
%>
<html>
<head>
    <title>/test/member.jsp</title>
</head>
<body>
<h3>회원 한 명의 정보입니다.</h3>
<p> 번호 : <strong><%=dto.getNum()%></strong></p>
<p> 이름 : <strong><%=dto.getName()%></strong></p>
<p> 주소 : <strong><%=dto.getAddr()%></strong></p>
</body>
</html>
