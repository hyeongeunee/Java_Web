<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-13
  Time: 오후 2:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    //테스트를 위해 sample 데이터를 request scope 에 담는다.
    List<String> names = new ArrayList<String>();
    names.add("김구라");
    names.add("해골");
    names.add("원숭이");
    //"list" 라는 키값으로 request scope 에 ArrayList 객체 담아두기
    request.setAttribute("list", names);
%>
<html>
<head>
    <title>test_jstl/test02.jsp</title>
</head>
<body>
    <%
        //request 영역에 "list" 라는 키값으로 저장된 값을 읽어와서 원래 type 으로 casting
        List<String> list = (List<String>)request.getAttribute("list");
    %>
    <h1>친구 목록</h1>
    <ul>
        <%for(String tmp:list){%>
            <li><%=tmp%></li>
        <%}%>
    </ul>

    <h1>친구 목록</h1>
    <ul>
        <c:forEach var="tmp" items="${requestScope.list}">
            <li>${tmp}</li>
        </c:forEach>
    </ul>

    <h1>친구 목록 인덱스 표시</h1>
    <ul>
        <c:forEach var="tmp" items="${requestScope.list }" varStatus="status">
            <li>${tmp} <strong>${status.index}</strong></li>
        </c:forEach>
    </ul>

    <h1>친구 목록 순서 표시</h1>
    <ul>
        <c:forEach var="tmp" items="${requestScope.list }" varStatus="status">
            <li>${tmp} <strong>${status.count}</strong></li>
        </c:forEach>
    </ul>

    <h1>친구 목록 첫번째 순서인지 여부</h1>
    <ul>
        <c:forEach var="tmp" items="${requestScope.list }" varStatus="status">
            <li>${tmp} <strong>첫번째 : ${status.first}</strong></li>
        </c:forEach>
    </ul>

    <h1>친구 목록 마지막 순서인지 여부</h1>
    <ul>
        <c:forEach var="tmp" items="${list }" varStatus="status">
            <li>${tmp} <strong>마지막 : ${status.last}</strong></li>
        </c:forEach>
    </ul>
</body>
</html>
