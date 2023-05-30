<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-30
  Time: 오전 11:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>fetch/test01.jsp</title>
</head>
<body>
  <h1>fetch 함수 테스트</h1>
  <button id="myBtn">눌러보셈</button>
<%--  index.jsp 요청 --%>
  <a href="../index.jsp">눌러보셈</a>
  <script>
    document.querySelector("#myBtn").addEventListener("click", ()=>{

      const msg = prompt("메세지 입력...");

      console.log("입력완료 !");

      console.log("------")

      //fetch 함수가 무얼 하는 함수인지 잠시 테스트 해보세요
      //위의 링크를 눌렀을 때와 차이점은 ?
      fetch("../index.jsp") //Promise Type
      .then((response)=>{
        return response.text();
      //data = String Type
      }).then((data)=>{
        console.log(data);
      })
      console.log("요청했습니다!")
    });
  </script>
</body>
</html>
