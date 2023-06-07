<%@ page import="test.users.dao.UsersDao" %>
<%@ page import="test.users.dto.UsersDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-07
  Time: 오후 3:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //session scope 에서 로그인된 아이디 불러오기
  String id = (String)session.getAttribute("id");
  //DB 에서 가입 정보를 불러온다.
  UsersDto dto = UsersDao.getInstance().getData(id);
  //응답한다.
%>
<html>
<head>
  <title>users/private/info.jsp</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
  <style>
    #profileImage{
      width: 100px;
      height: 100px;
      border: 1px solid #cecece;
      border-radius: 10%;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>가입 정보입니다.</h1>
    <table>
      <tr>
        <th>아이디</th>
        <td><%=dto.getId()%></td>
      </tr>
      <tr>
        <th>프로필 이미지</th>
        <td>
          <%if(dto.getProfile() == null){%>
            등록된 이미지 없음
            <a href="profile_uploadform.jsp">등록하기</a>
          <%}else {%>
            <img id="profileImage" src="${pageContext.request.contextPath}<%=dto.getProfile()%>" alt="profile img">
          <%}%>
        </td>
      </tr>
      <tr>
        <th>비밀번호</th>
        <td>
          <a href="pwd_updateform.jsp?num=<%=dto.getId()%>">수정하기</a>
        </td>
      </tr>
      <tr>
        <th>이메일</th>
        <td><%=dto.getEmail()%></td>
      </tr>
      <tr>
        <th>가입일</th>
        <td><%=dto.getRegdate()%></td>
      </tr>
    </table>
  </div>
</body>
</html>
