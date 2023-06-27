<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-27
  Time: 오후 5:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="app">
    <ul>
        <li v-for="item in nums" @click="clicked">{{item}}</li>
    </ul>
</div>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script>
    let app=new Vue({
        el:"#app",
        data:{
            nums:[10, 20, 30, 40, 50]
        },
        methods:{
            clicked(e){
                alert(e.target.innerText);
            }
        }
    });
</script>
</body>
</html>
