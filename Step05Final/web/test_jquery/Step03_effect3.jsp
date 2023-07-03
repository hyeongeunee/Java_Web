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
    <title>test_jQuery/Step03_effect3</title>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
    <style>
        .box {
            width: 100px;
            height: 100px;
            background-color: yellow;
            border: 1px solid red;
        }

        .box2 {
            width: 100px;
            height: 100px;
            background-color: yellow;
            border: 1px solid red;
            /*
                transition 효과를 줄 수 있는 모든 (all) css 속성에 대해서 1초(1s)동안 일정한 비율(linear)로
                적용을 시켜라
             */
            transition: all 1s Linear;
        }
    </style>
</head>
<body>
<button id="hideBtn">숨기기</button>
<button id="showBtn">보이기</button>
<button id="toggleBtn">토글</button>
<button id="moveBtn">움직이기</button>
<button id="moveBtn2">움직이기2</button>
<button id="moveBtn3">움직이기3</button>
<br><br><br>
<div class="box"></div>
<div class="box2"></div>
<script>
    /*
        움직이기 버튼을 눌렀을 때 .box div 를 오른쪽으로 100px 움직이도록 해보세요
        단, 1초 동안 진행되도록!
     */
    $("#hideBtn").on("click", () => {
        $(".box").fadeOut(1000, function () {
            alert("뿅 ~");
        });
    });

    $("#showBtn").on("click", () => {
        $(".box").fadeIn({
            duration: 2000,
            complete: function () {
                alert("짠!");
            }
        });
    });

    $("#toggleBtn").on("click", () => {
        $(".box").fadeToggle();
    });

    $("#moveBtn").on("click", () => {
        let mLeft = 0;

        //10/1000 초 마다 한 번씩 호출되는 함수 안에서 .box 를 움직이기
        // setInterval(function () {
        //     mLeft += 1;
        //     if (mLeft >= 101) {
        //         return;
        //     }
        //     $(".box").css("margin-left", mLeft + "px");
        // }, 10);
        let seq = setInterval(function () {
            mLeft += 1;
            $(".box").css("margin-left", mLeft + "px");
            if (mLeft === 100) {
                //인터벌의 순서값(sequence) 값을 이용해서 취소하기
                clearInterval(seq);
            }
        }, 10)
    });
    // setInterval(function () {}, 1000)

    $("#moveBtn2").on("click", function () {
        $(".box").animate({
            marginLeft: "+=100px",
        }, 1000);
    });

    $("#moveBtn3").on("click", function () {
        $(".box2").css("margin-left", "100px")
        // document.querySelector(".box2").style.marginLeft="100px";
    });
</script>
</body>
</html>
