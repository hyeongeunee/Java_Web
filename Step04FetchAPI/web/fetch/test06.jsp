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
    <title>fetch/test05.jsp</title>
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
        fetch("get_msg2.jsp")
        .then((data)=> data.json())
        .then((obj)=>{
            //data 는 ["어쩌구", "저쩌구", "이러쿵"] 형식의 실제 배열이다.
            //반복문 돌면서
            for(let i = 0; i < obj.length; i++){
                //backtick 을 활용해서 li 안에 메세지를 출력하고
                let li = `<li>\${obj[i]}</li>`;
                document.querySelector("#msgList").insertAdjacentHTML("beforeend", li);
            }
        })
        .catch((err)=>{
            //err 에는 에러 메세지가 들어있다.
            console.log(err);
        });
    })
    </script>
</body>
</html>
