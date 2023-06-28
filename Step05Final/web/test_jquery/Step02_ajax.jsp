<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-28
  Time: 오전 9:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test_jquery/Step02_ajax</title>
</head>
<body>
<h1>ajax 요청</h1>
<button id="requestBtn">요청하기</button>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<script>
    $("#requestBtn").on("click", () => {
        $.ajax({
            url: "${pageContext.request.contextPath}/cafe/json_list2.jsp",   //요청 url
            <%--url: "${pageContext.request.contextPath}index.jsp",--%>
            // index.jsp 는 html 다 ~ 따오고, json_list.jsp 이거는 page contentType 이 application/json 이라서 배열 형식으로 따온다
            method : "get", //요청 방식
            data   : {
                pageNum: 1,
            },    //요청 파라미터
            success: function (data) {
                console.log(data);
            }
        });
    })
</script>
</body>
</html>
