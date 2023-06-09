<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-09
  Time: 오후 3:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>cafe/private/insertform.jsp</title>
</head>
<body>
  <div class="container">
    <h1>새 글 작성 양식</h1>
    <form action="insert.jsp" method="post">
      <div>
        <label for="title">제목</label>
        <input type="text" name="title" id="title" />
      </div>
      <div>
        <label for="content">내용</label>
        <textarea name="content" id="content" rows="10"></textarea>
      </div>
      <button type="submit">저장</button>
    </form>
  </div>
</body>
</html>
