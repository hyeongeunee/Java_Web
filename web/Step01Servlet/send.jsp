<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-22
  Time: 오후 3:41
  To change this template use File | Settings | File Templates.
--%>
<%
    //요청 인코딩 설정(한글 안깨지도록)
    request.setCharacterEncoding("utf-8");
    //요청 파라미터 추출
    String msg = request.getParameter("msg");
    //콘솔창에 출력하기 (이클립스 버그 때문에 jsp 페이지에서는 콘솔창에 문자열 출력 불가
    //System.out.println("msg:"+msg);
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>send.jsp</title>
</head>
<body>
  <p>메세지 잘 받았어. 클라이언트야 !</p>
  <p>전달받은 메세지 <strong><%=msg %></strong></p>
</body>
</html>
