<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-31
  Time: 오후 3:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>users/loginform.jsp</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
    <h1>로그인 폼</h1>
    <form action="login.jsp" method="post">
      <div>
        <label for="id" class="form-label">아이디</label>
        <input type="text" name="id" id="id" class="form-control">
      </div>
      <div>
        <label for="pwd" class="form-label">비밀번호</label>
        <input type="password" name="pwd" id="pwd" class="form-control">
      </div>
      <button class="btn btn-primary" type="submit">로그인</button>
    </form>
  </div>
</body>
</html>
