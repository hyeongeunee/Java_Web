<%@ page import="test.member.dto.MemberDto" %>
<%@ page import="test.member.dao.MemberDao" %>
<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-24
  Time: 오전 10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
//1. 수정할 회원의 번호를 얻어낸다.
int num = Integer.parseInt(request.getParameter("num"));
//2. 번호를 이용해서 DB에 저장된 수정할 회원의 정보를 얻어낸다.
MemberDto dto = MemberDao.getInstance().getData(num);
//3. 수정할 양식을 클라이언트에게 응답한다.
%>
<html>
<head>
    <title>member/updateform.jsp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        .al-r {
            float: right;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h1>회원 정보 수정 양식</h1>
        <form action="update.jsp" method="post" class="mt-3">
            <div class="mb-1">
                <label class="form-label" for="num">번호</label>
                <%-- 초기값은 value 속성으로 조정 + readonly 하면 수정불가 --%>
                <input class="form-control" type="text" id="num" name="num" value="<%=dto.getNum()%>" readonly>
            </div>
            <div>
            <label class="form-label" for="name">이름</label>
            <input class="form-control" type="text" id="name" name="name" value="<%=dto.getName()%>">
            </div>
            <div>
                <label class="form-label" for="addr">주소</label>
                <input class="form-control" type="text" id="addr" name="addr" value="<%=dto.getAddr()%>">
            </div>
            <br>
            <span class="al-r">
                <button class="btn btn-outline-success" type="submit">수정 확인</button>
                <button class="btn btn-outline-danger" type="reset">취소</button>
            </span>
        </form>
        <div>

        </div>
    </div>
</body>
</html>
