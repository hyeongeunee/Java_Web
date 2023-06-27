<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-27
  Time: 오전 9:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Step01_event.jsp</title>
    <style>
        .active {
            border: 1px solid red;
            background-color: yellow;
        }
    </style>
</head>
<body>
<h1>이벤트 처리</h1>
<ul id="myNav">
    <li><a href="">one</a></li>
    <li><a href="">two</a></li>
    <li><a href="">three</a></li>
</ul>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<script>
    // id 가 myNav 요소인 자손 요소 중에서 a 를 선택해서 focus 이벤트가 발생하면 실행할 함수 등록
    $("#myNav a").on("focus", function (e) {
        // 이벤트가 일어난 바로 그 요소의 부모 요소에 active 클래스 추가하기
        $(e.target).parent().addClass("active");
    });

    $("#myNav a").on("blur", function (e) {
        // 이벤트가 일어난 바로 그 요소의 부모 요소에 active 클래스 제거하기
        $(e.target).parent().remove("active");
    });
</script>
</body>
</html>
