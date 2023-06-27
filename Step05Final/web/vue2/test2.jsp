<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-27
  Time: 오후 4:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="app">
    <input type="checkbox" v-model="isChecked">
    <p v-if="isChecked">p1</p>
</div>

<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script>
    let app = new Vue({
        el  : "#app",
        data: {
            isChecked: true,
        }
    });
</script>
</body>
</html>
