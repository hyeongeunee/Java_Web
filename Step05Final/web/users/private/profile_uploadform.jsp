<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-07
  Time: 오후 3:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>users/private/profile_upload.jsp</title>
</head>
<body>
  <form action="upload.jsp" method="post" enctype="multipart/form-data">
    <label for="image">이미지</label>
    <input type="file" name="image" id="image" accept=".jpg, .jpeg, .png, .gif, .JPG, .JPEG" />
    <button type="submit">업로드</button>
  </form>
</body>
</html>
