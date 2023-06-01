<%@ page import="test.users.dto.UsersDto" %>
<%@ page import="test.users.dao.UsersDao" %>
<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-31
  Time: 오후 3:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

  //1. 폼 전송되는 id, pwd 를 읽어와서
    String id = request.getParameter("id");
    String pwd = request.getParameter("pwd");
  //2. UsersDto 에 담기
    UsersDto dto = new UsersDto();
    dto.setId(id);
    dto.setPwd(pwd);
  //3. UsersDao 에 전달해서 유효한 정보인지 확인해서
    boolean isValid = UsersDao.getInstance().isValid(dto);
  /*
    4. 유효한 정보이면 로그인 처리를 하고 응답한다.
       유효한 정보가 아니면 아이디 혹은 비밀번호가 틀려요 라고 응답한다.

       [ 로그인 처리 ]
       session scope 에 "id" 라는 키값으로 로그인된 아이디를 저장하면 된다.
       여기서 session scope 란 HttpSession 객체의 setAttribute() 메소드를 이용해서
       값을 저장하는 영역을 말한다.
   */
    if(isValid){
        //session scope 에 id 라는 키값으로 로그인된 아이디 담기
        session.setAttribute("id", id);
    }

    //로그인 후 가야할 목적지 정보
    String url = request.getParameter("url");
    //로그인 실패를 대비해서 목적지 정보를 인코딩한 결과도 준비한다.
    String encodedUrl = URLEncoder.encode(url);
%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container">
        <%if (isValid){%>
            <p class="alert alert-success">
                <strong><%=dto.getId()%></strong>님 로그인되었습니다.
                <a href="<%=url%>">확인</a>
<%--                <a href="../index.jsp">확인</a>--%>
            </p>
        <%}else{%>
            <p class="alert alert-danger">
                아이디 혹은 비밀번호가 틀려요
                <a href="loginform.jsp">다시 시도</a>
                <a href="../users/loginform.jsp?url=<%=encodedUrl%>"></a>
            </p>
        <%}%>
    </div>
</body>
</html>