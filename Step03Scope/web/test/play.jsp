<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-26
  Time: 오후 4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  //session scope 에 "nick" 이라는 키값으로 저장된 문자열이 있는지 읽어와 본다.
  String nick = (String)session.getAttribute("nick");
  //만일 저장된 값이 없다면 (로그인 하지 않았다면)
  if(nick==null) {
   //로그인 페이지로 리다일렉트 이동시킨다.(여기서는 그냥 index.jsp 페이지로 이동)
    String cPath = request.getContextPath();
    response.sendRedirect(cPath+"/index.jsp");
  }
%>
<html>
<head>
    <title>test/play.jsp</title>
</head>
<body>
  <p><strong><%=nick+"님"%></strong>신나게 놀아 보아요!</p>
  <a href=""></a>
</body>
</html>
