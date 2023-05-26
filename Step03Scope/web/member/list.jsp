<%@ page import="test.member.dto.MemberDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-26
  Time: 오후 3:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //request scope 에 "list"라는 키 값으로 담긴 List<MemberDto> 객체의 참조값 얻어내기
  List<MemberDto> list = (List<MemberDto>)request.getAttribute("list");
%>
<html>
<head>
    <title>/member/list.jsp</title>
</head>
<body>
  <h3>회원 목록입니다.</h3>
  <table>
    <thead>
    <tr>
      <th>번호</th>
      <th>이름</th>
      <th>주소</th>
    </tr>
    </thead>
    <tbody>
    <%for(MemberDto tmp : list){%>
    <tr>
      <td><%=tmp.getNum() %></td>
      <td><%=tmp.getName() %></td>
      <td><%=tmp.getAddr() %></td>
    </tr>
    <%} %>
    </tbody>
  </table>
</body>
</html>
