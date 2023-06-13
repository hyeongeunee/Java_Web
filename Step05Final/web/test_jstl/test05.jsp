<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-13
  Time: 오후 4:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    //sample 데이터
    request.setAttribute("size", 123456789);
    request.setAttribute("price", 2500000);
%>
<html>
<head>
    <title>test_jstl/test05.jsp</title>
</head>
<body>
    <p>
        파일의 크기는
        <fmt:formatNumber value="123456789" pattern="#,###"/>
        byte 입니다.
    </p>

    <p>
        파일의 크기는
        <fmt:formatNumber value="${size}" pattern="#,###"/>
        byte 입니다.
    </p>

    <p>
        가격은
        <fmt:formatNumber value="2500000" type="currency"/>
        입니다.
    </p>

    <p>
        가격은
        <fmt:formatNumber value="${price}" type="currency"/>
        입니다.
    </p>

    <p>
        가격은
        <fmt:formatNumber value="${price}" type="currency" currencySymbol="$"/>
        입니다.
    </p>
</body>
</html>
