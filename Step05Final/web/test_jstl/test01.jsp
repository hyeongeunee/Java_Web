<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-13
  Time: 오후 2:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<html>
<head>
    <title>test_jstl/test01.jsp</title>
</head>
<body>
    <h1>JSTL (Jsp Standard Tag Library) 반복문</h1>
    <c:forEach var="i" begin="1" end="10">
        <p>안녕 <strong>${i }</strong></p>
    </c:forEach>
</body>
</html>
