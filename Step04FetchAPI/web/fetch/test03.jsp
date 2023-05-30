<%--
  Created by IntelliJ IDEA.
  User: acorn
  Date: 2023-05-30
  Time: 오후 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>fetch/test03.jsp</title>
</head>
<body>
    <button id="moreBtn">더보기</button>
    <ul id="msgList">
        <li>하나</li>
        <li>둘</li>
        <li>셋</li>
    </ul>
    <script>
    //문자열을 입력하고 전송 버튼을 눌렀을 때 입력한 문자열을 읽어와서 send.jsp 페이지로 전송이 되도록 하기
    document.querySelector("#moreBtn").addEventListener("click", ()=>{
        fetch("get_msg.jsp")
        .then(res=>res.text())
        .then((data)=>{
            /*
                data 는
                "<li>어쩌구</li>
                <li>저쩌구</li>
                <li>이러쿵</li>" 형식의 문자열이다.
             */
            console.log(data);
            document.querySelector("#msgList").insertAdjacentHTML("beforeend", data);
        })
    })
    </script>
</body>
</html>
