<%@ page import="test.member.dto.MemberDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-26
  Time: 오후 2:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  MemberDto dto = (MemberDto)request.getAttribute("dto");
%>
<html>
<head>
  <title>member</title>
</head>
<body>
<h3>회원 한명의 정보 입니다.</h3>
<p> 번호 : <strong>${dto.num}</strong></p>
<p> 번호 : <strong>${dto.name}</strong></p>
<p> 번호 : <strong>${dto.addr}</strong></p>
</body>
</html>
