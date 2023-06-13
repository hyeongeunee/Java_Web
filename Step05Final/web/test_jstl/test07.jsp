<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-13
  Time: 오후 4:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    //sample 데이터
    request.setAttribute("msg", "abcde구라1234");
    request.setAttribute("str", "<div></div> 는 문단을 나타내는 요소 입니다.");
    request.setAttribute("content", "하나\n두울\n세엣");
    request.setAttribute("newLine", "\n");
%>
<html>
<head>
    <title>test_jstl/test07.jsp</title>
</head>
<body>
    <h1>JSTL function (EL 코드 블럭 안에서 사용하는 함수) 활용</h1>
    <p>"구라"가 포함되어 있는지 여부 : ${fn:contains(msg, '구라')}</p>
    <c:if test="${fn:contains(msg, '구라')}">
        <p>메세지에 "구라"가 포함되어 있군요!</p>
    </c:if>
    <p>${str}</p>
    <p>${fn:escapeXml(str)}</p>
    <p>${content}</p>
    <%-- content 문자열에서 개행 기호를 <br> 로 바꿔서 출력 --%>
    <p>${fn:replace(content, newLine, '<br>') }</p>
</body>
</html>
