<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-07
  Time: 오후 5:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>file/private/upload_form2.jsp</title>
</head>
<body>
    <div class="container">
        <h3>파일 업로드 폼2 입니다.</h3>
        <form action="ajax_upload.jsp" method="post" enctype="multipart/form-data">
            <div>
                <label for="title">제목</label>
                <input type="text" name="title" id="title">
            </div>
            <div>
                <label for="myFile">첨부파일</label>
                <input type="file" name="myFile" id="myFile">
            </div>
            <button type="submit">업로드</button>
        </form>
    </div>
    <script src="../../js/gura_util.js"></script>
</body>
</html>
