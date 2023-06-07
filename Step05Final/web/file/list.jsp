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
  //파일 목록을 얻어온다.
  List<FileDto> list = dao.getList();
  //로그인된 아이디( 로그인이 되어있지 않으면 null 이다.)
  String id = (String)session.getAttribute("id");
%>
<html>
<head>
    <title>file/list.jsp</title>
</head>
<body>
  <div class="container">
    <a href="private/upload_form.jsp">업로드 하기</a>
    <br>
    <a href="private/upload_form2.jsp">ajax 업로드 하기</a>
    <h1>자료실 목록입니다.</h1>
    <table>
      <thead>
        <tr>
          <th>번호</th>
          <th>작성자</th>
          <th>제목</th>
          <th>파일명</th>
          <th>등록일</th>
          <th>삭제</th>
        </tr>
      </thead>
      <tbody>
        <%for(FileDto tmp : list) {%>
          <tr>
            <td><%=tmp.getNum()%></td>
            <td><%=tmp.getWriter()%></td>
            <td><%=tmp.getTitle()%></td>
            <td><a href="download.jsp?num=<%=tmp.getNum()%>"><%=tmp.getOrgFileName()%></a></td>
            <td><%=tmp.getRegdate()%></td>
            <td>
              <%-- 글작성자와 로그인된 아이디가 같을 때만 삭제 링크 출력하기--%>
              <%if(tmp.getWriter().equals(id)){%>
              <a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a>
              <%}%>
                <%-- tmp.getWriter()
                                  String id = (String)session.getAttribute("id") --%>
            </td>
          </tr>
          <%-- 파일 다운 받을 때 (원본 + 저장된)파일명, 파일 사이즈를 알아야 정확하게 파일이 다운됨 ㅇㅇ --%>
        <%}%>
      </tbody>
    </table>
  </div>
</body>
</html>
