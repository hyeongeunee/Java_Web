<%@ page import="test.users.dto.UsersDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-31
  Time: 오후 2:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
  //session scope 에 "id"라는 키값으로 저장된 문자열이 있는지 읽어와 본다.
  String id = (String)session.getAttribute("id");
  //로그인을 했다면 null이 아니고 안했다면 null이다.
%>
<html>
  <head>
    <title>index.jsp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
  </head>
  <body>
    <div class="container">
      <%if(id != null){%>
        <p>
          <strong><%= id%></strong>님 로그인중...
          <a href="users/logout.jsp">로그아웃</a>
        </p>
      <%}%>
      <h1>인덱스 페이지입니다.</h1>
      <ul>
        <li><a href="users/signup_form.jsp">회원가입</a></li>
        <li><a href="users/loginform.jsp">로그인</a></li>
        <li><a href="private/study.jsp">공부하기(로그인필요)</a></li>
        <li><a href="private/game.jsp">놀러가기(로그인필요)</a></li>
        <li><a href="file/list.jsp">자료실</a></li>
      </ul>
    </div>
  </body>
</html>
