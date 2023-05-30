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
    <title>promise/test05.jsp</title>
</head>
<body>
  <h1>Promise 테스트</h1>
  <script>
    new Promise((resolve, reject)=>{
      resolve();
      console.log("resolve 호출됨");
    }).then(function (result){
      console.log("then() 안에 있는 함수 호출됨");
      //여기에서 다시 Promise 객체를 리턴하게 되면 다시 .then() 을 호출할 수 있다.
      return new Promise(function (resolve){
          resolve();
      });
    }).then(function (){
      console.log("두번째 then() 안에 있는 함수 호출됨")
    });
  </script>
</body>
</html>
