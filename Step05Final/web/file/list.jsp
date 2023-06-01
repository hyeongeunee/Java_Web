<%@ page import="test.file.FileDao" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="test.file.FileDto" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-01
  Time: 오후 3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  FileDao dao = FileDao.getInstance();
  List<FileDto> list = dao.getList();
%>
<html>
<head>
    <title>file/list.jsp</title>
</head>
<body>
  <div class="container">
    <a href="private/upload_form.jsp">업로드 하기</a>
    <h1>자료실 목록입니다.</h1>
    <table>
      <thead>
        <tr>
          <th>번호</th>
          <th>작성자</th>
          <th>제목</th>
          <th>파일명</th>
          <th>등록일</th>
        </tr>
      </thead>
      <tbody>
        <%for(FileDto tmp : list) {%>
          <tr>
            <td><%=tmp.getNum()%></td>
            <td><%=tmp.getWriter()%></td>
            <td><%=tmp.getTitle()%></td>
            <td><%=tmp.getSaveFileName()%></td>
            <td><%=tmp.getRegdate()%></td>
          </tr>
        <%}%>
      </tbody>
    </table>
  </div>
</body>
</html>
