<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .box {
            width: 100px;
            height: 100px;
            border: 1px solid red;
        }
    </style>
    <title>test</title>
</head>
<body>
<div id="app">
    <div class="box" @mouseover="changeColor">div1</div>
    <div class="box" @mouseover="changeColor">div2</div>
    <div class="box" @mouseover="changeColor">div3</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script>
    new Vue({
        el     : "#app",
        data   : {},
        methods: {
            changeColor(e){
                e.target.style.color="red";
            }
        }
    });
</script>
</body>
</html>