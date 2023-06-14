<%@ page import="test.users.dto.UsersDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-31
  Time: 오후 2:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>index.jsp</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
    <style>
        ul > li {
            margin-bottom: 0.5rem;
        }

        p {
            text-align: right;
        }
    </style>
</head>
<body>
<%-- webapp/include/navbar.jsp 페이지 포함시키기 --%>
<jsp:include page="/include/navbar.jsp">
    <jsp:param name="current" value="index"/>
</jsp:include>
<div class="container">
    <%-- 세션 영역에 id 라는 키값으로 저장된 값이 있는지 여부(값이 존재하는지) --%>
    <c:if test="${ not empty id}">
        <p>
            <a href="users/private/info.jsp"><strong>${id}
            </strong></a> 님 로그인중...
            <a href="users/logout.jsp">로그아웃</a>
        </p>
    </c:if>
    <h1 class="mb-4">인덱스 페이지입니다.</h1>
    <ul>
        <li><a href="users/signup_form.jsp">회원가입</a></li>
        <li><a href="users/loginform.jsp">로그인</a></li>
        <li><a href="private/study.jsp">공부하기(로그인필요)</a></li>
        <li><a href="private/game.jsp">놀러가기(로그인필요)</a></li>
        <li><a href="file/list.jsp">자료실</a></li>
        <li><a href="test/signup_form.jsp">form 테스트</a></li>
        <li><a href="cafe/list.jsp">글 목록보기</a></li>
    </ul>
</div>
</body>
</html>
