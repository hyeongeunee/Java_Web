<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-06-27
  Time: 오후 5:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="app">
    <form action="test.jsp" @submit.prevent="onSubmit">
        <input type="text" v-model="greet">
        <button type="submit">전송</button>
    </form>
    <p ref="result"></p>
</div>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script>
    let app=new Vue({
        el:"#app",
        data:{
            greet:""
        },
        methods:{
            onSubmit(e){
                this.$refs.result.innerText = this.greet;
            }
        }
    });
</script>
</body>
</html>
