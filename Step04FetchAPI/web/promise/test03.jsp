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
    <title>promise/test03.jsp</title>
</head>
<body>
  <h1>Promise 테스트</h1>
  <script>
    new Promise((resolve, reject)=>{
      resolve();
      reject();
      console.log("resolve 호출됨");
    }).then(()=>{
      console.log("then() 안에 있는 함수 호출됨");
    }).catch(()=>{
      console.log("catch() 안에 있는 함수 호출됨");
    });
  </script>
</body>
</html>
