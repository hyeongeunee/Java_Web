<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-27
  Time: 오전 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Step01_event.jsp</title>
    <style>
        .box {
            width: 100px;
            height: 100px;
            border: 1px solid red;
        }
    </style>
</head>
<body>
<h1>이벤트 리스너 함수 등록</h1>
<div class="box"></div>
<div class="box"></div>
<div class="box"></div>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<script>
    // $(".box").on(이벤트명, 콜백함수)
    $(".box").on("mouseover", function (e) {
        // 이벤트가 발생한 바로 그 요소의 참조값은 e.target
        console.log(e.target);
        /*
             e.target.style.backgroundColor="yellow";
             e.target.style.width="200px";
             e.target.style.height="200px";
             e.target.innerText="mouseover!";
         */
        // $() 함수에 문서객체의 참조값을 전달하면 해당 문서 객체를 jquery 의 기능을 통해서 조작할 수 있다.
        $(e.target).css("background-color", "yellow")
            .css("width", "200px")
            .css("height", "200px")
            .text("mouseover!");
    });
</script>
</body>
</html>
