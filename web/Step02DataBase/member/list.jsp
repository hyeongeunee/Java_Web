<%@ page import="test.member.dao.MemberDao" %>
<%@ page import="java.util.List" %>
<%@ page import="test.member.dto.MemberDto" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-23
  Time: 오전 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  MemberDao dao = MemberDao.getInstance();
  List<MemberDto> list = dao.getList();
%>
<html>
<head>
    <title>member/list.jsp</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<style>
  body {
    padding:1.5em;
    background: #fff;
  }
  table {
    border: 1px #a39485 solid;
    font-size: .9em;
    box-shadow: 0 2px 5px rgba(0,0,0,.25);
    width: 100%;
    border-collapse: collapse;
    border-radius: 5px;
    overflow: hidden;
    font-weight: bold;
  }
  th {
    text-align: left;
  }
  thead {
    font-weight: bold;
    color: #fff;
    background: #73685d;
  }
  td, th {
    padding: 1em .5em;
    vertical-align: middle;
  }
  td {
    border-bottom: 1px solid rgba(0,0,0,.1);
    background: #fff;
  }
  @media all and (max-width: 768px) {
    table, thead, tbody, th, td, tr {
      display: block;
    }
    th {
      text-align: right;
    }
    table {
      position: relative;
      padding-bottom: 0;
      border: none;
      box-shadow: 0 0 10px rgba(0,0,0,.2);
    }
    thead {
      float: left;
      white-space: nowrap;
    }
    tbody {
      overflow-x: auto;
      overflow-y: hidden;
      position: relative;
      white-space: nowrap;
    }
    tr {
      display: inline-block;
      vertical-align: top;
    }
    th {
      border-bottom: 1px solid #a39485;
    }
    td {
      border-bottom: 1px solid #e5e5e5;
    }
  }
  h1 {
    text-align: center;
  }
</style>
</head>
<body>
  <div class="container">
    <h1>회원 목록</h1>
    <div class="text-end">
      <a href="insertform.jsp">
        <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor" class="bi bi-person-add" viewBox="0 0 16 16" color="green">
          <path d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7Zm.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0Zm-2-6a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Z"/>
          <path d="M8.256 14a4.474 4.474 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10c.26 0 .507.009.74.025.226-.341.496-.65.804-.918C9.077 9.038 8.564 9 8 9c-5 0-6 3-6 4s1 1 1 1h5.256Z"/>
        </svg>
<%--        시각적으로 보이진 않지만 포커스가 왔을 때 읽어줌(시각 장애인 배려)--%>
        <span class="visually-hidden">회원추가</span>
      </a>
    </div>
      <table class="table table-hover">
        <thead>
          <tr>
            <th>번호</th>
            <th>이름</th>
            <th>주소</th>
            <th>수정</th>
            <th>삭제</th>
          </tr>
        </thead>
        <tbody>
          <%for (MemberDto tmp: list){%>
          <tr>
            <td><%=tmp.getNum()%></td>
            <td><%=tmp.getName()%></td>
            <td><%=tmp.getAddr()%></td>
            <td>
              <a href="updateform.jsp?num=<%=tmp.getNum()%>"><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16" color="black">
                <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001zm-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708l-1.585-1.585z"/>
              </svg></a>
            </td>
            <td>
              <a href="delete.jsp?num=<%=tmp.getNum()%>">
                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-x-square" viewBox="0 0 16 16" color="red">
                  <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                  <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
                </svg>
                <span class="visually-hidden">회원삭제</span>
              </a>
            </td>
          </tr>
          <%}%>
        </tbody>
      </table>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
</body>
</html>
