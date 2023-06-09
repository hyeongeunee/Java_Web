<%@ page import="test.users.dto.UsersDto" %>
<%@ page import="test.users.dao.UsersDao" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-08
  Time: 오후 4:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //1. 수정할 회원의 정보를 읽어와서
    String id = (String)session.getAttribute("id");
    String email = request.getParameter("email");
    //프로필 이미지의 경로 읽어오기 (등록하지 않았으면 "empty" 이다)
    String profile = request.getParameter("profile");

    UsersDto dto = new UsersDto();
    dto.setId(id);
    dto.setEmail(email);

    //만일 profile 이미지를 등록했다면 (profile 이미지가 empty 가 아니라면)
    if(!profile.equals("empty"))dto.setProfile(profile);

    //2. DB 에 수정 반영하고
    boolean isSuccess = UsersDao.getInstance().update(dto);
    //3. 응답하기
%>
<html>
<head>
    <title>users/private/update.jsp</title>
</head>
<body>
    <script>
        <%if(isSuccess){%>
            alert("수정했습니다.")
            location.href="info.jsp";
        <%}else{%>
            alert("수정 실패");
            location.href="updateform.jsp"
        <%}%>
    </script>
</body>
</html>
