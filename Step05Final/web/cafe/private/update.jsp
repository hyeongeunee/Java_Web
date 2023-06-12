<%@ page import="test.cafe.dao.CafeDao" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-09
  Time: 오후 6:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
    CafeDto dto = new CafeDto();

    int num = Integer.parseInt(request.getParameter("num"));
    dto.setNum(num);

    String title = request.getParameter("title");
    dto.setTitle(title);

    String content = request.getParameter("content");
    dto.setContent(content);
--%>
<jsp:useBean id="dto" class="test.cafe.dto.CafeDto"/>
<jsp:setProperty name="dto" property="num"/>
<jsp:setProperty name="dto" property="title"/>
<jsp:setProperty name="dto" property="content"/>
<%
    // 위의 jsp 액션태그로 생성된 CafeDto 객체에 담긴 글 내용을 수정반영하고
    boolean isSuccess = CafeDao.getInstance().update(dto);
    // 응답하기
%>
<html>
<head>
    <title>cafe/private/update.jsp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container pt-5">
        <%if(isSuccess){%>
        <p class="alert alert-success">
            수정했습니다.
            <a class="alert-link" href="../detail.jsp?num=<%=dto.getNum()%>">확인</a>
        </p>
        <%}else{ %>
        <p class="alert alert-danger">
            수정 실패했습니다.
            <a class="alert-link" href="updateform.jsp?num=<%=dto.getNum()%>">다시 수정하러 가기</a>
        </p>
        <%} %>
    </div>
</body>
</html>
