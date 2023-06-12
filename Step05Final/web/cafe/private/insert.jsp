<%@ page import="test.cafe.dto.CafeDto" %>
<%@ page import="test.cafe.dao.CafeDao" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-09
  Time: 오후 3:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //폼 전송되는 title, content 읽어내기
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    //글 작성자 얻어내기
    String writer = (String)session.getAttribute("id");

    //CafeDto 에 담기
    CafeDto dto = new CafeDto();
    dto.setWriter(writer);
    dto.setTitle(title);
    dto.setContent(content);

    //DB 에 저장하기
    boolean isSuccess = CafeDao.getInstance().insert(dto);
    //응답하기
%>
<html>
<head>
    <title>cafe/private/insert.jsp</title>
</head>
<body>
    <div class="container">
        <%if(isSuccess){%>
            <p>
                새 글을 저장했습니다.
                <a href="../list.jsp">확인</a>
            </p>
        <%}else{ %>
        <p>
            글 저장 실패
            <a href="insertform.jsp">다시 작성하러 가기</a>
        </p>
        <%} %>
    </div>
</body>
</html>
