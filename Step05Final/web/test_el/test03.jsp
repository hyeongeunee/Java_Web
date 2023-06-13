<%@ page import="test.cafe.dto.CafeDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-13
  Time: 오전 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //CafeDto 객체를 생성해서 글 하나의 정보를 담고
    CafeDto dto = new CafeDto();
    dto.setNum(1);
    dto.setWriter("김구라");
    dto.setTitle("나는 구라다");

    //"dto" 라는 키값으로 request scope 에 담기
    request.setAttribute("dto", dto);
%>
<html>
<head>
    <title>test_el/test03.jsp</title>
</head>
<body>
    <div class="container">
    <%
        CafeDto result = (CafeDto)request.getAttribute("dto");
    %>
        <p>글번호 : <strong><%=result.getNum()%></strong></p>
        <p>작성자 : <strong><%=result.getWriter()%></strong></p>
        <p>제목 : <strong><%=result.getTitle()%></strong></p>

        <h3>EL 을 이용해서 위의 작업하기</h3>
        <p>글번호 : <strong>${requestScope.dto.getNum()}</strong></p>
        <p>작성자 : <strong>${dto.getWriter()}</strong></p>
        <%-- 필드명만 적으면 자동으로 getter 메소드를 호출해준다. --%>
        <p>제목 : <strong>${dto.title}</strong></p>
    </div>
</body>
</html>
