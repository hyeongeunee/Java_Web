<%@ page import="test.member.dao.MemberDao" %>
<%@ page import="test.member.dto.MemberDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-24
  Time: 오전 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //한글이 깨지지 않도록
  request.setCharacterEncoding("utf-8");
  //1. 폼 전송되는 수정할 회원의 정보를 얻어온다.
  int num = Integer.parseInt(request.getParameter("num"));
  String name = request.getParameter("name");
  String addr = request.getParameter("addr");
  //2. DB에 수정 반영한다.
  MemberDto dto = new MemberDto(num, name, addr);
  boolean isSuccess = MemberDao.getInstance().update(dto);
  //3. 결과를 응답한다.
%>
<html>
<head>
    <title>Title</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" />
</head>
<body>
  <%-- mt-5 => margin top 5 --%>
  <div class="container mt-5">
    <h1>알림</h1>
    <%if(isSuccess){%>
      <p class="alert alert-success">
        <strong><%=num %></strong> 번 회원의 정보를 수정했습니다.
        <a class="alert-link" href="list.jsp">목록보기</a>
      </p>
    <%}else {%>
      <p class="alert alert-danger">
        수정 실패!
        <a class="alert-link" href="updateform.jsp?num=<%= num%>">다시 수정</a>
      </p>
    <%}%>
  </div>
</body>
</html>