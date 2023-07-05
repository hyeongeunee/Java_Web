<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-07-05
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test_jquery/Step04_fotorama</title>
    <!-- 플러그인 css -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.css" rel="stylesheet">
    <style>
        .container {
            width: 768px;
            margin: 0 auto;
        }

        .fotorama img {
            max-width: 100%;
        }
    </style>
</head>
<body>
<div class="container" data-allowfullscreen="true" data-nav="thumbs" data-autoplay="true">
    <h1>fotorama 를 이용한 이미지 슬라이드</h1>
    <div class="fotorama">
        <img data-caption="상품1" src="${pageContext.request.contextPath}/vue2/images/top01.jpg">
        <img data-caption="상품2" src="${pageContext.request.contextPath}/vue2/images/top02.jpg">
        <img data-caption="상품3" src="${pageContext.request.contextPath}/vue2/images/top03.jpg">
        <img data-caption="상품4" src="${pageContext.request.contextPath}/vue2/images/top04.jpg">
        <img data-caption="상품5" src="${pageContext.request.contextPath}/vue2/images/top05.jpg">
    </div>
</div>
<%-- jquery 로딩 --%>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<%-- 플러그인 javascript 로딩 --%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/fotorama/4.6.4/fotorama.js"></script>
</body>
</html>
