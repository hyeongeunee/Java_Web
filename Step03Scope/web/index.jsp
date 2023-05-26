<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-26
  Time: 오후 12:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>index</title>
</head>
<body>
<div class="container">
  <h1>인덱스 페이지 입니다.</h1>
  <ul>
    <li><a href="fortune">오늘의 운세</a></li>
    <li><a href="test/fortune.jsp">테스트</a></li>
    <li><a href="member">회원 한명의 정보 보기</a></li>
    <li><a href="friend/list">친구 이름 목록 보기</a></li>
    <li><a href="member/list">회원 목록 보기</a></li>
    <li><a href="test/play.jsp">놀러가기(로그인된 클라이언트만 가능)</a></li>
  </ul>
  <form action="test/save.jsp" method="post">
    <input type="text" name="nick" placeholder="닉네임 입력..."/>
    <button type="submit">닉네임 기억 시키기</button>
  </form>
  <%
    //session scope 에 "nick" 이라는 키값으로 저장된 문자열이 있는지 읽어와 본다.
    String nick = (String)session.getAttribute("nick");
  %>
  <%if (nick!=null){%>
    <p>
      <strong><%=nick%></strong>님 반갑습니다.
      <a href="users/logout.jsp">로그아웃</a>
    </p>
  <%}%>
</div>
</body>
</html>
