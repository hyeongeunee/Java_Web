<%@ page import="test.guest.dto.GuestDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="test.guest.dao.GuestDao" %><%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-24
  Time: 오후 2:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    //sample data
    GuestDao dao = GuestDao.getInstance();
    List<GuestDto> list = dao.getList();
%>
<html>
<head>
    <title>guest/list.jsp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1 style="text-align: center">방명록 목록</h1>
        <a href="insertform.jsp">작성하기</a>
        <table class="table table-hover">
            <thead>
            <tr>
                <th>글번호</th>
                <th>작성자</th>
                <th>내용</th>
                <th>등록일</th>
                <th>삭제</th>
            </tr>
            </thead>
            <tbody>
            <%for (GuestDto member: list) {%>
                <tr>
                    <td><%=member.getNum() %></td>
                    <td><%=member.getWriter() %></td>
                    <td><%=member.getContent() %></td>
                    <td><%=member.getRegdate() %></td>
                    <td>
                        <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">삭제</button>
                        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">비밀번호 입력</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form action="delete.jsp">
                                            <div class="mb-3">
                                                <label for="pw" class="col-form-label">비밀번호</label>
                                                <input type= "text" class="form-control" id="pw" name="password"></input>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary" onclick="location.href='delete.jsp?num=<%=member.getNum()%>&pw=?'">Send</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </td>
                </tr>
            <%} %>
            </tbody>
        </table>
    </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>
</html>