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
    GuestDao dao = GuestDao.getInstance();
    List<GuestDto> list = dao.getList();
%>
<html>
<head>
    <title>guest/list.jsp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        body {
            padding:1.5em;
            background: #f5f5f5
        }

        table {
            border: 1px #a39485 solid;
            font-size: .9em;
            box-shadow: 0 2px 5px rgba(0,0,0,.25);
            width: 100%;
            border-collapse: collapse;
            border-radius: 5px;
            overflow: hidden;
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

        a {
            color: #73685d;
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
    </style>
</head>
<body>
<div class="container mt-3">
    <h1 style="text-align: center">방명록 목록</h1>
    <a href="insertform.jsp">작성하기</a>
    <table class="table table-hover">
        <thead>
            <tr>
                <th>글번호</th>
                <th>작성자</th>
                <th>내용</th>
                <th>수정</th>
                <th>삭제</th>
                <th>등록일</th>
            </tr>
        </thead>
        <tbody>
        <% for (GuestDto tmp : list) { %>
        <tr>
            <td><%= tmp.getNum() %></td>
            <td><%= tmp.getWriter() %></td>
            <td><%= tmp.getContent() %></td>
            <td><a href="updateform.jsp?num=<%= tmp.getNum() %>">수정</a></td>
            <td><a href="deleteform.jsp?num=<%= tmp.getNum() %>">삭제</a></td>
            <td><%= tmp.getRegdate() %></td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>
</body>
</html>