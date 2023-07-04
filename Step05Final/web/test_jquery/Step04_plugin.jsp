<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-07-04
  Time: 오전 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test_jquery/plugin</title>
</head>
<body>
<p>p1</p>
<p id="one">p2</p>
<p id="two">p3</p>
<%-- jQuery 로딩하기 --%>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.0/dist/jquery.min.js"></script>
<%-- jQuery plugin js 로딩하기 --%>
<script src="js/jquery.gura.js"></script>
<script>
    $("#one").gura();
    $("#two").gura({
        msg  : "오잉?",
        color: "#ffff00"
    });
</script>
</body>
</html>
