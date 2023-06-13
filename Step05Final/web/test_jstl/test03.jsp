<%@ page import="test.file.FileDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-13
  Time: 오후 3:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    //Servlet 단에서 담은 sample  데이터라고 가정하자
    List<FileDto> list=new ArrayList<>();
    FileDto dto1=new FileDto();
    dto1.setNum(1);
    dto1.setWriter("김구라");
    dto1.setTitle("제목1");

    FileDto dto2=new FileDto();
    dto2.setNum(2);
    dto2.setWriter("해골");
    dto2.setTitle("제목2");

    FileDto dto3=new FileDto();
    dto3.setNum(3);
    dto3.setWriter("원숭이");
    dto3.setTitle("제목3");

    list.add(dto1);
    list.add(dto2);
    list.add(dto3);
    // EL 로 추출할수 있도록 request 영역에 담는다.
    request.setAttribute("list", list);
%>
<html>
<head>
    <title>test_jstl/test03.jsp</title>
</head>
<body>
    <div class="container">
        <h1>List 에 들어 있는 Dto 활용</h1>
        <table>
            <thead>
            <tr>
                <th>번호</th>
                <th>작성자</th>
                <th>제목</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="tmp" items="${list }">
                <tr>
                    <td>${tmp.getNum() }</td>
                    <td>${tmp.getWriter() }</td>
                    <td>${tmp.getTitle() }</td>
                </tr>
                <tr>
                    <td>${tmp.num }</td>
                    <td>${tmp.writer }</td>
                    <td>${tmp.title }</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
