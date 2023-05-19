<%@ page import="test.dto.MemberDto" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-19
  Time: 오후 5:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>member/list.jsp</title>
</head>
<body>
<%
  List<MemberDto> list=new ArrayList<>();
  list.add(new MemberDto(1, "김구라", "노량진"));
  list.add(new MemberDto(2, "해골", "행신동"));
  list.add(new MemberDto(3, "원숭이", "상도동"));
%>
<h1>회원 목록표</h1>
<table>
  <tr>
    <th>번호</th>
    <th>이름</th>
    <th>주소</th>
  </tr>
  <tr>
<%for (MemberDto member: list) {%>
  <tr><td><%=member.getNum() %></td>
  <td><%=member.getName() %></td>
  <td><%=member.getAddr() %></td></tr><%} %>
</body>
</html>
