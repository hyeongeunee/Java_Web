<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-30
  Time: 오전 11:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>promise/test04.jsp</title>
</head>
<body>
  <h1>Promise 테스트</h1>
  <script>
    new Promise((resolve, reject)=>{
      //무언가 작업을 하고 결과 데이터가 있다면
      let data={num:1, name:"김구라"};
      //resolve 혹은 reject 함수를 호출하면서 전달할 수도 있다.
      resolve(data);
      console.log("resolve 호출됨");
    }).then(function (result){
      console.result();
      console.log("then() 안에 있는 함수 호출됨");
    }).catch(()=>{
      console.log("catch() 안에 있는 함수 호출됨");
    });
  </script>
</body>
</html>
