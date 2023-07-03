<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-07-03
  Time: 오전 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test_jQuery/Step03_effect2</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
    <style>
        .box {
            width: 100px;
            height: 100px;
            background-color: yellow;
            border: 1px solid red;
        }
    </style>
</head>
<body>
<button id="hideBtn">숨기기</button>
<button id="showBtn">보이기</button>
<button id="toggleBtn">토글</button>
<div class="box">
</div>
<script>
    /*
        숨기기 버튼을 누르면 box div 가 숨겨지고, 보이기 버튼을 누르면 보여지도록 jQuery
        를 활용해서 프로그래밍 하기
     */
    $("#hideBtn").on("click", () => {
        //$(".box").css("display", "none");
        /*
            $(".box").hide(1000, function () {
                alert("뿅!");
            });
        */
        $(".box").hide({
            duration: 1000,
            complete: function () {
                alert("뿅!");
            }
        });
    })
    $("#showBtn").on("click", () => {
        //$(".box").css("display", "");
        $(".box").show();
    })
    $("#toggleBtn").on("click", () => {
        $(".box").toggle();
    })
</script>
</body>
</html>
