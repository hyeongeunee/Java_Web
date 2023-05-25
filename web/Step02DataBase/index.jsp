<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-22
  Time: 오후 5:34
  To change this template use File | Settings | File Templates.
--%>

<%@page import="test.util.DbcpBean"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    //DB 연동 가능한지 테스트
    new DbcpBean(); //객체 생성했을 때 예외가 발생하지 않고 "Connection 얻어오기 성공! " 이 콘솔창에 출력되면 된다.
%>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>index.jsp</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
        html,
        body {
            height: 100%;
        }

        .container {
            margin-top: 80px;
            place-content: center;
            display: grid;
        }

        .btn {
            background: hsl(var(--hue), 98%, 80%);
            border: none;
            border-radius: 7px;
            cursor: pointer;
            color: black;
            font: 600 1.05rem/1 "Nunito", sans-serif;
            letter-spacing: 0.05em;
            overflow: hidden;
            padding: 1.15em 3.5em;
            min-height: 3.3em;
            position: relative;
            text-transform: lowercase;
        }

        .btn--yellow {
            --hue: 46;
        }

        .btn--green {
            --hue: 163;
        }

        .btn--purple {
            --hue: 244;
        }

        .btn--red {
            --hue: 0;
        }

        .btn--blue {
            --hue: 210;
        }

        .btn:active,
        .btn:focus {
            outline: 3px solid hsl(calc(var(--hue) + 90), 98%, 80%);
        }

        .btn__txt {
            position: relative;
            z-index: 2;
        }
        .btn + .btn {
            margin-left: 0.5em;
        }
        .btn__bg {
            background: hsl(var(--hueBg), 98%, 80%);
            border-radius: 50%;
            display: block;
            height: 0;
            left: 50%;
            margin: -50% 0 0 -50%;
            padding-top: 100%;
            position: absolute;
            top: 50%;
            width: 100%;
            transform: scale(0);
            transform-origin: 50% 50%;
            transition: transform 0.175s cubic-bezier(0.5, 1, 0.89, 1);
            z-index: 1;
        }

        .btn__bg:nth-of-type(1) {
            --hueBg: calc(var(--hue) - 90);
            transition-delay: 0.1725s;
        }

        .btn__bg:nth-of-type(2) {
            --hueBg: calc(var(--hue) - 180);
            transition-delay: 0.115s;
        }

        .btn__bg:nth-of-type(3) {
            --hueBg: calc(var(--hue) - 270);
            transition-delay: 0.0575s;
        }

        .btn__bg:nth-of-type(4) {
            --hueBg: calc(var(--hue) - 360);
            transition-delay: 0s;
        }

        .btn:hover .btn__bg,
        .btn:focus .btn__bg,
        .btn:active .btn__bg {
            transform: scale(1.5);
            transition: transform 0.35s cubic-bezier(0.11, 0, 0.5, 0);
        }

        .btn:hover .btn__bg:nth-of-type(1),
        .btn:focus .btn__bg:nth-of-type(1),
        .btn:active .btn__bg:nth-of-type(1) {
            transition-delay: 0.115s;
        }

        .btn:hover .btn__bg:nth-of-type(2),
        .btn:focus .btn__bg:nth-of-type(2),
        .btn:active .btn__bg:nth-of-type(2) {
            transition-delay: 0.23s;
        }

        .btn:hover .btn__bg:nth-of-type(3),
        .btn:focus .btn__bg:nth-of-type(3),
        .btn:active .btn__bg:nth-of-type(3) {
            transition-delay: 0.345s;
        }

        .btn:hover .btn__bg:nth-of-type(4),
        .btn:focus .btn__bg:nth-of-type(4),
        .btn:active .btn__bg:nth-of-type(4) {
            transition-delay: 0.46s;
        }

        h1 {
            position: relative;
            padding: 0;
            margin: 0;
            font-family: "Raleway", sans-serif;
            font-weight: 300;
            font-size: 40px;
            color: #080808;
            -webkit-transition: all 0.4s ease 0s;
            -o-transition: all 0.4s ease 0s;
            transition: all 0.4s ease 0s;
        }

        h1 span {
            display: block;
            font-size: 0.5em;
            line-height: 1.3;
        }

        h1 em {
            font-style: normal;
            font-weight: 600;
        }

        .index h1 {
            text-align: center;
            font-size: 50px;
            text-transform: uppercase;
            color: #222;
            letter-spacing: 1px;
            font-family: "Playfair Display", serif;
            font-weight: 400;
        }

        .index h1 span {
            margin-top: 5px;
            font-size: 15px;
            color: #444;
            word-spacing: 1px;
            font-weight: normal;
            letter-spacing: 2px;
            text-transform: uppercase;
            font-family: "Oswald", sans-serif;
            font-weight: 500;
            display: grid;
            grid-template-columns: 1fr max-content 1fr;
            grid-template-rows: 27px 0;
            grid-gap: 20px;
            align-items: center;
        }

        .index h1 span:after,
        .index h1 span:before {
            content: " ";
            display: block;
            border-top: 1px solid #ccc;
            height: 3px;
            background-color: #ffffff;
        }

        .d-md-block {
            text-align: center;
        }
    </style>
</head>

<body>
    <%--
        /include/navbar.jsp 페이지에게 이 부분만 응답하도록 한다.
        include 되는 jsp 페이지에 파라미터를 전달할 수도 있다.
    --%>
<%-- navbar 호출하기 --%>
<jsp:include page="/include/navbar.jsp">
    <jsp:param name="current" value="index"/>
</jsp:include>
<div class="container">
    <div class="index mt-3">
        <h1><span>Step02_DataBase</span>인덱스 페이지</h1>
        <p>${pageContext.request.contextPath }</p><br>
        <label for="PageList" class="form-label"></label>
        <input type="text" class="form-control" list="PageListOptions" id="PageList" placeholder="page to search..."/>
        <datalist id="PageListOptions">
            <option value="Hello"></option>
            <option value="Step01Servlet"></option>
        </datalist>
    </div>
</div>
<div class="container mt-5"></div>
<div class="d-grid gap-4 d-md-block">
    <button type="button" class="btn btn--blue" onclick="location.href='member/list.jsp';">
        <span class="btn__txt">회원 목록</span>
        <i class="btn__bg" aria-hidden="true"></i>
        <i class="btn__bg" aria-hidden="true"></i>
        <i class="btn__bg" aria-hidden="true"></i>
        <i class="btn__bg" aria-hidden="true"></i>
    </button>
    <button type="button" class="btn btn--green" onclick="location.href='guest/list.jsp';">
        <span class="btn__txt">방명록 보기</span>
        <i class="btn__bg" aria-hidden="true"></i>
        <i class="btn__bg" aria-hidden="true"></i>
        <i class="btn__bg" aria-hidden="true"></i>
        <i class="btn__bg" aria-hidden="true"></i>
    </button>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
<script>
    //검색창에 뭐가 적힌지 따와서
    document.querySelector("#PageList").addEventListener("keyup", (e) => {
        let msg = e.target.value;
        if (e.key === "Enter"){
            if (msg == "Hello" || msg == "Step01Servlet"){
                window.location = '../'+msg;
                e.target.value="";
            }
        }
    })
</script>
</body>
</html>