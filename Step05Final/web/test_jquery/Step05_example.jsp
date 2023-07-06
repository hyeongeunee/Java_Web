<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-07-06
  Time: 오전 10:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test_jquery/Step05_example</title>
    <style>
        #dropZone {
            width: 200px;
            height: 200px;
            border: 2px dashed red;
            border-radius: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }
    </style>
</head>
<body>
<div class="container">
    <div id="dropZone">
        <p>파일을 끌어다 놓으세요</p>
    </div>
    <ul id="infoList">

    </ul>
</div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<script>
    $("#dropZone").on("dragover", (e) => {
        e.preventDefault();
    }).on("drop", (e) => {
        e.preventDefault();
        console.log(e);
        // drop 된 파일에 대한 정보 얻어오기
        const file = e.originalEvent.dataTransfer.files[0];
        // drop 된 파일명
        const fileName = file.name;
        // drop 된 파일의 mime type
        const mimeType = file.type;
        // drop 된 파일의 정보를 설명할 문자열을 만들어내기
        const info = `파일명:\${fileName} 파일의 type:\${mimeType}`;
        // li 요소를 만들어서 정보를 출력하고 #infoList 요소의 첫 번째 자식요소로 추가하기
        $("<li>").text(info).prependTo("#infoList");
    });
</script>
</body>
</html>
