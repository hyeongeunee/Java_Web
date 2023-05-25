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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style>
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
            text-align:center; font-size:50px; text-transform:uppercase; color:#222; letter-spacing:1px;
            font-family:"Playfair Display", serif; font-weight:400;
        }
        .index h1 span {
            margin-top: 5px;
            font-size:15px; color:#444; word-spacing:1px; font-weight:normal; letter-spacing:2px;
            text-transform: uppercase; font-family: "Oswald", sans-serif; font-weight:500;
            display: grid;
            grid-template-columns: 1fr max-content 1fr;
            grid-template-rows: 27px 0;
            grid-gap: 20px;
            align-items: center;
        }

        .index h1 span:after,.index h1 span:before {
            content: " ";
            display: block;
            border-top: 1px solid #ccc;
            height: 3px;
            background-color:#ffffff;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="index mt-3">
        <h1><span>Step02_DataBase</span>인덱스 페이지</h1>
    </div>
    <ul class="mt-5">
        <li><a href="member/list.jsp">회원 목록보기</a></li>
        <li><a href="guest/list.jsp">방명록 목록보기</a></li>
    </ul>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>
